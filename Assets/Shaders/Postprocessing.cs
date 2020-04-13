using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//[ExecuteInEditMode]
[RequireComponent(typeof(Camera))]
class Postprocessing : MonoBehaviour
{
    public Material _material;
    [SerializeField, Range(0, 1)]
    float _cutoff;
    Texture2D _noiseTexture;

    public float intensity
    {
        get { return _cutoff; }
        set { _cutoff = value; }
    }

    private void Start()
    {
        //GenerateTexture();
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.R))
        {
            GenerateTexture();
        }
    }

    static Color RandomColor()
    {
        return new Color(Random.value, Random.value, Random.value, Random.value);
    }

    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        if (_material != null)
        {
            if(_noiseTexture != null)
                _material.SetTexture("_TrashTex", _noiseTexture);

            _material.SetFloat("_Cutoff", _cutoff);

            Graphics.Blit(source, destination, _material);
        }

        
    }

    public void GenerateTexture()
    {
        _noiseTexture = new Texture2D(8, 8, TextureFormat.ARGB32, false);
        _noiseTexture.hideFlags = HideFlags.DontSave;
        _noiseTexture.wrapMode = TextureWrapMode.Clamp;
        _noiseTexture.filterMode = FilterMode.Point;
        
        UpdateTexture();
    }

    void UpdateTexture()
    {
        var color = RandomColor();

        for (var y = 0; y < _noiseTexture.height; y++)
        {
            for (var x = 0; x < _noiseTexture.width; x++)
            {
                color = RandomColor();
                _noiseTexture.SetPixel(x, y, color);
            }
        }

        _noiseTexture.Apply();
    }
}
