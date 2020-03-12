// controls inventory on combat scene

using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;

public class CanvasController : MonoBehaviour
{
    void Start()
    {
        // fill slots with players items
        int counter = 1;
        foreach (Item item in PlayerController.player.inventory)
        {
            // make new object and add correct image
            GameObject itemObj = new GameObject("Item " + counter);
            itemObj.AddComponent<SpriteRenderer>();
            SpriteRenderer renderer = itemObj.GetComponent<SpriteRenderer>();
            renderer.sprite = Resources.Load("Sprites/" + item.name, typeof(Sprite)) as Sprite;

            // find slot to put it in and put it there
            GameObject slotObj = GameObject.Find("Slot (" + counter + ")");
            itemObj.transform.parent = slotObj.transform;
            itemObj.transform.position = slotObj.transform.position;
            itemObj.transform.localScale = slotObj.transform.localScale * 20;
            counter++;
        }

        // set enemy sprite
        GameObject enemy = GameObject.Find("Enemy");
        RawImage image = enemy.GetComponent<RawImage>();
        Texture newImage = Resources.Load<Texture2D>("Sprites/" + PlayerController.player.currentEnemy);
        image.texture = newImage;
    }

    // function for button to use to go back to dungeon
    public void backToDungeon()
    {
        SceneManager.LoadScene(sceneName: "Dungeon");
    }
}
