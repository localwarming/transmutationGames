using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class DungeonGUI : MonoBehaviour
{
    public string pickupText = "";
    public GUISkin myGUISkin;
    System.Random rand = new System.Random();
    private void OnGUI()
    {
        GUI.skin = myGUISkin;

        if(SceneManager.GetActiveScene() == SceneManager.GetSceneByName("Combat") || SceneManager.GetActiveScene() == SceneManager.GetSceneByName("Dungeon With Generator"))
        if (GUI.Button(new Rect(0, Screen.height - 50, 100, 50), "Flee"))
        {
            GameObject.Find("Player").GetComponent<PlayerController>().dungeonGenerated = false;
            GameObject.Find("Player").GetComponent<PlayerController>().tileArray = null;

            if(SceneManager.GetActiveScene() == SceneManager.GetSceneByName("Combat"))
            {
                GameObject.Find("Player").GetComponent<PlayerController>().exitCombat();
            }

            SceneManager.LoadScene("ShopScreen");
            SceneManager.UnloadSceneAsync("Dungeon With Generator");
            SceneManager.UnloadSceneAsync("Combat");
        }

        if(SceneManager.GetActiveScene() == SceneManager.GetSceneByName("Combat"))
        {
            if (GameObject.Find("Canvas").GetComponent<CanvasController>().enemyDefeated)
            {
                //GUI.color = new Color(1.0f, 1.0f, 1.0f, 1.0f); //0.5 is half opacity
                //GUI.skin = myGUISkin;

                GUI.Box(new Rect((Screen.width / 2) - 100, (Screen.height / 2) - 100, 200, 200), "Enemy Defeated");
                if (GUI.Button(new Rect((Screen.width / 2) + 50, (Screen.height / 2) + 50, 50, 50), "Okay"))
                {
                    Database.enemyInstances.Remove(PlayerController.player.currentEnemy);
                    GameObject.Find("Canvas").GetComponent<CanvasController>().backToDungeon();
                }
                GUI.color = Color.white;
            }
        }

        if(SceneManager.GetActiveScene() == SceneManager.GetSceneByName("Dungeon With Generator"))
        {
            //GUI.color = new Color(1.0f, 1.0f, 1.0f, 0.5f); 
            GUI.Box(new Rect(Screen.width - 200, Screen.height - 50, 200, 50), pickupText);
        }

        if(SceneManager.GetActiveScene() == SceneManager.GetSceneByName("ShopScreen"))
        {
            if (GameObject.Find("Player").GetComponent<PlayerController>().foundExit)
            {
                GUI.Box(new Rect((Screen.width / 2) - 150, (Screen.height / 2) - 100, 300, 200), "You Successfully Survived the Dungeon! \n You Found $150 in Treasure!");
                if (GUI.Button(new Rect((Screen.width / 2) + 50, (Screen.height / 2) + 50, 50, 50), "Okay"))
                {
                    GameObject.Find("Player").GetComponent<PlayerController>().foundExit = false;
                }
                GUI.color = Color.white;
            }

            if (GameObject.Find("Canvas").GetComponent<ShopScreenController>().selling && !GameObject.Find("Player").GetComponent<PlayerController>().foundExit)
            {
                GameObject.Find("MoneySound").GetComponent<AudioSource>().PlayOneShot(GameObject.Find("MoneySound").GetComponent<AudioSource>().clip, 0.3f);
                GUI.Box(new Rect((Screen.width / 2) - 100, (Screen.height / 2) - 100, 200, 200), "All Items Sold! \n You Earned: $" + GameObject.Find("Canvas").GetComponent<ShopScreenController>().moneyEarned);
                if (GUI.Button(new Rect((Screen.width / 2) + 50, (Screen.height / 2) + 50, 50, 50), "Okay"))
                {
                    GameObject.Find("Canvas").GetComponent<ShopScreenController>().selling = false;
                }
                GUI.color = Color.white;
            }

            if (GameObject.Find("Canvas").GetComponent<ShopScreenController>().warning && !GameObject.Find("Canvas").GetComponent<ShopScreenController>().lossCondition && !GameObject.Find("Canvas").GetComponent<ShopScreenController>().selling)
            {
                GUI.Box(new Rect((Screen.width / 2) - 160, (Screen.height / 2) - 100, 320, 200), "You've run out of days to pay your debt! \n That's a Strike! \n If you get three strikes the Loan Shark cracks down.");
                if (GUI.Button(new Rect((Screen.width / 2) + 50, (Screen.height / 2) + 50, 50, 50), "Okay"))
                {
                    GameObject.Find("Canvas").GetComponent<ShopScreenController>().warning = false;
                }
                GUI.color = Color.white;
            }

            if (GameObject.Find("Canvas").GetComponent<ShopScreenController>().winCondition)
            {
                GUI.Box(new Rect((Screen.width / 2) - 150, (Screen.height / 2) - 100, 300, 200), "Congradulations! \n You've paid off your debt to the Loan Shark! \n You Win!");
                if (GUI.Button(new Rect((Screen.width / 2) + 50, (Screen.height / 2) + 50, 50, 50), "Great!"))
                {
                    Application.Quit();
                }
                GUI.color = Color.white;
            }

            if (GameObject.Find("Canvas").GetComponent<ShopScreenController>().lossCondition)
            {
                GUI.Box(new Rect((Screen.width / 2) - 150, (Screen.height / 2) - 100, 300, 200), "Oh No! \n You didn't pay off your debt in time. \n Now the Loan Shark has to get mean. :c \n You Lose!");
                if (GUI.Button(new Rect((Screen.width / 2) + 50, (Screen.height / 2) + 50, 50, 50), "Oh No!"))
                {
                    Application.Quit();
                }
                GUI.color = Color.white;
            }

            if (GameObject.Find("Canvas").GetComponent<ShopScreenController>().loanShark)
            {
                GUI.Box(new Rect((Screen.width / 2) - 150, (Screen.height / 2) - 100, 300, 200), "You've Contacted the Loan Shark! \n You Can Gain 5 Random Items! \n But it will add $60 to your debt... \n Do you Accept or Deny?");
                if (GUI.Button(new Rect((Screen.width / 2) + 50, (Screen.height / 2) + 50, 50, 50), "Deny"))
                {
                    GameObject.Find("Canvas").GetComponent<ShopScreenController>().loanShark = false;
                }
                if (GUI.Button(new Rect((Screen.width / 2) - 100, (Screen.height / 2) + 50, 50, 50), "Accept"))
                {
                    GameObject.Find("Player").GetComponent<PlayerController>().currentDebt += 60;
                    List<Item> playerInventory = GameObject.Find("Player").GetComponent<PlayerController>().inventory;
                    for(int i = 0; i < 5; i++)
                    {
                        //System.Random rand = new System.Random();
                        int randy = rand.Next(0, Database.itemList.Count);
                        playerInventory.Add(Database.itemList[randy]);
                    }

                    GameObject.Find("Canvas").GetComponent<ShopScreenController>().loanShark = false;
                }

                GUI.color = Color.white;
            }

        }
    }
}
