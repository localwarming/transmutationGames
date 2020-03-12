# transmutationGames
A Shopkeeper's Quest

# Scripts
### CameraController ###
Camera follows the player and does not rotate, can zooom with mouse wheel
__ATTACH TO MAIN CAMERA IN DUNGEON__

### PlayerController ###
Controllers players movement and interactions, including enemies and pickups. Creates a persistent instance of PlayerController on Awake() and only allows one instance to exist, carrying data about the player between scenes. Can be accessed from all other scripts by using `PlayerControler.player.publicFunctionOrVar`
`PlayerController.player` is accessing the instance of the player which there is ensured to be only one of.
__IMPORTANT:__ In order to ensure only one copy of player exists, start scene must have player object with this script attached and no other scenes, i.e. game must be started from dungeon scene w/ player object in it and then go into combat in order for combat scene to have a player object. A player object could be added temporarily to any scene if testing for only that scene is needed.
__ATTACH TO PLAYER IN DUNGEON_

### ItemDatabase ##
Static script which provides an item database to all other scripts. Simply use `ItemDatabase.get(id or name)` to retreive a copy of any item in the database. Contains definition for item class. No need to attach to anything.

### CanvasController ##
Controls the loading of data onto the canvas on the combat scene. Loads the players inventory and enemy sprite using inventory and enemy name from the persistent player object.
__ATTACH TO CANVAS IN COMBAT__
