using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class ShopScreenController : MonoBehaviour
{
    public bool selling = false;
    public int moneyEarned = 0;
    public bool loanShark = false;
    public bool onlySellOnce = true;
    public bool winCondition = false;
    public bool lossCondition = false;
    public bool warning = false;
    public bool dontDisplay = true;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {

        //Shop set up
        /*--------------------------------------
         * Fire Attack   Fire Block   Fire Heal
         * -------------------------------------
         * Water Attack  Water Block  Water Heal
         * -------------------------------------
         * Ice Attack    Ice Block    Ice Heal
         * -------------------------------------
         * Earth Attack  Earth Block  Earth Heal
         * -------------------------------------
         * Plant Attack  Plant Block  Plant Heal
         * -------------------------------------
         */

        /* Need:
         * Get each item.
         * Get Player Money
         * Get Debt
         * Get Strikes
         * Update based on days remaining and strikes.
         *      Player feedback based on these as well.
         * More Stuff
         */

        //On First run, there will be no player object.
        if (GameObject.Find("Player") != null)
        {
            Text currMoney = GameObject.Find("/Canvas/YourMoney").GetComponent<Text>();
            currMoney.text = "Your Money: $" + GameObject.Find("Player").GetComponent<PlayerController>().currentMoney;

            Text currDebt = GameObject.Find("/Canvas/YourDebt").GetComponent<Text>();
            currDebt.text = "Your Debt: $" + GameObject.Find("Player").GetComponent<PlayerController>().currentDebt;

            Text daysRemaining = GameObject.Find("/Canvas/DaysRemaining").GetComponent<Text>();
            daysRemaining.text = "Days Remaining Before Strike: " + GameObject.Find("Player").GetComponent<PlayerController>().daysRemaining;

            Text strikes = GameObject.Find("/Canvas/YourStrikes").GetComponent<Text>();
            strikes.text = "Your Strikes: " + GameObject.Find("Player").GetComponent<PlayerController>().strikes + "/3";

            PlayerController playerInfo = GameObject.Find("Player").GetComponent<PlayerController>();

            //Sell off all items in the player's inventory and then clear it.
            if (onlySellOnce)
            {
                foreach (Item item in playerInfo.inventory)
                {
                    playerInfo.currentMoney = playerInfo.currentMoney + item.value;
                    moneyEarned = moneyEarned + item.value;
                    selling = true;
                }
                playerInfo.inventory.Clear();
                onlySellOnce = false;
            }

            if(playerInfo.currentMoney >= playerInfo.currentDebt)
            {
                //Pop a window or something saying they won.
                Debug.Log("Win Condition met");
                winCondition = true;
            }

            if(playerInfo.daysRemaining == 0 && playerInfo.strikes != 3 && !dontDisplay)
            {
                playerInfo.daysRemaining = 5;
                playerInfo.strikes++;
                warning = true;
            }
            else if(playerInfo.strikes == 3)
            {
                //Pop up a window or something saying they lost.
                Debug.Log("Loss Condition Met");
                lossCondition = true;
            }
            if(dontDisplay && playerInfo.daysRemaining == 0 && playerInfo.strikes != 3)
            {
                dontDisplay = false;
            }
        }

        

    }

    //Exits the game.
    public void Exit()
    {
        Application.Quit();
    }

    //Starts the next dungeon
    public void NewDungeon()
    {
        dontDisplay = true;
        SceneManager.LoadScene("Dungeon With Generator");
        if (GameObject.Find("Player") != null)
        {
            GameObject.Find("Player").GetComponent<PlayerController>().daysRemaining--;
        }
        //onlySellOnce = true;
    }

    //Visits the Loan Shark
    public void VisitLoanShark()
    {
        loanShark = true;
    }

    //Saves the game
    public void Save()
    {
        Playthrough.player = GameObject.Find("Player").GetComponent<PlayerController>();
        SaveLoad.Save();
    }

    //Returns to main menu
    public void MainMenu()
    {
        SceneManager.LoadScene("MainMenu");
    }

    //Buys an Item
    public void itemBought()
    {
        //Check price, and player's current money.
        //If player has enough money, reduce money by value of item and add item to player's inventory.
        string itemToBuyName = EventSystem.current.currentSelectedGameObject.name;
        Item itemToBuy = null;
        foreach(Item item in Database.itemList)
        {
            if(item.name == itemToBuyName)
            {
                itemToBuy = item;
            }
        }

        int neededMoney = itemToBuy.value;
        if(neededMoney > GameObject.Find("Player").GetComponent<PlayerController>().currentMoney)
        {
            //Do nothing. Or maybe make a message or something about them not having enough money.
            return;
        }
        else
        {
            //They have enough cash to purchase it.
            GameObject.Find("Player").GetComponent<PlayerController>().currentMoney -= neededMoney;
            GameObject.Find("Player").GetComponent<PlayerController>().inventory.Add(itemToBuy);
        }

    }

    //Sells an item
    public void itemSold()
    {
        //Check player's inventory for item.
        //If player has item, remove the item from player's inventory and add money to the player.
    }

    //Functionality behind buying buttons.
    //Item - iem to buy.
    //Amount - amount to subtract from Player.
    public void ShopButtonBuy(Item item, int amount)
    {

    }

    //Functionality behind Selling buttons.
    //Item - iem to sell.
    //Amount - amount to add to Player.
    public void ShopButtonSell(Item item, int amount)
    {

    }

}
