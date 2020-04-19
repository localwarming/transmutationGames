using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DungeonTile : MonoBehaviour
{
    private Renderer myRenderer;
    private MaterialPropertyBlock _propBlock;
    private Color baseColor;
    private bool isSelected = false;
    public Color selectedColor = Color.white;

    void Start()
    {
        myRenderer = GetComponent<Renderer>();
        _propBlock = new MaterialPropertyBlock();
        baseColor = myRenderer.material.color;
    }

    public void Selected()
    {
        if (isSelected)
            return;
        isSelected = true;
        //Debug.Log(gameObject.name + " is selected");
        myRenderer.GetPropertyBlock(_propBlock);
        _propBlock.SetColor("Albedo", baseColor * selectedColor);
        myRenderer.SetPropertyBlock(_propBlock);
    }

    public void NotSelected()
    {
        if(isSelected)
            isSelected = false;
        myRenderer.GetPropertyBlock(_propBlock);
        _propBlock.SetColor("Albedo", baseColor);
        myRenderer.SetPropertyBlock(_propBlock);
    }
}
