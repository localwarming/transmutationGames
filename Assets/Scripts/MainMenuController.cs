using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MainMenuController : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    //Exits the game.
    public void Exit()
    {
        Application.Quit();
    }

    //Starts the shop scene.
    //IMPORTANT: Right now it is set the Dungeon With Generator since we don't have a shop screen.
    public void StartButton()
    {
        SceneManager.LoadScene("Dungeon With Generator");
    }
}
