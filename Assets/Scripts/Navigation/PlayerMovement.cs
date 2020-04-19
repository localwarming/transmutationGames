using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

[RequireComponent(typeof(Animator))]
public class PlayerMovement : Movement
{
    public LayerMask floorLayer = 9; 
    private List<GameObject> floorTiles = new List<GameObject>();

    Animator anim;

    public int moveDistance = 3;//Set to Length of tile

    public Camera dungeonCamera;

    private GameObject pathManager;
    private bool isPlayerTurn;
    [HideInInspector]
    public bool autoMove;

    //Debug Variables

    protected override void Start()
    {
        base.Start();

        /*GameObject[] tempList = GameObject.FindGameObjectsWithTag("Floor");
        for(int i = 0; i < tempList.Length; i++)
        {
            floorTiles.Add(tempList[i]);
        }*/
        anim = GetComponent<Animator>();
        dungeonCamera = Camera.main;
        pathManager = GameObject.Find("Path Manager");
    }

    private void FixedUpdate()
    {
        int horizontal = 0;
        int vertical = 0;

        #region CheckRotation
        if(SceneManager.GetActiveScene().name == "Dungeon With Generator" || SceneManager.GetActiveScene().name == "Dungeon With Generator 1")
        {
            float cameray = dungeonCamera.transform.eulerAngles.y;
            if (cameray > 46 && cameray < 135)
            {
                horizontal = (int)Input.GetAxisRaw("Vertical");
                vertical = -(int)Input.GetAxisRaw("Horizontal");
            }
            else if (cameray > 136 && cameray < 225)
            {
                horizontal = -(int)Input.GetAxisRaw("Horizontal");
                vertical = -(int)Input.GetAxisRaw("Vertical");
            }
            else if (cameray > 226 && cameray < 315)
            {
                horizontal = -(int)Input.GetAxisRaw("Vertical");
                vertical = (int)Input.GetAxisRaw("Horizontal");
            }
            else
            {
                horizontal = (int)Input.GetAxisRaw("Horizontal");
                vertical = (int)Input.GetAxisRaw("Vertical");
            }
        }
        
        #endregion

            if (horizontal != 0)
        {
            vertical = 0;
        }

        if(horizontal != 0 || vertical != 0)
        {
            autoMove = false;
            if (!isMoving /*&& pathManager.GetComponent<PathManager>().isPlayerTurn*/)
            {
                AttemptMove(horizontal * moveDistance, vertical * moveDistance); //Vertical is zAxis
            }
        }

        #region SelectTile
        
        /*RaycastHit hitInfo;
        bool hit = Physics.Raycast(dungeonCamera.ScreenPointToRay(Input.mousePosition), out hitInfo, Mathf.Infinity,  floorLayer);
        if (hit)
        {
            hitInfo.collider.gameObject.GetComponent<DungeonTile>().Selected();
            floorTiles.Remove(hitInfo.collider.gameObject);
            foreach(GameObject tile in floorTiles)
            {
                tile.GetComponent<DungeonTile>().NotSelected();
            }
            floorTiles.Add(hitInfo.collider.gameObject);
        }
        else
        {
            foreach (GameObject tile in floorTiles)
            {
                tile.GetComponent<DungeonTile>().NotSelected();
            }
        }*/
        #endregion
    }

    

    public void AutoMove(int xDir, int zDir) //Remove the List<> if not used
    {
        if (!isMoving /*&& pathManager.GetComponent<PathManager>().isPlayerTurn*/)
        {
            if(!autoMove) autoMove = true;

            if(xDir * xDir > zDir * zDir)
            {
                xDir = xDir > 0 ? moveDistance : -moveDistance; 
                zDir = 0;
            }
            else
            {
                xDir = 0;
                zDir = zDir > 0 ? moveDistance : -moveDistance;
            }
            AttemptMove(xDir, zDir);
        }
    }

    protected override void AttemptMove (int xDir, int zDir)
    {
        pathManager.GetComponent<PathManager>().isPlayerTurn = false;
        base.AttemptMove(xDir, zDir);
        RaycastHit hit;
        if(Move(xDir, zDir, out hit))
        {
            //Debug.Log("isPlayerTurn = false");
            ///Play SFX for Moving
        }
    }
}

