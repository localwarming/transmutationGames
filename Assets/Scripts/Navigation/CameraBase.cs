using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraBase : MonoBehaviour
{
    //Don't add this to anything - CameraMovementv3.cs will automatically add this

    private GameObject player;

    private float rotateSpeed;
    float speedMod = 2f;
    [HideInInspector]
    public float targetRotation; //targets the Y axis
    //private float velRot = 0.0f;

    //Debug Variables


    void Awake()
    {
        player = GameObject.Find("Player");
        targetRotation = 0;

    }

    private void Update()
    {
        #region Rotate
        //Rotate to the right
        if (Input.GetKeyDown(KeyCode.E))
        {
            targetRotation -= 90;
        }
        else
        //Rotate to the left
        if (Input.GetKeyDown(KeyCode.Q))
        {
            targetRotation += 90;
        }
        #endregion
    }

    private void FixedUpdate()
    {
        transform.LookAt(player.transform);
        transform.RotateAround(player.transform.position, Vector3.up, rotateSpeed * speedMod * Time.deltaTime);

        //Smooths the speed of RotateAround
        if (targetRotation < 0)
            targetRotation = 270;
        if (targetRotation > 360)
            targetRotation = 90;
        float rotationDifference = targetRotation - transform.eulerAngles.y;
        if (rotationDifference < 10 && rotationDifference > -10)
        {
            speedMod = 1.5f;
        }
        else
            speedMod = 2f;
        rotateSpeed = Mathf.LerpAngle(rotateSpeed, rotationDifference, 0.1f);
    }
}
