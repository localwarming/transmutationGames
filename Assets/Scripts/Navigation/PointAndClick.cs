using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace Pathfinding
{
    /// <summary>
    /// Sets the destination of an AI to the position of a specified object.
    /// This component should be attached to a GameObject together with a movement script such as AIPath, RichAI or AILerp.
    /// This component will then make the AI move towards the <see cref="target"/> set on this component.
    ///
    /// See: <see cref="Pathfinding.IAstarAI.destination"/>
    ///
    /// [Open online documentation to see images]
    /// </summary>
    [UniqueComponent(tag = "ai.destination")]
    [HelpURL("http://arongranberg.com/astar/docs/class_pathfinding_1_1_a_i_destination_setter.php")]
    public class PointAndClick : VersionedMonoBehaviour
    {
        /// <summary>The object that the AI should move to</summary>
        private Transform target;
        IAstarAI ai;

        public LayerMask floorLayer;
        private GameObject player;
        //public List<Vector3> _lastCompletedPath;
        private Path _path;
        public List<Vector3> vectorPoints;

        //Debug
        //public Vector3 _nextPos;

        private void Start()
        {
            ai = GetComponent<IAstarAI>();
            player = GameObject.Find("Player");
            if (player.transform.parent != null)
                player = player.transform.parent.gameObject;
            floorLayer = player.GetComponent<PlayerMovement>().floorLayer;
            
        }

        void OnEnable()
        {
            ai = GetComponent<IAstarAI>();
            // Update the destination right before searching for a path as well.
            // This is enough in theory, but this script will also update the destination every
            // frame as the destination is used for debugging and may be used for other things by other
            // scripts as well. So it makes sense that it is up to date every frame.
            if (ai != null) ai.onSearchPath += Update;
        }

        void OnDisable()
        {
            if (ai != null) ai.onSearchPath -= Update;
        }

        GameObject selectedobject;
        public Color baseColor;

        /// <summary>Updates the AI's destination every frame</summary>
        void Update()
        {
            RaycastHit hitMouse;
            bool isHit = Physics.Raycast(Camera.main.ScreenPointToRay(Input.mousePosition), out hitMouse, Mathf.Infinity, floorLayer);
            if (isHit)
            {
                if(selectedobject != null)
                {
                    selectedobject.GetComponent<Renderer>().material.color = baseColor;
                }
                selectedobject = hitMouse.collider.gameObject;
                baseColor = selectedobject.GetComponent<Renderer>().material.color;
                selectedobject.GetComponent<Renderer>().material.color = baseColor + new Color(.6f, .6f, .3f);

                if (Input.GetMouseButtonDown(0))
                {
                    if (target == null)
                    {
                        target = hitMouse.transform;
                        ai.destination = new Vector3(target.position.x, transform.position.y, target.position.z);
                        //GetComponent<AIPath>().SearchPath();
                        StartCoroutine(AutoMove());
                    }
                    else
                    {
                        target = null;
                        ai.destination = Vector3.positiveInfinity;
                        vectorPoints.Clear();
                    }
                }
            }
            else
            {
                if (selectedobject != null)
                {
                    selectedobject.GetComponent<Renderer>().material.color = baseColor;
                }

                if (Input.GetMouseButtonDown(0))
                {
                    Debug.Log("Path Cleared");
                    target = null;
                    ai.destination = Vector3.positiveInfinity;
                    vectorPoints.Clear();
                    _path = null;
                }
            }

            // _lastCompletedPath = GetComponent<Seeker>().lastCompletedVectorPath;
            if (GetComponent<AIPath>().path != null && GetComponent<AIPath>().path.vectorPath.Count != 0)
            {
                _path = GetComponent<AIPath>().path;
            }
            
            if(_path != null && ai.destination != Vector3.positiveInfinity) vectorPoints = _path.vectorPath;
            //if (target != null && ai != null) ai.destination = new Vector3(target.position.x, transform.position.y, target.position.z);

            if (Input.GetAxisRaw("Horizontal") != 0 && ai.destination != Vector3.positiveInfinity || Input.GetAxisRaw("Vertical") != 0 && ai.destination != Vector3.positiveInfinity)
            {
                Debug.Log("Path Cleared");
                target = null;
                ai.destination = Vector3.positiveInfinity;
                vectorPoints.Clear();
                _path = null;
            }
        }

        IEnumerator AutoMove()
        {
            yield return new WaitUntil(pathCalculated);
            if (_path.vectorPath.Count == 0)
                yield return null;
            Vector3 nextPos = _path.vectorPath[1];
            int nextPosx = Mathf.RoundToInt(nextPos.x - transform.position.x);
            int nextPosz = Mathf.RoundToInt(nextPos.z - transform.position.z);
            player.GetComponent<PlayerMovement>().AutoMove(nextPosx, nextPosz);
            while (vectorPoints.Count > 2)
            {
                //yield return new WaitUntil(pathCalculated);
                if (ai.destination == Vector3.positiveInfinity)
                    StopAllCoroutines();
                nextPos = vectorPoints[1];
                nextPosx = Mathf.RoundToInt(nextPos.x - transform.position.x);
                nextPosz = Mathf.RoundToInt(nextPos.z - transform.position.z);
                player.GetComponent<PlayerMovement>().AutoMove(nextPosx, nextPosz);
                GetComponent<AIPath>().SearchPath();
                yield return new WaitUntil(pathCalculated);
            }
            while ((ai.destination - transform.position).sqrMagnitude > 1 && target != null)
            {
                //Debug.Log("(ai.destination - transform.position).sqrMagnitude > 1");
                if (ai.destination == Vector3.positiveInfinity)
                    StopAllCoroutines();
                if(vectorPoints.Count < 2)
                {
                    Debug.Log("Destination");
                    nextPos = ai.destination;
                    RaycastHit hit;
                    Physics.Raycast(transform.position, nextPos - transform.position, out hit, LayerMask.GetMask("Walls"));
                    if(hit.transform != null)
                    {
                        nextPos = _path.vectorPath[1];
                    }
                }
                else
                {
                    Debug.Log("Path");
                    nextPos = _path.vectorPath[1];
                }
                nextPosx = Mathf.RoundToInt(nextPos.x - transform.position.x);
                nextPosz = Mathf.RoundToInt(nextPos.z - transform.position.z);
                player.GetComponent<PlayerMovement>().AutoMove(nextPosx, nextPosz);
                GetComponent<AIPath>().SearchPath();
                yield return new WaitForEndOfFrame();
            }

            target = null;
            ai.destination = Vector3.positiveInfinity;
            vectorPoints.Clear();
            _path = null;
            yield return null;
        }

        private bool pathCalculated()
        {
            if (_path != null)
            {
                return true;
            }
            else
                return false;
        }
        
    }
}
