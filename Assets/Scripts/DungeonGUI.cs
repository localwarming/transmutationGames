using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class DungeonGUI : MonoBehaviour
{
    private void OnGUI()
    {
        if (GUI.Button(new Rect(0, Screen.height - 50, 100, 50), "Flee"))
        {
            GameObject.Find("Player").GetComponent<PlayerController>().dungeonGenerated = false;
            GameObject.Find("Player").GetComponent<PlayerController>().tileArray = null;

            if(SceneManager.GetActiveScene() == SceneManager.GetSceneByName("Combat"))
            {
                GameObject.Find("Player").GetComponent<PlayerController>().exitCombat();
            }

            SceneManager.LoadScene("MainMenu");
            SceneManager.UnloadSceneAsync("Dungeon With Generator");
            SceneManager.UnloadSceneAsync("Combat");
        }
    }
}
