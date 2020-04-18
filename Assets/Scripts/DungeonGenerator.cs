using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;


public class Room
{
    //Top Corner of Room
    public int topRow;
    public int topCol;

    //Bottom Corner of Room
    public int botRow;
    public int botCol;

    //Sort of the middle. Used for making hallways.
    public int middlishRow;
    public int middlishCol;

    //Monster Location
    public int monsterRow;
    public int monsterCol;

    //Item Location
    public int itemRow;
    public int itemCol;


    public Room()
    {

    }
}

public class DungeonGenerator : MonoBehaviour
{
    System.Random rand = new System.Random();
    public int rows = 5;
    public int cols = 5;

    
    private int startRow = 0; //Deprecated
    private int startCol = 0; //Deprecated

    private int endRow = 4; //Deprecated
    private int endCol = 4; //Deprecated

    public int numRooms = 1;

    //Start tile, end tile, and base tile. Can add more.
    public GameObject start;
    public GameObject end;
    public GameObject tile;
    public GameObject tileDark;
    public GameObject monsterTile;
    public GameObject itemTile;
    public GameObject monsterPlaceHolder;
    public GameObject itemPlaceHolder;
    public GameObject wall;

    //Room Sizes:
    public int minRoomSize;
    public int maxRoomSize;

    int startTileRow;
    int startTileCol;

    public int endTileRow;
    public int endTileCol;

    public bool alreadyGenerated = false;

    public Vector3 endPos;

    Room startRoom;



    //Array to track where tiles are. 
    //1 = Start Point
    //2 = End Point
    //3 = Basic Tile
    //4 = Monster Tile
    //5 = Item Tile
    public int[,] tileArray;

    //Holds the rooms.
    public Room[] roomArray;

    //Holds positions of all items and monsters.
    public List<Vector3> monsterArray = new List<Vector3>();
    public List<Vector3> itemArray = new List<Vector3>();

    //Arrays of Monster Types
    public ArrayList blueMonsters = new ArrayList();


