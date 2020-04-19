using UnityEngine;
using System.Collections;

[System.Serializable]
public class Playthrough {

	public static Playthrough current;
	public static PlayerController player;
	//Everything that has to be saved in the next lines will have to be anounced in the upper ones^^

	public Playthrough () {
		//player = new PlayerController();  //or is it new PlayerController(inventory, lastPosition, etc) ???????????????????
		//Here we need to put everything that is needed to be saved/loaded such as the inventory, tha player position, etc...
	}

	public static void setPlayerController (PlayerController _playerController)
	{
		//this.player = _playerController;
	}
		
}
