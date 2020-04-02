using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

public class DragHandler : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler
{
    Vector3 startPosition;

    public void OnBeginDrag(PointerEventData eventData)
    {
        startPosition = transform.position;
        GetComponent<CanvasGroup>().blocksRaycasts = false;
    }

    public void OnDrag(PointerEventData eventData)
    {
        transform.position = Input.mousePosition;
    }

    public void OnEndDrag(PointerEventData eventData)
    {
        for (int i = 0; i < eventData.hovered.Count; i++)
        {
            if ((eventData.hovered[i].gameObject.tag == "InventorySlots" || eventData.hovered[i].gameObject.tag == "AttackSlots") && eventData.hovered[i].gameObject.transform.childCount == 0)
            {
                transform.SetParent(eventData.hovered[i].gameObject.transform);
                transform.position = eventData.hovered[i].gameObject.transform.position;
                GetComponent<CanvasGroup>().blocksRaycasts = true;
                if (eventData.hovered[i].gameObject.name == "ElementSlot")
                {
                    transform.localScale = eventData.hovered[i].gameObject.transform.localScale * 4.5f;
                } 
                else
                {
                    transform.localScale = eventData.hovered[i].gameObject.transform.localScale * 1.3f;
                }
                return;
            }
        }
        GetComponent<CanvasGroup>().blocksRaycasts = true;
        transform.position = startPosition;
    }
}
