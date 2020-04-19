using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;
using UnityEditor;

public class SceneTransition : MonoBehaviour
{
    public Material _material;
    [SerializeField, Range(0, 1)]
    float _cutoff; //The shader cuts out pixels on screeen that are darker than the cutoff based on _noiseTexture
    Texture2D _noiseTexture;

    public float intensity
    {
        get { return _cutoff; }
        set { _cutoff = value; }
    }

    /*
    public void Transition(Scene scene, int transitionType)
    {
        _noiseTexture = (Texture2D)AssetDatabase.LoadAssetAtPath("Assets/Textures/Shaders/Transitions/" + transitionType + ".png", typeof(Texture2D));
        Debug.Log(_noiseTexture.name);
        if (_noiseTexture.name == "1") //Generates new checkered pattern
            GenerateTexture();
        _material.SetTexture("_TrashTex", _noiseTexture);
        StartCoroutine(LoadAsync(scene));
    }
    */
    IEnumerator LoadAsync(Scene scene)
    {
         //Check here if scenes isn't loading properly
        _cutoff = 0;
        float elapsedTime = 0.0f;
        float waitTime = 1.5f;
        while (elapsedTime < waitTime)
        {
            _cutoff = Mathf.Lerp(_cutoff, 1.0f, elapsedTime/waitTime);
            elapsedTime += Time.deltaTime;
            yield return null;
        }
        AsyncOperation asyncLoad = SceneManager.LoadSceneAsync(1);
        while (!asyncLoad.isDone && _cutoff < 1)
        {
            yield return null;
        }
        yield return null;
    }

    void OnRenderImage(RenderTexture source, RenderTexture destination) //Adds the shader to the camera
    {
        if (_material != null)
        {
            if (_noiseTexture != null)
                _material.SetTexture("_TrashTex", _noiseTexture);

            _material.SetFloat("_Cutoff", _cutoff);

            Graphics.Blit(source, destination, _material);
        }


    }

    public void GenerateTexture() //Use for checkered transition
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

    static Color RandomColor()
    {
        return new Color(Random.value, Random.value, Random.value, Random.value);
    }
}
