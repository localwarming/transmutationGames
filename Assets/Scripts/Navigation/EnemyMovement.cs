using System.Collections;
using System.Collections.Generic;
using System;
using UnityEngine;

public class EnemyMovement : Movement
{
    private float detectionRadius = 1.5f; //Obsolete
    private int moveDistance = 3;
    private GameObject playerObject;
    private GameObject desiredSpot;
    bool playerNear = false;
    public int movementSpeed = 1;
    private int _movementSpeed;


    // Debug Variables

    protected override void Start()
    {
        base.Start();

        GameObject pathchecker = new GameObject();
        pathchecker.name = "Path Checker";
        pathchecker.transform.position = gameObject.transform.position;
        pathchecker.transform.SetParent(gameObject.transform);
        pathchecker.layer = 8; 
        pathchecker.AddComponent<BoxCollider>().enabled = false;
        _movementSpeed = movementSpeed;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.name == "Player")
        {
            RaycastHit hitLinear;
            Physics.Raycast(transform.position, other.transform.position - transform.position, out hitLinear);
            if (hitLinear.collider.name == "Player")
                Debug.Log("Player is Near");
            playerNear = true;
            playerObject = hitLinear.collider.gameObject;
        }
    }
    private void OnTriggerExit(Collider other)
    {
        playerNear = false;
    }

    public void MarkPath()
    {
        _movementSpeed--;
        if (_movementSpeed > 0)
        {
            return;
        }
        //Debug.Log("MarkPath()");
        RaycastHit[] hits = Physics.SphereCastAll(transform.position, detectionRadius, Vector3.zero);
        foreach (RaycastHit hit in hits)
        {
            Debug.Log(hit.collider.name);
            if (hit.collider.name == "Player")
            {
                RaycastHit hitLinear;
                Physics.Raycast(transform.position, hit.transform.position - transform.position, out hitLinear);
                if (hitLinear.collider.name == "Player")
                    //Debug.Log("Player is Near");
                    playerNear = true;
                    playerObject = hitLinear.collider.gameObject;
                break;
            }
        }
        if(desiredSpot == null)
        {
            desiredSpot = new GameObject();
            desiredSpot.name = "Desired Spot";
            desiredSpot.transform.position = transform.position;
            desiredSpot.transform.parent = gameObject.transform;
        }
        desiredSpot.layer = 8;
        desiredSpot.AddComponent<BoxCollider>().enabled = false;
        if (playerNear == true )
        {

            /*
            Steps:
            1. Mark the sqaure where the enemy wants to move. (Just one space.)
            2. Actually move to said space once everything is confirmed.
            */

            //Not 100% on what I'm doing here, but hopefully it's what you wish. -Mike

                Vector3 currPos = transform.position;
                bool placedMarker = false;

            //Gets the difference in X and the difference in Z of the enemy compared to the player
            float xDiff = Math.Abs(transform.position.x - playerObject.transform.position.x);
            float zDiff = Math.Abs(transform.position.z - playerObject.transform.position.z);

            //Checks which one is greater.
            if(xDiff > zDiff)
            {
                RaycastHit hit;
                    //We did not hit something on the blocking layer, so we update currPos in order to create a marker there.
                    if(currPos.x < playerObject.transform.position.x)
                    {
                        //If monster's x is less than the player's x.
                        //Increase the x of the desired Spot
                        if(Physics.Raycast(transform.position, new Vector3(1, 0, 0), out hit, 3, blockingLayer))
                        {
                            //We have hit something in this direction so don't create marker.
                        }
                        else
                        {
                            currPos.x = currPos.x + moveDistance;
                            placedMarker = true;
                        }
                    }
                    else
                    {
                        //If monster's x is greater than the player's x.
                        //Decrease the x of the desired Spot

                        if(Physics.Raycast(transform.position, new Vector3(-1, 0, 0), out hit, 3, blockingLayer))
                        {
                            //We have hit something in this direction so don't create marker.
                        }
                        else
                        {
                            currPos.x = currPos.x - moveDistance;
                            placedMarker = true;
                        }
                    }

                    //If we haven't placed the marker yet
                    if(!placedMarker)
                    {
                        //Check Z for viable locations.
                        if(currPos.z < playerObject.transform.position.z)
                        {
                            //If monster's z is less than the player's z.
                            //Increase the z of the desired Spot
                            if(Physics.Raycast(transform.position, new Vector3(0, 0, 1), out hit, moveDistance, blockingLayer))
                            {
                                //We have hit something in this direction so don't create marker.
                            }
                            else
                            {
                                currPos.z = currPos.z + moveDistance;
                                placedMarker = true;
                            }
                        }
                        else
                        {
                            //If monster's z is greater than the player's z.
                            //Decrease the z of the desired Spot

                            if(Physics.Raycast(transform.position, new Vector3(0, 0, -1), out hit, moveDistance, blockingLayer))
                            {
                                //We have hit something in this direction so don't create marker.
                            }
                            else
                            {
                                currPos.z = currPos.z - moveDistance;
                                placedMarker = true;
                            }
                        }


                    }
            }
            else
            {
                RaycastHit hit;
                    //We did not hit something on the blocking layer, so we update currPos in order to create a marker there.
                    if(currPos.z < playerObject.transform.position.z)
                    {
                        //If monster's z is less than the player's z.
                        //Increase the z of the desired Spot
                        if(Physics.Raycast(transform.position, new Vector3(0, 0, 1), out hit, 3, blockingLayer))
                        {
                            //We have hit something in this direction so don't create marker.
                        }
                        else
                        {
                            currPos.z = currPos.z + moveDistance;
                            placedMarker = true;
                        }
                    }
                    else
                    {
                        //If monster's z is greater than the player's z.
                        //Decrease the z of the desired Spot

                        if(Physics.Raycast(transform.position, new Vector3(0, 0, -1), out hit, 3, blockingLayer))
                        {
                            //We have hit something in this direction so don't create marker.
                        }
                        else
                        {
                            currPos.z = currPos.z - moveDistance;
                            placedMarker = true;
                        }
                    }

                    //If we haven't placed the marker yet
                    if(!placedMarker)
                    {
                        //Check X for viable locations.
                        if(currPos.x < playerObject.transform.position.x)
                        {
                            //If monster's x is less than the player's x.
                            //Increase the x of the desired Spot
                            if(Physics.Raycast(transform.position, new Vector3(1, 0, 0), out hit, moveDistance, blockingLayer))
                            {
                                //We have hit something in this direction so don't create marker.
                            }
                            else
                            {
                                currPos.x = currPos.x + moveDistance;
                                placedMarker = true;
                            }
                        }
                        else
                        {
                            //If monster's x is greater than the player's x.
                            //Decrease the x of the desired Spot

                            if(Physics.Raycast(transform.position, new Vector3(-1, 0, 0), out hit, moveDistance, blockingLayer))
                            {
                                //We have hit something in this direction so don't create marker.
                            }
                            else
                            {
                                currPos.x = currPos.x - moveDistance;
                                placedMarker = true;
                            }
                        }


                    }
            }

            //If we found a viable position place the marker. Otherwise, change position to current monster's position so it knows to skip.
            if(placedMarker)
            {
                desiredSpot.transform.position = currPos;
                desiredSpot.GetComponent<BoxCollider>().enabled = true;
            }
            else
            {
                desiredSpot.transform.position = transform.position;
            }

        }
    }

    public void attemptMove()
    {
        if (_movementSpeed > 0)
            return;
        else
            _movementSpeed = movementSpeed;
        RaycastHit hit;

        if(desiredSpot.transform.position != transform.position)
        {
            desiredSpot.GetComponent<BoxCollider>().enabled = false;
            //Debug.Log("Moving");
            int Dirx = Mathf.RoundToInt(desiredSpot.transform.position.x - transform.position.x);
            int Dirz = Mathf.RoundToInt(desiredSpot.transform.position.z - transform.position.z);
            Move(Dirx, Dirz, out hit);
        }
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        //Gizmos.DrawWireCube(transform.position, new Vector3(detectionRadius , 0, detectionRadius) * 2);
        //Gizmos.DrawWireSphere(transform.position, detectionRadius);
    }
}
