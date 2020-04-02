using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyController : MonoBehaviour
{
    GameObject player;
    int stepSize = 3;
    float moveSpeed = 5;
    bool inMotion = false;
    Vector3 lastPosition;
    LayerMask walls;

    void Start()
    {
        player = GameObject.Find("Player");
        walls = LayerMask.GetMask("Walls");
    }

    void Update()
    {
        if (!inMotion)
        {
            // get input
            float horizontal = player.transform.position.x - transform.position.x;
            float vertical = player.transform.position.z - transform.position.z;
            float hNormal = (horizontal != 0) ? horizontal / Mathf.Abs(horizontal) : 0;
            float vNormal = (vertical != 0) ? vertical / Mathf.Abs(vertical) : 0;
            if (Vector3.Distance(transform.position, player.transform.position) < 10)
            {
                // check for walls then move
                Vector3 step1 = (Mathf.Abs(horizontal) > Mathf.Abs(vertical)) ? new Vector3(hNormal * stepSize, 0, 0) : new Vector3(0, 0, vNormal * stepSize);
                Vector3 step2 = (step1.x == 0) ? new Vector3(hNormal * stepSize, 0, 0) : new Vector3(0, 0, vNormal * stepSize);
                Vector3 step = new Vector3(0, 0, 0);
                Ray ray1 = new Ray(transform.position, step1);
                Ray ray2 = new Ray(transform.position, step2);
                RaycastHit hit;
                if (!Physics.Raycast(ray1, out hit, stepSize, walls)) // if theres no collision (besides walkable areas) and not moving already, smoothly move
                {
                    step = step1;
                    lastPosition = transform.position;
                    StartCoroutine(SmoothMovement(transform.position + step1)); // co-routine is run in background so that graphics update while smooth moving
                }
                else if (!Physics.Raycast(ray2, out hit, stepSize, walls))
                {
                    step = step2;
                    lastPosition = transform.position;
                    StartCoroutine(SmoothMovement(transform.position + step2));
                }

                // set enemy orientation
                if (step.x < 0)
                    transform.Rotate(0, 180 - transform.rotation.eulerAngles.y, 0);
                if (step.x > 0)
                    transform.Rotate(0, -1 * transform.rotation.eulerAngles.y, 0);
                if (step.z < 0)
                    transform.Rotate(0, 90 - transform.rotation.eulerAngles.y, 0);
                if (step.z > 0)
                    transform.Rotate(0, -90 - transform.rotation.eulerAngles.y, 0);
            }
        }
    }

    protected IEnumerator SmoothMovement(Vector3 end) // co-routine to update location at set moveSpeed
    {
        inMotion = true; // prevent co-routine from being run again before this finished
        while (transform.position != end)
        {
            transform.position = Vector3.MoveTowards(transform.position, end, moveSpeed * Time.deltaTime); // moves position closer to end until set to end
            if (PlayerController.player.currentEnemy != null)
            {
                transform.position = lastPosition;
                Database.getEnemyInstance(gameObject.name).position = transform.position;
                break;
            }
            Database.getEnemyInstance(gameObject.name).position = transform.position;
            yield return null; // kind of a breakpoint for the co-routine
        }
        inMotion = false; // end co-routine and end movement
    }
}
