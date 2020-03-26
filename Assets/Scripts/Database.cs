using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item
{
    public int id;
    int[,] strengthArray;
    public string element;

    public string name;
    public string type;
    public string strength;
    public Vector3 position;

    public Item(int _i, string _e, int[,] _sA)
    {
        id = _i;
        element = _e;
        strengthArray = _sA;
    }

    public Item generateInstance(string _n, string _t, string _s, Vector3 _p)
    {
        Item instance = new Item(this.id, this.element, this.strengthArray);
        instance.name = _n;
        instance.type = _t;
        instance.strength = _s;
        instance.position = _p;
        return instance;
    }

    public int getRandomStrength()
    {
        switch (strength)
        {
            case "weak":
                return (int)Mathf.Round(Random.Range(strengthArray[0,0], strengthArray[0,1]));
            case "medium":
                return (int)Mathf.Round(Random.Range(strengthArray[1, 0], strengthArray[1, 1]));
            case "strong":
                return (int)Mathf.Round(Random.Range(strengthArray[2, 0], strengthArray[2, 1]));
        }
        return 0;
    }
    
}

public class Fighter
{
    public int id;
    public string element;
    int[,] strengthArray;
    public int health;

    public string name;
    public string strength;
    public Vector3 position;

    public Fighter(int _i, string _e, int[,] _sA, int _h)
    {
        id = _i;
        element = _e;
        strengthArray = _sA;
        health = _h;
    }

    public Fighter generateInstance(string _n, string _s, Vector3 _p)
    {
        Fighter instance = new Fighter(this.id, this.element, this.strengthArray, this.health);
        instance.name = _n;
        instance.strength = _s;
        instance.position = _p;
        return instance;
    }

    public int getRandomStrength()
    {
        switch (strength)
        {
            case "weak":
                return (int)Mathf.Round(Random.Range(strengthArray[0, 0], strengthArray[0, 1]));
            case "medium":
                return (int)Mathf.Round(Random.Range(strengthArray[1, 0], strengthArray[1, 1]));
            case "strong":
                return (int)Mathf.Round(Random.Range(strengthArray[2, 0], strengthArray[2, 1]));
        }
        return 0;
    }

    public float getStrengthCoefficient(Item elementItem, Item typeItem, Item powerItem)
    {
        float coefficient = 1;
        if (typeItem.type != "heal")
        {
            switch (elementItem.element)
            {
                case "water":
                    if (this.element == "earth" || this.element == "fire") coefficient = .5F;
                    if (this.element == "plant" || this.element == "ice") coefficient = 2;
                    break;
                case "earth":
                    if (this.element == "ice" || this.element == "fire") coefficient = .5F;
                    if (this.element == "plant" || this.element == "water") coefficient = 2;
                    break;
                case "fire":
                    if (this.element == "plant" || this.element == "ice") coefficient = .5F;
                    if (this.element == "earth" || this.element == "water") coefficient = 2;
                    break;
                case "plant":
                    if (this.element == "earth" || this.element == "water") coefficient = .5F;
                    if (this.element == "fire" || this.element == "ice") coefficient = 2;
                    break;
                case "ice":
                    if (this.element == "earth" || this.element == "water") coefficient = .5F;
                    if (this.element == "plant" || this.element == "fire") coefficient = 2;
                    break;
            }
            if (typeItem.type == "attack") coefficient = 1 / coefficient; // invert for attack leave uninverted for block
        }
        return coefficient;
    }
}

public static class Database
{
    #region item stuff
    public static List<Item> itemTemplates = new List<Item>()
    {
        new Item(0, "water", new int[,] {{10, 12}, {20, 25}, {48, 55}}),
        new Item(1, "earth",  new int[,] {{5, 8}, {15, 18}, {30, 38}}),
        new Item(2, "fire",  new int[,] {{3, 10}, {12, 20}, {28, 45}}),
        new Item(3, "plant",  new int[,] {{8, 15}, {18, 30}, {40, 80}}),
        new Item(4, "ice",  new int[,] {{5, 8}, {15, 25}, {30, 50}})
    };
    public static List<Vector3> itemPositions = new List<Vector3>()
    {
        new Vector3(34, -1.6F, -19),
        new Vector3(25, -1.6F, -19),
        new Vector3(28, -1.6F, -19)
    };
    public static List<Item> itemInstances = new List<Item>()
    {
        getItemTemplate(0).generateInstance("Blue Potion", "attack", "weak", itemPositions[0]),
        getItemTemplate(1).generateInstance("Green Potion", "block", "medium", itemPositions[1]),
        getItemTemplate(2).generateInstance("Red Potion", "attack", "strong", itemPositions[2])
    };

