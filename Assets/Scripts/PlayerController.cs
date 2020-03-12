using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerController : MonoBehaviour
{
    // singleton persistent instance of player
    public static PlayerController player;

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
    }



    // for prototyping only -- REMOVE //
    bool hasBody = true; // for testing the inventory set to false, movement set to true

    // gloablly accessable attributes
    public List<Item> inventory = new List<Item>();
    public string currentEnemy = "";

    // private vars
    int stepSize = 3;
    float moveSpeed = 10;
    bool inMotion = false;
    LayerMask walls;

    void Start()
    {
        // get components from game
        walls = LayerMask.GetMask("Walls");
    }

    void Update()
    {
        if (hasBody && !inMotion) // IMPORTANT -- IF ITS NOT MOVING THIS IS WHY AND YOURE STUPID (NOTE TO SELF)
        {
            // get input
            float horizontal = Input.GetAxisRaw("Horizontal");
            float vertical = Input.GetAxisRaw("Vertical");
            horizontal = vertical == 0 ? horizontal : 0; // if theres movement in zDir (vert) then only move in that direction (only move in one dir at a time)
            
            // set player orientation
            if (horizontal < 0)
                transform.Rotate(0, -90 - transform.rotation.eulerAngles.y, 0);
            if (horizontal > 0)
                transform.Rotate(0, 90-transform.rotation.eulerAngles.y, 0);
            if (vertical < 0)
                transform.Rotate(0, 180 - transform.rotation.eulerAngles.y, 0);
            if (vertical > 0)
                transform.Rotate(0, -1 * transform.rotation.eulerAngles.y, 0);

            // check for walls then move
            Vector3 step = new Vector3(horizontal * stepSize, 0, vertical * stepSize);
            Ray ray = new Ray(transform.position, step);
            RaycastHit hit;
            if (Physics.Raycast(ray, out hit, stepSize, walls)) // if theres no collision (besides walkable areas) and not moving already, smoothly move
            {
                if (hit.collider.gameObject.tag == "Enemy")
                {
                    SceneManager.LoadScene(sceneName: "Combat"); // change scenes using built in methods
                    currentEnemy = hit.collider.gameObject.name;
                }
            }
            else
            {
                StartCoroutine(SmoothMovement(transform.position + step)); // co-routine is run in background so that graphics update while smooth moving
            }
        }
    }

	void OnCollisionEnter(Collision collision)
	{
		if (collision.gameObject.tag == "Pickup")
		{
			string fileName = collision.gameObject.name;
			Destroy(collision.gameObject); // delete the pickup from the scene
			inventory.Add(ItemDatabase.get(fileName)); // add item to persistent inventory
		}

    }


    public void printInventory()
    {
        foreach (var item in inventory)
        {
            Debug.Log(item.name);
        }
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
    }
}
