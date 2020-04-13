using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraMovementv2 : MonoBehaviour
{
    private Camera mainCamera;
    private Vector3 velPos;
    private Vector3 targetPosition;

    //Hold Camera position without offset
    private GameObject cameraBase;
    private bool isFreeCam;
    [SerializeField]
    private float moveRange = 0.05f; //How far the camera can move from the player

    private GameObject player;
    private Vector3 cameraDir; //Direction of the Camera from the Player

    private float rotateSpeed;
    float speedMod = 2f;
    [HideInInspector]
    public float targetRotation; //targets the Y axis
    //private float velRot = 0.0f;

    private float targetFOV;
    private float targetOrthographicSize;
    private float velFOV = 0.0f;
    private float velOrtho = 0.0f;

    //Debug Variables


    void Awake()
    {
        mainCamera = Camera.main;
        player = GameObject.Find("Player");
        targetRotation = 0;

        if(cameraBase == null)
        {
            cameraBase = new GameObject();
            cameraBase.AddComponent<CameraBase>();
        }
        cameraBase.name = "Camera Base";
        cameraBase.transform.SetParent(player.transform);
        cameraBase.transform.position = transform.position;

        targetFOV = Camera.main.fieldOfView;
        targetOrthographicSize = Camera.main.orthographicSize;
    }

    private void Update()
    {
        transform.rotation = cameraBase.transform.rotation;
        cameraDir = (player.transform.position - transform.position).normalized;

        Zoom();

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

        if (Input.GetMouseButtonDown(2) || Input.GetKeyDown(KeyCode.Space))
            isFreeCam = !isFreeCam;
    }

    private void FixedUpdate()
    {
        
        transform.RotateAround(player.transform.position, Vector3.up, rotateSpeed * speedMod * Time.deltaTime);

        //Smooths the speed of RotateAround
        if (targetRotation < 0)
            targetRotation = 270;
        if (targetRotation > 360)
            targetRotation = 90;
        float rotationDifference = targetRotation - transform.eulerAngles.y;
        if (rotationDifference < 10 && rotationDifference > -10)
            speedMod = 1.5f;
        else
            speedMod = 2f;
        rotateSpeed = Mathf.LerpAngle(rotateSpeed, rotationDifference, 0.1f);

        //Smooths Camera Zoom
        mainCamera.fieldOfView = Mathf.SmoothDamp(mainCamera.fieldOfView, targetFOV, ref velFOV, 0.1f);
        mainCamera.orthographicSize = Mathf.SmoothDamp(mainCamera.orthographicSize, targetOrthographicSize, ref velOrtho, 0.1f);

        #region MoveCamera
        if (!isFreeCam)
        {
            if ((transform.position - cameraBase.transform.position).sqrMagnitude < float.Epsilon)
                transform.position = cameraBase.transform.position;
            else
                transform.position = Vector3.SmoothDamp(transform.position, cameraBase.transform.position, ref velPos, 0.25f);
        } else
        {
            float MouseOffsetx = Input.mousePosition.x - Screen.width / 2;
            float MouseOffsety = Input.mousePosition.y - Screen.height / 2;
            if(transform.eulerAngles.y > 46 && transform.eulerAngles.y < 135)
            {
                targetPosition = cameraBase.transform.position + new Vector3(MouseOffsety, 0, -MouseOffsetx) * moveRange * (mainCamera.fieldOfView / 60);
            }
            else if(transform.eulerAngles.y > 136 && transform.eulerAngles.y < 225)
            {
                targetPosition = cameraBase.transform.position + new Vector3(-MouseOffsetx, 0, -MouseOffsety) * moveRange * (mainCamera.fieldOfView / 60);
            }
            else if (transform.eulerAngles.y > 226 && transform.eulerAngles.y < 315)
            {
                targetPosition = cameraBase.transform.position + new Vector3(-MouseOffsety, 0, MouseOffsetx) * moveRange * (mainCamera.fieldOfView / 60);
            }
            else
                targetPosition = cameraBase.transform.position + new Vector3(MouseOffsetx, 0, MouseOffsety) * moveRange * (mainCamera.fieldOfView / 60);
            transform.position = Vector3.SmoothDamp(transform.position, targetPosition, ref velPos, 0.5f);
        }
        #endregion
    }

    private void Zoom()
    {
        //Zoom Out
        if (Input.GetKeyDown(KeyCode.R) || Input.GetAxisRaw("Mouse ScrollWheel") < 0)
        {
            if (targetFOV < 60)
                targetFOV += 16;
            if (targetOrthographicSize <= 19)
                targetOrthographicSize += 4;
        }

        //Zoom In
        if (Input.GetKeyDown(KeyCode.F) || Input.GetAxisRaw("Mouse ScrollWheel") > 0)
        {
            if(targetFOV > 28)
            targetFOV -= 16;
            if(targetOrthographicSize >= 3)
            targetOrthographicSize -= 4;
        }
    }
}
