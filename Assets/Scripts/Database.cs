using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class MagicElement
{
    // holds attributes all "magical" elements share
    // magic elements are also all elements loaded at runtime
    // holds a strength array and element type for template
    // see template use below

    // strength array holds bounds for three strength levels (i.e
    // [0,0] is the lower bound for weak
    // [0,1] is the upper bound for weak
    // [1,0] is the lower bound for medium
    // [2,1] is the uppper bound for strong)
    public int[,] strengthArray;
    public string element;      // all magical elements have an element
    public string meshPath;     // path to mesh for rendering
    public string matPath;      // path to material
    public string spritePath;   // path to sprite
    public string name;         // gameObject name
    public string strength;     // weak, medium, or strong
    public Vector3 position;    // persistent position
    public int id;              // unique id for if its ever needed

    public MagicElement(int[,] _strengthArray, string _element, string _meshPath, string _matPath, string _spritePath)
    {
        strengthArray = _strengthArray;
        element = _element;
        meshPath = _meshPath;
        matPath = _matPath;
        spritePath = _spritePath;
    }
    public MagicElement(MagicElement copy)
    {
        strengthArray = copy.strengthArray;
        element = copy.element;
        meshPath = copy.meshPath;
        matPath = copy.matPath;
        spritePath = copy.spritePath;
    }
}

public class Item : MagicElement
{
    // item specific variables
    public string type;

    // assign all instance specific vars using base template
    public Item(MagicElement _base, int _id, string _name, string _type, string _strength, Vector3 _position) : base(_base)
    {
        id = _id;
        name = _name;
        type = _type;
        strength = _strength;
        position = _position;
    }

