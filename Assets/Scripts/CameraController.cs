using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    Vector3 positionOffset = new Vector3(0, 9, -7);
    GameObject player;
    int rotate = 0;

    void Start()
    {
        player = GameObject.Find("Player");
        transform.position = player.transform.position + positionOffset;
    }

    void Update()
    {
        transform.position = player.transform.position + positionOffset;


        //Zoom Out
        if (Input.GetKeyDown(KeyCode.R) || Input.GetAxisRaw("Mouse ScrollWheel") < 0)
        {
            if (Camera.main.fieldOfView < 60)
                Camera.main.fieldOfView += 16;
            if (Camera.main.orthographicSize <= 19)
                Camera.main.orthographicSize += 4;
        }

        //Zoom In
        if (Input.GetKeyDown(KeyCode.F) || Input.GetAxisRaw("Mouse ScrollWheel") > 0)
        {
            if (Camera.main.fieldOfView > 28)
                Camera.main.fieldOfView -= 16;
            if (Camera.main.orthographicSize >= 3)
                Camera.main.orthographicSize -= 4;
        }

        //Rotate Left
        if(Input.GetKeyDown(KeyCode.Q))
        {
            //positionOffset = new Vector3(-7, 9, 0);
            //transform.LookAt(player.transform);
            transform.RotateAround(player.transform.position, Vector3.up, 33);
            positionOffset = transform.position - player.transform.position;
            rotate++;
            //positionOffset = new Vector3(positionOffset.x + positionOffset.x * (float)System.Math.Cos(33 * System.Math.PI / 180), positionOffset.y, positionOffset.z - positionOffset.z * (float)System.Math.Sin(33 * System.Math.PI / 180));
        }

        //Rotate Right
        if (Input.GetKeyDown(KeyCode.E))
        {
            //positionOffset = new Vector3(-7, 9, 0);
            //transform.LookAt(player.transform);
            transform.RotateAround(player.transform.position, Vector3.up, -33);
            positionOffset = transform.position - player.transform.position;
            rotate--;
        }

        if(Input.GetKeyDown(KeyCode.Space))
        {
            Debug.Log("Pressed Space");
            if(rotate > 0)
            {
                for(int i = rotate; i > 0; i-- )
                {
                    transform.RotateAround(player.transform.position, Vector3.up, -33);
                    positionOffset = transform.position - player.transform.position;
                }
            }
            else
            {
                for (int i = rotate; i < 0; i++)
                {
                    transform.RotateAround(player.transform.position, Vector3.up, 33);
                    positionOffset = transform.position - player.transform.position;
                }
            }

            rotate = 0;
        }
    }
}