    // Start is called before the first frame update
    void OnEnable()
    {
        //DontDestroyOnLoad(this);

        if (!(GameObject.Find("Player").GetComponent<PlayerController>().dungeonGenerated))
        {
            //Adding Monsters to Monster Type Arrays.
            blueMonsters.Add(Resources.Load("Monsters/BlueMonster1"));
            blueMonsters.Add(Resources.Load("Monsters/BlueMonster2"));
            blueMonsters.Add(Resources.Load("Monsters/BlueMonster3"));

            //Create the Room and tile arrays.
            roomArray = new Room[numRooms];
            tileArray = new int[rows, cols];
            //buildFloor();

            //Build the rooms based on how many we want and add them to the roomArray.
            for (int r = 0; r < numRooms; r++)
            {
                buildRoom(r);
            }
            addRooms();


            //For each room, connect it with hallways to the preceeding two rooms. Loops back to the beginning of the roomArray if it goes over.
            for (int i = 0; i < numRooms; i++)
            {
                int next = i + 1;
                int next2 = i + 2;

                //Check if either goes over and loop it to the beginning if it does. Example: if 7 rooms, Room 7 will have Next of 1 and Next2 of 2.
                if (next >= numRooms)
                {
                    next = next - numRooms;
                }
                if (next2 >= numRooms)
                {
                    next2 = next2 - numRooms;
                }
                //Connect them. This connects the middlish points of both rooms using an L-Shaped Hallway.
                connectRooms(roomArray[i], roomArray[next]);
                connectRooms(roomArray[i], roomArray[next2]);
            }

            //Get the two rooms where the start tile and the end tile will be.
            startRoom = roomArray[rand.Next(0, numRooms - 1)];
            Room endRoom = roomArray[rand.Next(0, numRooms - 1)];

            //Make sure they are not in the same room.
            while (startRoom == endRoom)
            {
                endRoom = roomArray[rand.Next(0, numRooms - 1)];
            }

            //Generate the locations of the start and end tiles.
            //Making sure that they are not out of bounds.
            startTileRow = startRoom.topRow;
            startTileCol = startRoom.topCol;
            while (startTileRow < 0 || startTileCol < 0)
            {
                if (startTileRow < 0)
                {
                    startTileRow++;
                }

                if (startTileCol < 0)
                {
                    startTileCol++;
                }
            }

            endTileRow = endRoom.botRow;
            endTileCol = endRoom.botCol;
            while (endTileRow >= rows || endTileCol >= cols)
            {
                if (endTileRow >= rows)
                {
                    endTileRow--;
                }

                if (endTileCol >= cols)
                {
                    endTileCol--;
                }
            }
            tileArray[startTileRow, startTileCol] = 1;
            tileArray[endTileRow, endTileCol] = 2;

            //Delete Monster in Start Room
            tileArray[startRoom.monsterRow, startRoom.monsterCol] = 3;

            //connectRooms(roomArray[0], roomArray[1]);

            //Run through the tileArray and generate tiles for each value.
            //int counter = 0;
            for (int i = 0; i < rows; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    if (tileArray[i, j] == 1)
                    {
                        Instantiate(start, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                    }
                    else if (tileArray[i, j] == 2)
                    {
                        Instantiate(end, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                        endPos = new Vector3(i * 3, 0, j * 3);
                    }
                    else if (tileArray[i, j] == 3)
                    {
                        if ((i % 2 == 0 && j % 2 == 0) || (i % 2 != 0 && j % 2 != 0))
                        {
                            Instantiate(tile, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                        }
                        else
                        {
                            Instantiate(tileDark, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                        }

                        int random = rand.Next(0, 10);
                        if (random == 1)
                        {
                            itemArray.Add(new Vector3(i * 3, 1f, j * 3));
                        }

                    }
                    else if (tileArray[i, j] == 4)
                    {
                        Instantiate(monsterTile, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                        monsterArray.Add(new Vector3(i * 3, 0, j * 3));
                    }
                    else if (tileArray[i, j] == 5)
                    {
                        Instantiate(itemTile, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                        itemArray.Add(new Vector3(i * 3, 1f, j * 3));
                    }

                    //counter++;
                }
            }

            //Instantiate Monsters.

            /*
            foreach(Vector3 pos in monsterArray)
            {
                int monsterIndex = rand.Next(0, blueMonsters.Count);
                //GameObject monster = (GameObject)blueMonsters[monsterIndex];
                GameObject monster
                Instantiate(monster, pos, Quaternion.identity);
            }

            //Instantiate Items.
            foreach(Vector3 pos in itemArray)
            {
                //GameObject monster 
                Instantiate(itemPlaceHolder, pos, Quaternion.identity);
            }
            */

            //Walls
            generateWalls();

            //Changing other objects to coincide with the generated dungeon.
            GameObject player = GameObject.Find("Player");
            player.transform.position = new Vector3(3 * startTileRow, 0, 3 * startTileCol);

            GameObject ladder = GameObject.Find("Ladder");
            ladder.transform.position = new Vector3(3 * endTileRow, 3, 3 * endTileCol);
            player.GetComponent<PlayerController>().ladderPos = ladder.transform.position;

            //alreadyGenerated = true;
        }
        else
        {
            //Rebuild the dungeon based on previous tile array saved in the player object.
            tileArray = GameObject.Find("Player").GetComponent<PlayerController>().tileArray;

            for (int i = 0; i < rows; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    if (tileArray[i, j] == 1)
                    {
                        Instantiate(start, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                    }
                    else if (tileArray[i, j] == 2)
                    {
                        Instantiate(end, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                        endPos = new Vector3(i * 3, 0, j * 3);
                    }
                    else if (tileArray[i, j] == 3)
                    {
                        if ((i % 2 == 0 && j % 2 == 0) || (i % 2 != 0 && j % 2 != 0))
                        {
                            Instantiate(tile, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                        }
                        else
                        {
                            Instantiate(tileDark, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                        }

                        int random = rand.Next(0, 10);
                        if (random == 1)
                        {
                            itemArray.Add(new Vector3(i * 3, 1f, j * 3));
                        }

                    }
                    else if (tileArray[i, j] == 4)
                    {
                        Instantiate(monsterTile, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                        monsterArray.Add(new Vector3(i * 3, 0, j * 3));
                    }
                    else if (tileArray[i, j] == 5)
                    {
                        Instantiate(itemTile, new Vector3(i * 3, 0, j * 3), Quaternion.identity);
                        itemArray.Add(new Vector3(i * 3, 1f, j * 3));
                    }

                    //counter++;
                }
            }
            //remake walls
            generateWalls();

            GameObject ladder = GameObject.Find("Ladder");
            ladder.transform.position = GameObject.Find("Player").GetComponent<PlayerController>().ladderPos;
        }
    }


    // Update is called once per frame
    void Update()
    {
        
    }

    void generateWalls()
    {
        //For each location that has a tile,
        //Find all locations adjacent to it with no tile and create a wall there.
        //Including the outer ring.
        for(int i = 0; i < rows; i++)
        {
            for(int j = 0; j < cols; j++)
            {
                if(tileArray[i, j] != 0)
                {
                    //If there is a tile there. 
                    //Adjacent tiles are (i, j++), (i, j--), (i++, j), (i--, j)
                    //Ignoring diagonals.
                    if((j + 1 >= cols) || tileArray[i, j + 1] == 0)
                    {
                        Instantiate(wall, new Vector3(i * 3, 0, (j + 1) * 3), Quaternion.identity);
                    }

                    if((j - 1 < 0) || tileArray[i, j - 1] == 0)
                    {
                        Instantiate(wall, new Vector3(i * 3, 0, (j - 1) * 3), Quaternion.identity);
                    }

                    if((i + 1 >= rows) || tileArray[i + 1, j] == 0)
                    {
                        Instantiate(wall, new Vector3((i + 1) * 3, 0, j * 3), Quaternion.identity);
                    }

                    if((i - 1 < 0) || tileArray[i - 1, j] == 0)
                    {
                        Instantiate(wall, new Vector3((i - 1) * 3, 0, j * 3), Quaternion.identity);
                    }
                }
            }
        }
    }

    //Deprecated. No longer in use.
    void buildFloor()
    {
        roomArray = new Room[numRooms];
        print(roomArray.Length);
        tileArray = new int[rows, cols];

        //Create starting point.
        tileArray[startRow, startCol] = 1;

        //Create ending point.
        tileArray[endRow, endCol] = 2;

        //Values to track our current position.
        int currRow = startRow;
        int currCol = startCol;

        int rowDiff = Math.Abs(endRow - startRow);
        int colDiff = Math.Abs(endCol - startCol);

        //While we are not yet at the end goal
        while (currRow != endRow || currCol != endCol)
        {
            
            if (rowDiff > colDiff)
            {
                if(currRow > endRow)
                {
                    currRow--;
                }
                else
                {
                    currRow++;
                }
            }
            else
            {
                if (currCol > endCol)
                {
                    currCol--;
                }
                else
                {
                    currCol++;
                }
            }

            if(currRow == endRow && currCol == endCol)
            {
                //Do nothing. Don't want to overwrite the end goal.
            }
            else
            {
                //Write the new tile after making sure it is within the bounds
                if (currRow < rows && currCol < cols)
                {
                    //tileArray[currRow, currCol] = 3;
                }
            }

            rowDiff = Math.Abs(endRow - currRow);
            colDiff = Math.Abs(endCol - currCol);
        }
    }

    void addRooms()
    {

        for (int r = 0; r < roomArray.Length; r++)
        {
            Room builderRoom = roomArray[r];
            print("Added Room " + r);
            for (int i = builderRoom.topRow; i <= builderRoom.botRow; i++)
            {
                for (int j = builderRoom.topCol; j <= builderRoom.botCol; j++)
                {
                    //Check if we are within the bounds of our tileArray and it will not overwrite the start or end tiles
                    if ((i < rows && j < cols) && !(i == endRow && j == endCol) && !(i == startRow && j == startCol))
                    {
                        if(i == builderRoom.monsterRow && j == builderRoom.monsterCol)
                        {
                            if(builderRoom == startRoom)
                            {
                                tileArray[i, j] = 3;
                            }
                            else 
                            {
                                tileArray[i, j] = 4;
                            }  
                        }
                        else if(i == builderRoom.itemRow && j == builderRoom.itemCol)
                        {
                            tileArray[i, j] = 5;
                        }
                        else
                        {
                            tileArray[i, j] = 3;
                        }
                    }
                    else
                    {
                        //If we are not, do nothing.
                    }
                }
            }
        }
    }

    void buildRoom(int index)
    {
        //Construct new room
        Room tempRoom = new Room();

        //Get the top corner of the room almost anywhere on the map.
        tempRoom.topRow = rand.Next(0, rows - 5);
        tempRoom.topCol = rand.Next(0, cols - 5);

        //Get the bottom corner based on the top and a random value.
        tempRoom.botRow = rand.Next(tempRoom.topRow + minRoomSize, tempRoom.topRow + maxRoomSize);
        tempRoom.botCol = rand.Next(tempRoom.topCol + minRoomSize, tempRoom.topCol + maxRoomSize);

        //Create the middlish row and col.
        tempRoom.middlishRow = (tempRoom.botRow + tempRoom.topRow) / 2;
        tempRoom.middlishCol = (tempRoom.botCol + tempRoom.topCol) / 2;

        //Adding Monster
        tempRoom.monsterRow = rand.Next(tempRoom.topRow, tempRoom.botRow);
        tempRoom.monsterCol = rand.Next(tempRoom.topCol, tempRoom.botCol);

        //Adding Item
        tempRoom.itemRow = rand.Next(tempRoom.topRow, tempRoom.botRow);
        tempRoom.itemCol = rand.Next(tempRoom.topCol, tempRoom.botCol);

        //Making sure item and monster aren't in the same space
        while(tempRoom.itemRow == tempRoom.monsterRow && tempRoom.itemCol == tempRoom.monsterCol)
        {
            tempRoom.itemRow = rand.Next(tempRoom.topRow, tempRoom.botRow);
            tempRoom.itemCol = rand.Next(tempRoom.topCol, tempRoom.botCol);
        }

        /*
        //Print statements for fun. c:
        print("Created??");
        print("Creating Room " + index);
        print("Defo Created");
        print("topRow: " + tempRoom.topRow);
        print("topCol: " + tempRoom.topCol);
        print("botRow: " + tempRoom.botRow);
        print("botCol: " + tempRoom.botCol);
        */

        //Add them to the rooms array.
        if (!(index >= numRooms))
        {
            roomArray[index] = tempRoom;
        }
        else
        {
            print("Too Many Rooms");
        }
    }

    //Connects the two given rooms using an L hallway that connects their middlish points.
    void connectRooms(Room first, Room second)
    {
        //print("Connecting");
        //Check if they are already connected.
        /*
        if((second.topRow <= first.botRow && second.topRow >= first.topRow && ) || (first.topRow <= second.botRow && first.topCol <= second.botCol))
        {
            print("They are within eachother");
            //Do nothing. If they are already connect, they do not need to be connected.
            return;
        }
        */

        //Lol useless If.
        if(true)
        {
            //print("They are not within eachother");
            //We have to connect them.
            //Easy method. Only use the center points.

            //
            //int colDiff = Math.Abs(first.middlishCol - second.middlishCol);
            //int rowDiff = Math.Abs(first.middlishRow - second.middlishRow);
            int currRow = first.middlishRow;
            int currCol = first.middlishCol;
            /*
            print("First Row: " + first.middlishRow);
            print("First Col: " + first.middlishCol);
            print("Second Row: " + second.middlishRow);
            print("Second Col: " + second.middlishCol);
            */

            //Update column value until it matches with the target column
            while (currCol != second.middlishCol)
            {
                //print("currCol: " + currCol);
                //print("targetCol: " + second.middlishCol);
                //Create our tile if it is within the bounds
                if (currRow < rows && currCol < cols)
                {
                    //Make sure we aren't overwriting important tiles
                    if(tileArray[currRow, currCol] != 4 && tileArray[currRow, currCol] != 5)
                    {
                        tileArray[currRow, currCol] = 3;
                    }
                }

                if (currCol < second.middlishCol)
                {
                    currCol++;
                }
                else
                {
                    currCol--;
                }
            }

            //Update row value until it matches with the target row.
            while (currRow != second.middlishRow)
            {
                //print("currRow: " + currRow);
                //print("targetRow: " + second.middlishRow);
                //Create our tile if it is within the bounds
                if (currRow < rows && currCol < cols)
                {
                    //Make sure we aren't overwriting important tiles
                    if(tileArray[currRow, currCol] != 4 && tileArray[currRow, currCol] != 5)
                    {
                        tileArray[currRow, currCol] = 3;
                    }
                }

                if (currRow < second.middlishRow)
                {
                    currRow++;
                }
                else
                {
                    currRow--;
                }
            }

            /*
            while (!(currCol == second.middlishCol && currRow == second.middlishRow))
            {

                if (colDiff > rowDiff)
                {
                    print("Here");
                    while (currCol != second.middlishCol)
                    {
                        print("currCol: " + currCol);
                        print("targetCol: " + second.middlishCol);
                        //Create our tile if it is within the bounds
                        if(currRow < rows && currCol < cols)
                        {
                            tileArray[currRow, currCol] = 3;
                        }

                        if(currCol < second.middlishCol)
                        {
                            currCol++;
                        }
                        else
                        {
                            currCol--;
                        }
                    }
                }
                else
                {
                    print("Here 2");
                    while (currRow != second.middlishRow)
                    {
                        print("currRow: " + currRow);
                        print("targetRow: " + second.middlishRow);
                        //Create our tile if it is within the bounds
                        if (currRow < rows && currCol < cols)
                        {
                            tileArray[currRow, currCol] = 3;
                        }

                        if (currRow < second.middlishRow)
                        {
                            currRow++;
                        }
                        else
                        {
                            currRow--;
                        }
                    }
                }
                */
        }




            /* Keep this since we may come back to it.
            //1. Check if any point on their sides link up. (Checks if we can make a straight line between them.)

            //Check horizontal sides first. 
            if((second.topRow >= first.topRow && second.topRow <= first.botRow) || first.topRow >= second.topRow && first.topRow <= second.botRow)
            {
                //Confirmed first room is near the second.
                //Need to find which row it is.
            }
            else if(first.topRow >= second.topRow && first.topRow <= second.botRow)
            {
                //Confirmed second room is above the first.
            }
            */
    }
}