    // get random strength from within bounds specified in strength array for instance strength
    public int getRandomStrength()
    {
        // see comment in MagicElement for info on strength array
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

public class Fighter : MagicElement
{
    // fighter specific variables
    public int health;

    // assign all instance specific vars using base template
    public Fighter(MagicElement _base, int _id, int _health, string _name, string _strength, Vector3 _position) : base(_base)
    {
        id = _id;
        health = _health;
        name = _name;
        strength = _strength;
        position = _position;
    }

    // get random strength from within bounds specified in strength array for instance strength
    public int getRandomStrength()
    {
        // see comment in MagicElement for info on strength array
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
    // get strength coefficient from a user potion usage
    // calculates element interactions
    public float getStrengthCoefficient(Item elementItem, Item typeItem, Item powerItem)
    {
        float coefficient = 1;
        if (typeItem.type != "heal")
        {
            // values for element interactions taken from OG combat script
            // all combinations below, coefficient of 1 for self interaction
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
            // interactions for blocks and attacks are inversed
            // coefficients used above are for block
            // invert for attack leave uninverted for block
            if (typeItem.type == "attack") coefficient = 1 / coefficient;
        }
        return coefficient;
    }
}

public static class Database
{
    #region item database
    // item stuff
    public static List<MagicElement> itemTemplates = new List<MagicElement>()               
    {   
        // item templates for each type with the damage ranges for that type stored in it
        // items are instantiated by adding all additional fields to a copy of the template 
        // then storing it in an instantiated items list
        // this list is used to render all persistent items spawned in the level
        //[minStrength,max]for weak     medium    strong     type                     meshPath                                       matPath
        new MagicElement(new int[,] {{10, 12}, {20, 25}, {48, 55}}, "water", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Blue Potion"),
        new MagicElement(new int[,] {{5, 8}, {15, 18}, {30, 38}}, "earth", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Yellow Potion"),
        new MagicElement(new int[,] {{3, 10}, {12, 20}, {28, 45}}, "fire", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Red Potion"),
        new MagicElement(new int[,] {{8, 15}, {18, 30}, {40, 80}}, "plant", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Green Potion"),
        new MagicElement(new int[,] {{5, 8}, {15, 25}, {30, 50}}, "ice", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Violet Potion")
    };
    public static MagicElement getItemTemplate(string element)
    {
        return itemTemplates.Find(item => item.element == element);
    }
    public static List<Vector3> itemPositions = new List<Vector3>()        
    {  
        // this is a list of the positions of the elements as a placeholder until
        // dungeon generation created list is integrated
        new Vector3(34, -1.6F, -19),
        new Vector3(25, -1.6F, -19),
        new Vector3(28, -1.6F, -19),
        new Vector3(25, -1.6F, -22),
        new Vector3(25, -1.6F, -16),
        new Vector3(31, -1.6F, -19),
        new Vector3(22, -1.6F, -16),
        new Vector3(22, -1.6F, -13),
        new Vector3(19, -1.6F, -13),
        new Vector3(16, -1.6F, -10),
        new Vector3(16, -1.6F, -16),
        new Vector3(4, -1.6F, -7),
        new Vector3(4, -1.6F, -19),
        new Vector3(4, -1.6F, 8),
        new Vector3(1, -1.6F, 8),
        new Vector3(4, -1.6F, 11),
        new Vector3(16, -1.6F, 11),
        new Vector3(16, -1.6F, 2),
        new Vector3(28, -1.6F, 2),
        new Vector3(28, -1.6F, -7),
        new Vector3(31, -1.6F, 5),
        new Vector3(34, -1.6F, 8),
        new Vector3(34, -1.6F, 14),
        new Vector3(34, -1.6F, -13),
        new Vector3(49, -1.6F, -22),
    };
    public static List<Item> itemInstances = new List<Item>()
    {   
        // actual item database
        // holds list of all items to spawn at beginning of level
        // can be hardcoded (as is now) or dynamic in the future
        // (i.e. for making a dungeon have more strong items)
        //                      element   id      name         type   strength     position      
        new Item(getItemTemplate("water"), 0, "Blue Potion", "attack", "strong", itemPositions[0]),
        new Item(getItemTemplate("plant"), 1, "Green Potion", "attack", "strong", itemPositions[1]),
        new Item(getItemTemplate("fire"),  2, "Red Potion", "attack", "strong", itemPositions[2]),
        new Item(getItemTemplate("plant"), 3, "Green Potion", "attack", "strong", itemPositions[3]),
        new Item(getItemTemplate("fire"),  4, "Red Potion", "attack", "strong", itemPositions[4]),
        new Item(getItemTemplate("plant"), 5, "Green Potion", "attack", "strong", itemPositions[5]),
        new Item(getItemTemplate("ice"), 6, "Violet Potion", "attack", "strong", itemPositions[6]),
        new Item(getItemTemplate("ice"), 7, "Violet Potion", "attack", "strong", itemPositions[7]),
        new Item(getItemTemplate("fire"), 8, "Red Potion", "attack", "strong", itemPositions[8]),
        new Item(getItemTemplate("plant"), 9, "Green Potion", "attack", "strong", itemPositions[9]),
        new Item(getItemTemplate("plant"), 10, "Green Potion", "attack", "strong", itemPositions[10]),
        new Item(getItemTemplate("water"), 11, "Blue Potion", "attack", "strong", itemPositions[11]),
        new Item(getItemTemplate("water"), 12, "Blue Potion", "attack", "strong", itemPositions[12]),
        new Item(getItemTemplate("fire"), 13, "Red Potion", "attack", "strong", itemPositions[13]),
        new Item(getItemTemplate("fire"), 14, "Red Potion", "attack", "strong", itemPositions[14]),
        new Item(getItemTemplate("earth"), 15, "Yellow Potion", "attack", "strong", itemPositions[15]),
        new Item(getItemTemplate("earth"), 16, "Yellow Potion", "attack", "strong", itemPositions[16]),
        new Item(getItemTemplate("water"), 17, "Blue Potion", "attack", "strong", itemPositions[17]),
        new Item(getItemTemplate("plant"), 18, "Green Potion", "attack", "strong", itemPositions[18]),
        new Item(getItemTemplate("ice"), 19, "Violet Potion", "attack", "strong", itemPositions[19]),
        new Item(getItemTemplate("earth"), 20, "Yellow Potion", "attack", "strong", itemPositions[20]),
        new Item(getItemTemplate("earth"), 21, "Yellow Potion", "attack", "strong", itemPositions[21]),
        new Item(getItemTemplate("fire"), 22, "Red Potion", "attack", "strong", itemPositions[22]),
        new Item(getItemTemplate("water"), 23, "Blue Potion", "attack", "strong", itemPositions[23]),
        new Item(getItemTemplate("water"), 24, "Blue Potion", "attack", "strong", itemPositions[24]),
    };
    public static Item getItemInstance(int id)
    {
        return itemInstances.Find(item => item.id == id);
    }
    public static Item getItemInstance(string itemName)
    {
        return itemInstances.Find(item => item.name == itemName);
    }
    #endregion

    public static void dropItems()
    {
        //Create items.
        itemPositions = camera.GetComponent<DungeonGenerator>().itemArray;
        itemInstances.Clear();
        itemInstances.Add(new Item(getItemTemplate("water"), 0, "Blue Potion", "attack", "strong", itemPositions[0]));
        itemInstances.Add(new Item(getItemTemplate("plant"), 1, "Green Potion", "attack", "strong", itemPositions[1]));
        itemInstances.Add(new Item(getItemTemplate("fire"), 2, "Red Potion", "attack", "strong", itemPositions[2]));
        itemInstances.Add(new Item(getItemTemplate("plant"), 3, "Green Potion", "attack", "strong", itemPositions[3]));
        itemInstances.Add(new Item(getItemTemplate("fire"), 4, "Red Potion", "attack", "strong", itemPositions[4]));
        //itemInstances.Add(new Item(getItemTemplate("plant"), 5, "Green Potion", "attack", "strong", itemPositions[5]));

        // function to spawn all items
        foreach (var item in itemInstances)
        {
            // i feel like this part is self explanitory
            GameObject itemObj = new GameObject(item.name);
            itemObj.AddComponent<Rigidbody>();
            itemObj.AddComponent<CapsuleCollider>();
            itemObj.AddComponent<MeshRenderer>();
            itemObj.AddComponent<MeshFilter>();
            itemObj.transform.localScale = new Vector3(.01F, .01F, .01F);
            itemObj.GetComponent<Rigidbody>().useGravity = false;
            itemObj.GetComponent<Rigidbody>().isKinematic = false;
            itemObj.GetComponent<CapsuleCollider>().radius = 88;
            Mesh mesh = Resources.Load(item.meshPath, typeof(Mesh)) as Mesh;
            Material material = Resources.Load(item.matPath, typeof(Material)) as Material;
            itemObj.GetComponent<MeshRenderer>().material = material;
            itemObj.GetComponent<MeshFilter>().mesh = mesh;
            itemObj.transform.position = item.position;
            itemObj.tag = "Pickup";     // this tag is needed for player-item collision checking
            itemObj.layer = 9;          // pickups layer
        }
    }


    #region enemy database
    // enemy stuff
    // same concept as items but enemies
    // if something doesnt make sense look at the items part above, its more commented
    public static List<MagicElement> enemyTemplates = new List<MagicElement>()
    {
        new MagicElement(new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, "water", "Meshes/Monsters/Slime/slime_monster_mesh", "Meshes/Monsters/Slime/Water Texture/Slime Water", "Sprites/Enemies/Water Slime"),
        new MagicElement(new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, "earth", "Meshes/Monsters/Spider/spider_monster_mesh", "Meshes/Monsters/Spider/Earth Texture/Spider Earth", "Sprites/Enemies/Earth Spider"),
        new MagicElement(new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, "fire", "Meshes/Monsters/Spider/spider_monster_mesh", "Meshes/Monsters/Spider/Fire Texture/Spider Fire", "Sprites/Enemies/Fire Spider"),
        new MagicElement(new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, "plant", "Meshes/Monsters/Slime/slime_monster_mesh", "Meshes/Monsters/Slime/Plant Texture/Slime Plant", "Sprites/Enemies/Plant Slime"),
        new MagicElement(new int[,] { { 5, 8 }, { 10, 10 }, { 20, 12} }, "ice", "Meshes/Monsters/Rocky/rocky_monster_mesh", "Meshes/Monsters/Rocky/Ice/Rocky_Ice", "Sprites/Enemies/Ice Golem")
    };
    public static MagicElement getEnemyTemplate(string element)
    {
        return enemyTemplates.Find(Fighter => Fighter.element == element);
    }

    private static GameObject camera = GameObject.Find("Main Camera");
    public static List<Vector3> enemyPositions = new List<Vector3>()
    {
        new Vector3(37, -1.3F, -16),
        new Vector3(10, -1.3F, -13),
        new Vector3(10, -1.3F, 11),
        new Vector3(22, -1.3F, 20),
        new Vector3(37, -1.3F, 11),
    };

    public static List<Fighter> enemyInstances = new List<Fighter>()
    {
        /*
        new Fighter(getEnemyTemplate("water"), 0, 100, "Water Slime", "weak", enemyPositions[0]),
        new Fighter(getEnemyTemplate("plant"), 1, 100, "Plant Slime", "medium", enemyPositions[1]),
        new Fighter(getEnemyTemplate("fire"), 2, 100, "Fire Spider", "medium", enemyPositions[2]),
        new Fighter(getEnemyTemplate("ice"), 2, 100, "Ice Golem", "medium", enemyPositions[3]),
        new Fighter(getEnemyTemplate("earth"), 2, 100, "Earth Spider", "medium", enemyPositions[4])
        */
    };
    public static Fighter getEnemyInstance(int id)
    {
        return enemyInstances.Find(Fighter => Fighter.id == id);
    }
    public static Fighter getEnemyInstance(string enemyName)
    {
        return enemyInstances.Find(Fighter => Fighter.name == enemyName);
    }
    #endregion

    public static void dropEnemies()
    {
        //Create Enemies
        
        enemyPositions = camera.GetComponent<DungeonGenerator>().monsterArray;
        Debug.Log(enemyPositions.Count);
        enemyInstances.Add(new Fighter(getEnemyTemplate("water"), 0, 100, "Water Slime", "weak", enemyPositions[0]));
        enemyInstances.Add(new Fighter(getEnemyTemplate("plant"), 1, 100, "Plant Slime", "medium", enemyPositions[1]));
        enemyInstances.Add(new Fighter(getEnemyTemplate("fire"), 2, 100, "Fire Spider", "medium", enemyPositions[2]));
        enemyInstances.Add(new Fighter(getEnemyTemplate("ice"), 2, 100, "Ice Golem", "medium", enemyPositions[3]));
        //enemyInstances.Add(new Fighter(getEnemyTemplate("earth"), 2, 100, "Earth Spider", "medium", enemyPositions[4]));

        // spawns enemies
        foreach (var enemy in enemyInstances)
        {
            GameObject enemyObj = new GameObject(enemy.name);
            enemyObj.AddComponent<Rigidbody>();
            enemyObj.AddComponent<BoxCollider>();
            enemyObj.AddComponent<MeshRenderer>();
            enemyObj.AddComponent<MeshFilter>();
            //enemyObj.AddComponent<EnemyController>();
            enemyObj.AddComponent<EnemyMovement>();
            enemyObj.transform.localScale = new Vector3(.01F, .01F, .01F);
            enemyObj.GetComponent<Rigidbody>().useGravity = false;
            enemyObj.GetComponent<Rigidbody>().isKinematic = false;
            enemyObj.GetComponent<BoxCollider>().size = new Vector3(150, 500, 150);
            Mesh mesh = Resources.Load(enemy.meshPath, typeof(Mesh)) as Mesh;
            Material material = Resources.Load(enemy.matPath, typeof(Material)) as Material;
            enemyObj.GetComponent<MeshRenderer>().material = material;
            enemyObj.GetComponent<MeshFilter>().mesh = mesh;
            enemyObj.transform.position = enemy.position;
            enemyObj.tag = "Enemy";
            enemyObj.layer = 10;        // enemies layer
        }
    }
   
}