    public static void dropItems()
    {
        foreach (var item in itemInstances)
        {
            GameObject exPt = GameObject.Find("exclamation_point_mesh");
            GameObject itemObj = new GameObject(item.name);
            itemObj.AddComponent<Rigidbody>();
            itemObj.AddComponent<CapsuleCollider>();
            itemObj.AddComponent<MeshRenderer>();
            itemObj.AddComponent<MeshFilter>();
            itemObj.transform.localScale = new Vector3(.01F, .01F, .01F);
            itemObj.GetComponent<Rigidbody>().useGravity = false;
            itemObj.GetComponent<CapsuleCollider>().radius = 88;
            itemObj.GetComponent<MeshRenderer>().material = exPt.GetComponent<MeshRenderer>().material;
            itemObj.GetComponent<MeshFilter>().mesh = exPt.GetComponent<MeshFilter>().mesh;
            itemObj.transform.position = item.position;
            itemObj.tag = "Pickup";
        }
    }

    public static Item getItemTemplate(int id)
    {
        return itemTemplates.Find(item => item.id == id);
    }

    public static Item getItemInstance(int id)
    {
        return itemInstances.Find(item => item.id == id);
    }

    public static Item getItemInstance(string itemName)
    {
        return itemInstances.Find(item => item.name == itemName);
    }
    #endregion

    #region enemy stuff
    public static List<Fighter> enemyTemplates = new List<Fighter>()
    {
        new Fighter(0, "water", new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, 100),
        new Fighter(1, "earth", new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, 100),
        new Fighter(2, "fire", new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, 100),
        new Fighter(3, "plant", new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, 100),
        new Fighter(4, "ice", new int[,] { { 5, 8 }, { 10, 10 }, { 20, 12} }, 100)
    };
    public static List<Vector3> enemyPositions = new List<Vector3>()
    {
        new Vector3(37, -1.3F, -16),
        new Vector3(10, -1.3F, -13),
        new Vector3(10, -1.3F, 11)
    };
    public static List<Fighter> enemyInstances = new List<Fighter>()
    {
        getEnemyTemplate(0).generateInstance("Water Slime", "medium", enemyPositions[0]),
        getEnemyTemplate(1).generateInstance("Earth Spider", "medium", enemyPositions[1]),
        getEnemyTemplate(2).generateInstance("Fire Spider", "medium", enemyPositions[2])
    };

    public static void dropEnemies()
    {
        foreach (var enemy in enemyInstances)
        {
            GameObject enemyBase = GameObject.Find("slime_monster_mesh");
            GameObject enemyObj = new GameObject(enemy.name);
            enemyObj.AddComponent<Rigidbody>();
            enemyObj.AddComponent<BoxCollider>();
            enemyObj.AddComponent<MeshRenderer>();
            enemyObj.AddComponent<MeshFilter>();
            enemyObj.transform.localScale = new Vector3(.01F, .01F, .01F);
            enemyObj.GetComponent<Rigidbody>().useGravity = false;
            enemyObj.GetComponent<BoxCollider>().size = new Vector3(150, 500, 150);
            enemyObj.GetComponent<MeshRenderer>().material = enemyBase.GetComponent<MeshRenderer>().material;
            enemyObj.GetComponent<MeshFilter>().mesh = enemyBase.GetComponent<MeshFilter>().mesh;
            enemyObj.transform.position = enemy.position;
            enemyObj.tag = "Enemy";
        }
    }

    public static Fighter getEnemyTemplate(int id)
    {
        return enemyTemplates.Find(Fighter => Fighter.id == id);
    }
    public static Fighter getEnemyInstance(int id)
    {
        return enemyInstances.Find(Fighter => Fighter.id == id);
    }
    public static Fighter getEnemyInstance(string enemyName)
    {
        return enemyInstances.Find(Fighter => Fighter.name == enemyName);
    }
    #endregion
}
