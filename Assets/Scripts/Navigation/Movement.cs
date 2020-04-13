using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(BoxCollider))]
[RequireComponent(typeof(Rigidbody))]

public abstract class Movement : MonoBehaviour
{
    public float moveTime = 0.1f;
    public LayerMask blockingLayer;

    Collider objectCollider;
    Rigidbody rb;
    float invMoveTime;

    [HideInInspector]
    public bool isMoving = false;

    //Debug variables, remove when finished with script

    protected virtual void Start()
    {
        objectCollider = GetComponent<Collider>();
        rb = GetComponent<Rigidbody>();
        invMoveTime = 1 / moveTime;
    }

    protected bool Move(int xDir, int zDir, out RaycastHit hit)
    {
        Vector3 start = transform.position;
        Vector3 end = new Vector3(Mathf.RoundToInt(start.x), start.y, Mathf.RoundToInt(start.z)) + new Vector3(xDir, 0, zDir);
        objectCollider.enabled = false;
        Physics.Linecast(start, end, out hit, blockingLayer);
        /*Debug.DrawLine(start, end);*/
        objectCollider.enabled = true;

        if(hit.transform == null && !isMoving)
        {
            //print("isMoving");
            isMoving = true;
            StartCoroutine(SmoothMovement(end));
            return true;
        }

        /*Debug.Log("Move failed: Object detected");*/
        return false;
    }

    protected IEnumerator SmoothMovement (Vector3 end) 
    {
        Vector3 finalPosition = end;
        float sqrRemainingDistance = (transform.position - end).sqrMagnitude;

        while(sqrRemainingDistance > float.Epsilon)
        {
            Vector3 newPosition = Vector3.MoveTowards(transform.position, end, invMoveTime * Time.deltaTime);
            transform.position = newPosition;
            sqrRemainingDistance = (transform.position - end).sqrMagnitude;
            yield return null;
        }

        transform.position = finalPosition; //Makes sure that player is on Tile center
        isMoving = false;
        /*Debug.Log("Move Complete");*/
    }

    protected virtual void AttemptMove(int xDir, int yDir)
    {
        RaycastHit hit;

        bool canMove = Move(xDir, yDir, out hit);

        if (hit.transform == null)
            return;
    }
}
