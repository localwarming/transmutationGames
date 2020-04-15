using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameController : MonoBehaviour
{
    void Start()
    {
        Database.dropItems();
        Database.dropEnemies();

        GameObject.Find("Player").GetComponent<PlayerController>().dungeonGenerated = true;
        GameObject.Find("Player").GetComponent<PlayerController>().tileArray = GameObject.Find("Main Camera").GetComponent<DungeonGenerator>().tileArray;
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape)) 
        {
            Application.Quit();
        }

    }
}
