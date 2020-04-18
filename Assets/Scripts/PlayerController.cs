using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerController : MonoBehaviour
{
    // singleton persistent instance of player
    public static PlayerController player;

    // gloablly accessable attributes
    public List<Item> inventory = new List<Item>();
    public Fighter currentEnemy;
    public int health = 100;

    //Used to store dungeon information
    public bool dungeonGenerated = false;
    public int[,] tileArray;
    public Vector3 ladderPos;
    public bool foundExit = false;

    //Info regarding debt.
    public int currentMoney = 0;
    public int currentDebt = 500;
    public int daysRemaining = 5;
    public int strikes = 0;

    // private vars
    int stepSize = 3;
    float moveSpeed = 10;
    bool inMotion = false;
    Vector3 lastPosition;
    LayerMask walls;
    bool inCombat = false;

    // create singleton instance of PlayerController class
    void Awake()
    {
        if (player != null)
        {
            GameObject.Destroy(gameObject);
        }
        else
        {
            player = this;
        }
        DontDestroyOnLoad(this);

        // for combat scene debugging
        /*
        inventory.Add(Database.getItemInstance(0));
        inventory.Add(Database.getItemInstance(0));
        inventory.Add(Database.getItemInstance(0));
        inventory.Add(Database.getItemInstance(1));
        inventory.Add(Database.getItemInstance(1));
        inventory.Add(Database.getItemInstance(1));
        inventory.Add(Database.getItemInstance(2));
        inventory.Add(Database.getItemInstance(2));
        inventory.Add(Database.getItemInstance(2));
        inventory.Add(Database.getItemInstance(3));
        inventory.Add(Database.getItemInstance(3));
        inventory.Add(Database.getItemInstance(3));
        inventory.Add(Database.getItemInstance(4));
        inventory.Add(Database.getItemInstance(4));
        inventory.Add(Database.getItemInstance(4));
        currentEnemy = Database.getEnemyInstance(0);*/
    }

    void Start()
    {
        // get components from game
        walls = LayerMask.GetMask("Walls");
        Physics.IgnoreLayerCollision(9, 10);
    }

    void Update()
    {
        if (!inCombat) // IMPORTANT -- IF ITS NOT MOVING THIS IS WHY AND YOURE STUPID (NOTE TO SELF)
        {
            if (!inMotion)
            {
                // get input
                float horizontal = Input.GetAxisRaw("Horizontal");
                float vertical = Input.GetAxisRaw("Vertical");
                horizontal = vertical == 0 ? horizontal : 0; // if theres movement in zDir (vert) then only move in that direction (only move in one dir at a time)

                // set player orientation
                if (horizontal < 0)
                    transform.Rotate(0, -90 - transform.rotation.eulerAngles.y, 0);
                if (horizontal > 0)
                    transform.Rotate(0, 90 - transform.rotation.eulerAngles.y, 0);
                if (vertical < 0)
                    transform.Rotate(0, 180 - transform.rotation.eulerAngles.y, 0);
                if (vertical > 0)
                    transform.Rotate(0, -1 * transform.rotation.eulerAngles.y, 0);

                // check for walls then move
                Vector3 step = new Vector3(horizontal * stepSize, 0, vertical * stepSize);
                Ray ray = new Ray(transform.position, step);
                RaycastHit hit;
                if (!Physics.Raycast(ray, out hit, stepSize, walls)) // if theres no collision (besides walkable areas) and not moving already, smoothly move
                {
                    lastPosition = transform.position;
                    StartCoroutine(SmoothMovement(transform.position + step)); // co-routine is run in background so that graphics update while smooth moving
                }
            }

            if (GameObject.Find("Main Camera").GetComponent<DungeonGenerator>() != null)
            {
                if (Math.Abs(player.transform.position.x - GameObject.Find("Ladder").transform.position.x) < 3 && Math.Abs(player.transform.position.z - GameObject.Find("Ladder").transform.position.z) < 3)
                {
                    //Player has reached the goal.
                    //Give some sort of message and then a reward (Current reward is $150).
                    foundExit = true;
                    currentMoney = currentMoney + 150;
                    transform.position = new Vector3(transform.position.x, transform.position.y + 500, transform.position.z);
                    SceneManager.LoadScene("ShopScreen");
                }
            }

        }

    //A little something to quit the game
    if (Input.GetKeyDown(KeyCode.Escape)) {
        Application.Quit();
    }

    }

	void OnCollisionEnter(Collision collision)
	{
		if (collision.gameObject.tag == "Pickup")
		{
			Item item = Database.getItemInstance(collision.gameObject.name);
            Destroy(collision.gameObject);          // delete the pickup from the scene
            inventory.Add(item);                    // add item to persistent inventory
            Database.itemInstances.Remove(item);    // delete item istance
            GameObject.Find("Main Camera").GetComponent<DungeonGUI>().pickupText = "You Picked Up: " + item.name + "!";
        }
        else if (collision.gameObject.tag == "Enemy")
        {
            enterCombat(collision.gameObject.name);
        }

    }

    public void enterCombat(string enemyName)
    {
        inCombat = true;
        SceneManager.LoadScene(sceneName: "Combat"); // change scenes using built in methods
        currentEnemy = Database.getEnemyInstance(enemyName);
    }

    public void exitCombat()
    {
        currentEnemy = null;
        SceneManager.LoadScene(sceneName: "Dungeon With Generator");
        inCombat = false;
    }

    public string engageInCombat(Item elementItem, Item typeItem, Item powerItem)
    {
        int playerStrength = powerItem.getRandomStrength();
        int enemyStrength = currentEnemy.getRandomStrength();
        float coefficient = currentEnemy.getStrengthCoefficient(elementItem, typeItem, powerItem);
        string combatText = "Enemy attacks with " + enemyStrength + " points and player ";
        switch (typeItem.type)
        {
            case "heal":
                health += playerStrength - enemyStrength;
                combatText += "heals with " + playerStrength + " points, player heals by " + (playerStrength - enemyStrength);
                break;
            case "block":
                health -= Mathf.Clamp(enemyStrength - (int)Mathf.Round((playerStrength / coefficient)), 0, enemyStrength);
                combatText += "blocks with " + (int)Mathf.Round((playerStrength / coefficient)) + " points, enemy does " + Mathf.Clamp(enemyStrength - (int)Mathf.Round((playerStrength / coefficient)), 0, enemyStrength) + " damage to player";
                break;
            case "attack":
                currentEnemy.health -= (int)Mathf.Round(coefficient * playerStrength);
                health -= enemyStrength;
                combatText += "attacks with " + (int)Mathf.Round(coefficient * playerStrength) + " points";
                break;
        }
        if (coefficient != 1)
        {
            combatText += ". " + elementItem.element + " potion used on " + currentEnemy.element + " enemy resulted in x" + coefficient + " " + typeItem.type + " points";
        }
        return combatText;
    }

    public Item getItemFromInventory(int id)
    {
        return inventory.Find(item => item.id == id);
    }

    public Item getItemFromInventory(string itemName)
    {
        return inventory.Find(item => item.name == itemName);
    }

    protected IEnumerator SmoothMovement(Vector3 end) // co-routine to update location at set moveSpeed
    {
        inMotion = true; // prevent co-routine from being run again before this finished
        while (transform.position != end)
        {
            transform.position = Vector3.MoveTowards(transform.position, end, moveSpeed * Time.deltaTime); // moves position closer to end until set to end
            yield return null; // kind of a breakpoint for the co-routine
        }
        inMotion = false; // end co-routine and end movement
        if (inCombat) // undo move if player moved into enemy on move
        {
            transform.position = lastPosition;
        }
    }
}
