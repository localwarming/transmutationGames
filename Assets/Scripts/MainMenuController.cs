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
    public void StartButton()
    {
        SceneManager.LoadScene("ShopScreen");
    }
}
