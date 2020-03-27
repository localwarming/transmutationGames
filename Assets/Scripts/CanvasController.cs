// controls inventory on combat scene

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using UnityEngine.EventSystems;

public class CanvasController : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler
{
    // drag 'n drop vars
    GameObject dragItem;
    Vector3 dragItemPos;
    Vector3 mouseStartPos;
    bool dragging;

    // combat vars
    GameObject elementSlot;
    GameObject typeSlot;
    GameObject powerSlot;
    Text playerHealthDisplay;
    Text enemyHealthDisplay;
    Text combatText;

    void Start()
    {
        // fill slots with players items
        int counter = 1;
        foreach (Item item in PlayerController.player.inventory)
        {
            // make new object and add correct image
            GameObject itemObj = new GameObject(item.name);
            itemObj.AddComponent<SpriteRenderer>();
            SpriteRenderer renderer = itemObj.GetComponent<SpriteRenderer>();
            renderer.sprite = Resources.Load("Sprites/" + item.name, typeof(Sprite)) as Sprite;

            // find slot to put it in and put it there
            GameObject slotObj = GameObject.Find("Slot (" + counter + ")");
            itemObj.transform.parent = slotObj.transform;
            itemObj.transform.position = slotObj.transform.position;
            itemObj.transform.localScale = slotObj.transform.localScale * 20;
            itemObj.tag = "Item";
            counter++;
        }

        // set enemy sprite
        GameObject enemy = GameObject.Find("Enemy");
        RawImage image = enemy.GetComponent<RawImage>();
        Texture newImage = Resources.Load<Texture2D>("Sprites/" + PlayerController.player.currentEnemy.name);
        image.texture = newImage;

        // get combat displays
        playerHealthDisplay = GameObject.Find("PlayerHealth").GetComponent<Text>();
        enemyHealthDisplay = GameObject.Find("EnemyHealth").GetComponent<Text>();
        combatText = GameObject.Find("CombatText").GetComponent<Text>();
        playerHealthDisplay.text = PlayerController.player.health.ToString();
        enemyHealthDisplay.text = PlayerController.player.currentEnemy.health.ToString();

        elementSlot = GameObject.Find("ElementSlot");
        typeSlot = GameObject.Find("TypeSlot");
        powerSlot = GameObject.Find("PowerSlot");
    }

    // function for button to use to go back to dungeon
    public void backToDungeon()
    {
        PlayerController.player.exitCombat();
    }

    // for end turn buttton
    public void endTurn()
    {;
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
                Database.enemyInstances.Remove(PlayerController.player.currentEnemy);
                backToDungeon();
            }
        }
        else
        {
            combatText.text = "please fill all slots";
        }
    }

    // drag n drop stuff
    public void OnBeginDrag(PointerEventData eventData)
    {
        if (eventData.pointerEnter.transform.GetChild(0).gameObject.tag == "Item")
        {
            dragItem = eventData.pointerEnter.transform.GetChild(0).gameObject;
            dragItemPos = eventData.pointerEnter.transform.position;
            dragging = true;
        }
    }
    public void OnDrag(PointerEventData eventData)
    {
        if (dragging)
        {
            Plane plane = new Plane(Vector3.forward, dragItemPos);
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            float distance;
            if (plane.Raycast(ray, out distance))
            {
                var pos = ray.GetPoint(distance);
                dragItem.transform.position = pos;
            }
        }
    }
    public void OnEndDrag(PointerEventData eventData)
    {
        if (dragging)
        {
            if (eventData.hovered.Count > 0)
            {
                if (eventData.pointerCurrentRaycast.gameObject.tag == "AttackSlots" || (eventData.pointerCurrentRaycast.gameObject.tag == "InventorySlots" && eventData.pointerCurrentRaycast.gameObject.transform.childCount == 0))
                {
                    dragItem.transform.parent = eventData.pointerCurrentRaycast.gameObject.transform;
                    dragItem.transform.position = eventData.pointerCurrentRaycast.gameObject.transform.position;
                    dragItem.transform.localScale = eventData.pointerCurrentRaycast.gameObject.transform.localScale * 20;
                }
                else
                {
                    dragItem.transform.position = dragItemPos;
                }
            }
            else
            {
                dragItem.transform.position = dragItemPos;
            }
            dragItem = null;
            dragging = false;
        }
    }
}
