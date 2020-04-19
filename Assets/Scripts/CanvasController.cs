// controls inventory on combat scene

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class CanvasController : MonoBehaviour
{
    // combat vars
    GameObject elementSlot;
    GameObject typeSlot;
    GameObject powerSlot;
    GameObject readerSlot;
    Text playerHealthDisplay;
    Text enemyHealthDisplay;
    Text combatText;
    Text readerText;
    Text updateTextElement;
    Text updateTextType;
    Text updateTextStrength;
    Text readerTextCaption;
    Text effectCaption;

    //Used for popup Window.
    public bool enemyDefeated = false;

    void Start()
    {
        // fill slots with players items
        int counter = 1;
        int stacked = 0;
        foreach (Item item in PlayerController.player.inventory)
        {
            // make new object and add correct image
            GameObject itemObj = new GameObject(item.name);
            itemObj.AddComponent<Image>();
            itemObj.AddComponent<CanvasGroup>();
            itemObj.AddComponent<DragHandler>();
            itemObj.GetComponent<Image>().sprite = Resources.Load(item.spritePath, typeof(Sprite)) as Sprite;

            // find slot to put it in and put it there
            // uncomment for item stacking (doesnt work yet)
            /*for (int i = 0; i < counter - 1; i++)
            {
                if (PlayerController.player.inventory[i].name == item.name)
                {
                    stacked++;
                    break;
                }
            }*/
            int slotNumber = counter - stacked;
            GameObject slotObj = GameObject.Find("Slot (" + slotNumber + ")");
            itemObj.transform.SetParent(slotObj.transform);
            itemObj.transform.position = slotObj.transform.position;
            itemObj.transform.localScale = slotObj.transform.localScale * 1.3f;
            itemObj.tag = "Item";
            counter++;
        }

        // set enemy sprite
        GameObject enemy = GameObject.Find("/Canvas/Panel/Enemy/EnemyImage");
        RawImage image = enemy.GetComponent<RawImage>();
        Texture newImage = Resources.Load<Texture2D>(PlayerController.player.currentEnemy.spritePath);
        image.texture = newImage;

        // get combat displays
        playerHealthDisplay = GameObject.Find("/Canvas/PlayerHealth").GetComponent<Text>();
        enemyHealthDisplay = GameObject.Find("/Canvas/EnemyHealth").GetComponent<Text>();
        combatText = GameObject.Find("/Canvas/CombatText").GetComponent<Text>();
        readerText = GameObject.Find("/Canvas/ReaderText").GetComponent<Text>();
        updateTextElement = GameObject.Find("/Canvas/updateTextElement").GetComponent<Text>();
        updateTextType = GameObject.Find("/Canvas/updateTextType").GetComponent<Text>();
        updateTextStrength = GameObject.Find("/Canvas/updateTextStrength").GetComponent<Text>();
        readerTextCaption = GameObject.Find("/Canvas/ReaderTextCaption").GetComponent<Text>();
        effectCaption = GameObject.Find("/Canvas/EffectCaption").GetComponent<Text>();
        playerHealthDisplay.text = PlayerController.player.health.ToString();
        enemyHealthDisplay.text = PlayerController.player.currentEnemy.health.ToString();

        elementSlot = GameObject.Find("/Canvas/AttackSlots/ElementSlot");
        typeSlot = GameObject.Find("/Canvas/AttackSlots/TypeSlot");
        powerSlot = GameObject.Find("/Canvas/AttackSlots/PowerSlot");
        readerSlot = GameObject.Find("/Canvas/ReaderSlot");
    }

    void Update()
    {
        if (readerSlot.transform.childCount > 0)
        {
            Item readme = PlayerController.player.inventory.Find(item => item.name == readerSlot.transform.GetChild(0).name);
            readerText.text = readme.element + " - " + readme.type + " - " + readme.strength;
            readerTextCaption.text = "Item's Tags:";
        } 
        else
        {
            readerText.text = "";
            readerTextCaption.text = "";
        }

        //Update Equation Element Text
        if (elementSlot.transform.childCount > 0)
        {
            Item element = PlayerController.player.inventory.Find(item => item.name == elementSlot.transform.GetChild(0).name);
            updateTextElement.text = "" + element.element;
        }
        else
        {
            updateTextElement.text = "";
        }

        //Update Equation Type Text
        if (typeSlot.transform.childCount > 0)
        {
            Item type = PlayerController.player.inventory.Find(item => item.name == typeSlot.transform.GetChild(0).name);
            updateTextType.text = "" + type.type;
        }
        else
        {
            updateTextType.text = "";
        }

        //Update Equation Strength Text
        if (powerSlot.transform.childCount > 0)
        {
            Item strength = PlayerController.player.inventory.Find(item => item.name == powerSlot.transform.GetChild(0).name);
            updateTextStrength.text = "" + strength.strength;
        }
        else
        {
            updateTextStrength.text = "";
        }

        if(powerSlot.transform.childCount > 0 || typeSlot.transform.childCount > 0 || elementSlot.transform.childCount > 0)
        {
            effectCaption.text = "Creating Effect With Properties:";
        }
        else
        {
            effectCaption.text = "";
        }
    }

    // function for button to use to go back to dungeon
    public void backToDungeon()
    {
        PlayerController.player.exitCombat();
    }

    // for end turn buttton
    public void endTurn()
    {
        if ((elementSlot.transform.childCount + typeSlot.transform.childCount + powerSlot.transform.childCount) == 3)
        {
            Item elementItem = PlayerController.player.getItemFromInventory(elementSlot.transform.GetChild(0).gameObject.name);
            Item typeItem = PlayerController.player.getItemFromInventory(typeSlot.transform.GetChild(0).gameObject.name);
            Item powerItem = PlayerController.player.getItemFromInventory(powerSlot.transform.GetChild(0).gameObject.name);
            combatText.text = PlayerController.player.engageInCombat(elementItem, typeItem, powerItem); // enemy deals damage here too, combat text is output
            playerHealthDisplay.text = PlayerController.player.health.ToString();
            enemyHealthDisplay.text = PlayerController.player.currentEnemy.health.ToString();

            PlayerController.player.inventory.Remove(elementItem);
            PlayerController.player.inventory.Remove(typeItem);
            PlayerController.player.inventory.Remove(powerItem);
            Destroy(elementSlot.transform.GetChild(0).gameObject);
            Destroy(typeSlot.transform.GetChild(0).gameObject);
            Destroy(powerSlot.transform.GetChild(0).gameObject);
            if (PlayerController.player.health < 1)
            {
                PlayerController.player.health = 100;
                backToDungeon();
            }
            else if (PlayerController.player.currentEnemy.health < 1)
            {
                enemyDefeated = true;
                /*
                Database.enemyInstances.Remove(PlayerController.player.currentEnemy);
                backToDungeon();
                */
            }
        }
        else
        {
            combatText.text = "please fill all slots";
        }
    }
}
