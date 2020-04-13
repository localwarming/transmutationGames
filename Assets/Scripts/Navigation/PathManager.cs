using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PathManager : MonoBehaviour
{
    /*[HideInInspector]*/
    public bool isPlayerTurn = true;
    private GameObject player;

    public GameObject[] enemies;
    public string enemyTag = "Enemy"; //Place tag for enemy here

    void Start()
    {
        player = GameObject.Find("Player");
        enemies = GameObject.FindGameObjectsWithTag(enemyTag);
    }

    void Update()
    {
        if(isPlayerTurn == false)
        {
            foreach(GameObject enemy in enemies)
            {
                enemy.GetComponent<EnemyMovement>().MarkPath();
            }
            foreach(GameObject enemy in enemies)
            {
                enemy.GetComponent<EnemyMovement>().attemptMove();
            }
        }

        isPlayerTurn = true;
    }
}
