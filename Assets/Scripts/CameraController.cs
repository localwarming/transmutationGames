using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    Vector3 positionOffset = new Vector3(0, 9, -7);
    GameObject player;

    void Start()
    {
        player = GameObject.Find("Player");    
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
    }
}
