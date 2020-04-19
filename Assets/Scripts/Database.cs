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
    public string itemType;     // used for differentiating types (name of item) for sprite paths within the same element.

    public MagicElement(int[,] _strengthArray, string _element, string _itemType, string _meshPath, string _matPath, string _spritePath)
    {
        strengthArray = _strengthArray;
        element = _element;
        meshPath = _meshPath;
        matPath = _matPath;
        spritePath = _spritePath;
        itemType = _itemType;
    }
    public MagicElement(MagicElement copy)
    {
        strengthArray = copy.strengthArray;
        element = copy.element;
        meshPath = copy.meshPath;
        matPath = copy.matPath;
        spritePath = copy.spritePath;
        itemType = copy.itemType;
    }
}

public class Item : MagicElement
{
    // item specific variables
    public string type;
    public int value;

    // assign all instance specific vars using base template
    public Item(MagicElement _base, int _id, string _name, string _type, string _strength, Vector3 _position, int _value) : base(_base)
    {
        id = _id;
        name = _name;
        type = _type;
        strength = _strength;
        position = _position;
        value = _value;

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

    public static List<Item> itemList;
    // item stuff
    public static List<MagicElement> itemTemplates = new List<MagicElement>()               
    {   
        // item templates for each type with the damage ranges for that type stored in it
        // items are instantiated by adding all additional fields to a copy of the template 
        // then storing it in an instantiated items list
        // this list is used to render all persistent items spawned in the level
        //[minStrength,max]for weak     medium    strong     type                     meshPath                                       matPath
        new MagicElement(new int[,] {{10, 12}, {20, 25}, {48, 55}}, "water", "coral", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Coral"),
        new MagicElement(new int[,] {{10, 12}, {20, 25}, {48, 55}}, "water", "seaweed", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Seaweed"),
        new MagicElement(new int[,] {{10, 12}, {20, 25}, {48, 55}}, "water", "zephyrhills", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Zephyrhills"),
        new MagicElement(new int[,] {{5, 8}, {15, 18}, {30, 38}}, "earth", "fossil", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Fossil"),
        new MagicElement(new int[,] {{5, 8}, {15, 18}, {30, 38}}, "earth", "brick", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Fossil"), //NEED SPRITE
        new MagicElement(new int[,] {{5, 8}, {15, 18}, {30, 38}}, "earth", "rock candy", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Fossil"), //NEED SPRITE
        new MagicElement(new int[,] {{3, 10}, {12, 20}, {28, 45}}, "fire", "fire berry", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Fireberry"),
        new MagicElement(new int[,] {{3, 10}, {12, 20}, {28, 45}}, "fire", "blast shield", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Fireberry"), //NEED SPRITE
        new MagicElement(new int[,] {{3, 10}, {12, 20}, {28, 45}}, "fire", "sriracha", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Sriracha"),
        new MagicElement(new int[,] {{8, 15}, {18, 30}, {40, 80}}, "plant", "nettles", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Nettle"),
        new MagicElement(new int[,] {{8, 15}, {18, 30}, {40, 80}}, "plant", "heartwood", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Heartwood"),
        new MagicElement(new int[,] {{8, 15}, {18, 30}, {40, 80}}, "plant", "spring sprig", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/SpringSprig"),
        new MagicElement(new int[,] {{5, 8}, {15, 25}, {30, 50}}, "ice", "snowball", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/Snowball"),
        new MagicElement(new int[,] {{5, 8}, {15, 25}, {30, 50}}, "ice", "earflap hat", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/EarflapHat"),
        new MagicElement(new int[,] {{5, 8}, {15, 25}, {30, 50}}, "ice", "hot cocoa", "Meshes/Exclamation Point/exclamation_point_mesh", "Meshes/Exclamation Point/Exclamation Point", "Sprites/Items/HotCocoa")
    };
    public static MagicElement getItemTemplate(string element)
    {
        return itemTemplates.Find(item => item.element == element);
    }
    public static MagicElement getItemTemplateByType(string type)
    {
        return itemTemplates.Find(item => item.itemType == type);
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
        /*
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
        */
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
        //Only want to do this once on generation.
        if (!(GameObject.Find("Player").GetComponent<PlayerController>().dungeonGenerated))
        {
            //Items list.
            itemList = new List<Item>();
            
            // Items For Whenever We are Ready For them.
            //Fire Items
            itemList.Add(new Item(getItemTemplateByType("fire berry"), 0, "Fire Berry I", "attack", "weak", new Vector3(0, 0, 0), 10));
            itemList.Add(new Item(getItemTemplateByType("fire berry"), 1, "Fire Berry II", "attack", "medium", new Vector3(0, 0, 0), 20));
            itemList.Add(new Item(getItemTemplateByType("fire berry"), 2, "Fire Berry III", "attack", "strong", new Vector3(0, 0, 0), 30));

            itemList.Add(new Item(getItemTemplateByType("blast shield"), 3, "Fire Block I", "block", "weak", new Vector3(0, 0, 0), 5));
            itemList.Add(new Item(getItemTemplateByType("blast shield"), 4, "Fire Block II", "block", "medium", new Vector3(0, 0, 0), 10));
            itemList.Add(new Item(getItemTemplateByType("blast shield"), 5, "Fire Block III", "block", "strong", new Vector3(0, 0, 0), 15));

            itemList.Add(new Item(getItemTemplateByType("sriracha"), 6, "Sriracha I", "heal", "weak", new Vector3(0, 0, 0), 8));
            itemList.Add(new Item(getItemTemplateByType("sriracha"), 7, "Sriracha II", "heal", "medium", new Vector3(0, 0, 0), 16));
            itemList.Add(new Item(getItemTemplateByType("sriracha"), 8, "Sriracha III", "heal", "strong", new Vector3(0, 0, 0), 24));

            //Water Items
            itemList.Add(new Item(getItemTemplateByType("coral"), 9, "Coral I", "attack", "weak", new Vector3(0, 0, 0), 10));
            itemList.Add(new Item(getItemTemplateByType("coral"), 10, "Coral II", "attack", "medium", new Vector3(0, 0, 0), 20));
            itemList.Add(new Item(getItemTemplateByType("coral"), 11, "Coral III", "attack", "strong", new Vector3(0, 0, 0), 30));

            itemList.Add(new Item(getItemTemplateByType("seaweed"), 12, "Seaweed I", "block", "weak", new Vector3(0, 0, 0), 5));
            itemList.Add(new Item(getItemTemplateByType("seaweed"), 13, "Seaweed II", "block", "medium", new Vector3(0, 0, 0), 10));
            itemList.Add(new Item(getItemTemplateByType("seaweed"), 14, "Seaweed III", "block", "strong", new Vector3(0, 0, 0), 15));

            itemList.Add(new Item(getItemTemplateByType("zephyrhills"), 15, "Zephyrhills I", "heal", "weak", new Vector3(0, 0, 0), 8));
            itemList.Add(new Item(getItemTemplateByType("zephyrhills"), 16, "Zephyrhills II", "heal", "medium", new Vector3(0, 0, 0), 16));
            itemList.Add(new Item(getItemTemplateByType("zephyrhills"), 17, "Zephyrhills III", "heal", "strong", new Vector3(0, 0, 0), 24));

            //Ice Items
            itemList.Add(new Item(getItemTemplateByType("snowball"), 18, "Snowball I", "attack", "weak", new Vector3(0, 0, 0), 10));
            itemList.Add(new Item(getItemTemplateByType("snowball"), 19, "Snowball II", "attack", "medium", new Vector3(0, 0, 0), 20));
            itemList.Add(new Item(getItemTemplateByType("snowball"), 20, "Snowball III", "attack", "strong", new Vector3(0, 0, 0), 30));

            itemList.Add(new Item(getItemTemplateByType("earflap hat"), 21, "Earflap Hat I", "block", "weak", new Vector3(0, 0, 0), 5));
            itemList.Add(new Item(getItemTemplateByType("earflap hat"), 22, "Earflap Hat II", "block", "medium", new Vector3(0, 0, 0), 10));
            itemList.Add(new Item(getItemTemplateByType("earflap hat"), 23, "Earflap Hat III", "block", "strong", new Vector3(0, 0, 0), 15));

            itemList.Add(new Item(getItemTemplateByType("hot cocoa"), 24, "Hot Cocoa I", "heal", "weak", new Vector3(0, 0, 0), 8));
            itemList.Add(new Item(getItemTemplateByType("hot cocoa"), 25, "Hot Cocoa II", "heal", "medium", new Vector3(0, 0, 0), 16));
            itemList.Add(new Item(getItemTemplateByType("hot cocoa"), 26, "Hot Cocoa III", "heal", "strong", new Vector3(0, 0, 0), 24));

            //Earth Items
            itemList.Add(new Item(getItemTemplateByType("fossil"), 27, "Fossil I", "attack", "weak", new Vector3(0, 0, 0), 10));
            itemList.Add(new Item(getItemTemplateByType("fossil"), 28, "Fossil II", "attack", "medium", new Vector3(0, 0, 0), 20));
            itemList.Add(new Item(getItemTemplateByType("fossil"), 29, "Fossil III", "attack", "strong", new Vector3(0, 0, 0), 30));

            itemList.Add(new Item(getItemTemplateByType("brick"), 30, "Earth Block I", "block", "weak", new Vector3(0, 0, 0), 5));
            itemList.Add(new Item(getItemTemplateByType("brick"), 31, "Earth Block II", "block", "medium", new Vector3(0, 0, 0), 10));
            itemList.Add(new Item(getItemTemplateByType("brick"), 32, "Earth Block III", "block", "strong", new Vector3(0, 0, 0), 15));

            itemList.Add(new Item(getItemTemplateByType("rock candy"), 33, "Rock Candy I", "heal", "weak", new Vector3(0, 0, 0), 8));
            itemList.Add(new Item(getItemTemplateByType("rock candy"), 34, "Rock Candy II", "heal", "medium", new Vector3(0, 0, 0), 16));
            itemList.Add(new Item(getItemTemplateByType("rock candy"), 35, "Rack Candy III", "heal", "strong", new Vector3(0, 0, 0), 24));

            //Plant Items
            itemList.Add(new Item(getItemTemplateByType("nettles"), 36, "Nettles I", "attack", "weak", new Vector3(0, 0, 0), 10));
            itemList.Add(new Item(getItemTemplateByType("nettles"), 37, "Nettles II", "attack", "medium", new Vector3(0, 0, 0), 20));
            itemList.Add(new Item(getItemTemplateByType("nettles"), 38, "Nettles III", "attack", "strong", new Vector3(0, 0, 0), 30));

            itemList.Add(new Item(getItemTemplateByType("heartwood"), 39, "Heartwood I", "block", "weak", new Vector3(0, 0, 0), 5));
            itemList.Add(new Item(getItemTemplateByType("heartwood"), 40, "Heartwood II", "block", "medium", new Vector3(0, 0, 0), 10));
            itemList.Add(new Item(getItemTemplateByType("heartwood"), 41, "Heartwood III", "block", "strong", new Vector3(0, 0, 0), 15));

            itemList.Add(new Item(getItemTemplateByType("spring sprig"), 42, "Spring Sprig I", "heal", "weak", new Vector3(0, 0, 0), 8));
            itemList.Add(new Item(getItemTemplateByType("spring sprig"), 43, "Spring Sprig II", "heal", "medium", new Vector3(0, 0, 0), 16));
            itemList.Add(new Item(getItemTemplateByType("spring sprig"), 44, "Spring Sprig III", "heal", "strong", new Vector3(0, 0, 0), 24));


            /*
            itemList.Add(new Item(getItemTemplateByType("coral"), 0, "Coral III", "attack", "medium", new Vector3(0, 0, 0), 30));
            itemList.Add(new Item(getItemTemplateByType("nettles"), 1, "Nettles III", "attack", "strong", new Vector3(0, 0, 0), 30));
            itemList.Add(new Item(getItemTemplateByType("fire berry"), 2, "Fire Berry III", "attack", "strong", new Vector3(0, 0, 0), 30));
            itemList.Add(new Item(getItemTemplateByType("snowball"), 3, "Snowball III", "attack", "strong", new Vector3(0, 0, 0), 30));
            itemList.Add(new Item(getItemTemplateByType("fossil"), 4, "Fossil III", "attack", "strong", new Vector3(0, 0, 0), 30));
            */
            
            //Create items.
            itemPositions = GameObject.Find("Main Camera").GetComponent<DungeonGenerator>().itemArray;
            itemInstances.Clear();
            /*
            itemInstances.Add(new Item(getItemTemplate("water"), 0, "Blue Potion", "attack", "strong", itemPositions[0]));
            itemInstances.Add(new Item(getItemTemplate("plant"), 1, "Green Potion", "attack", "strong", itemPositions[1]));
            itemInstances.Add(new Item(getItemTemplate("fire"), 2, "Red Potion", "attack", "strong", itemPositions[2]));
            itemInstances.Add(new Item(getItemTemplate("plant"), 3, "Green Potion", "attack", "strong", itemPositions[3]));
            itemInstances.Add(new Item(getItemTemplate("fire"), 4, "Red Potion", "attack", "strong", itemPositions[4]));
            //itemInstances.Add(new Item(getItemTemplate("plant"), 5, "Green Potion", "attack", "strong", itemPositions[5]));
            */
            System.Random rand = new System.Random();

            int counter = 0;
            foreach (Vector3 pos in GameObject.Find("Main Camera").GetComponent<DungeonGenerator>().itemArray)
            {
                int itemDecider = rand.Next(0, itemList.Count);
                Item itemToAdd = itemList[itemDecider];

                Item realItem = new Item(getItemTemplateByType(itemToAdd.itemType), counter, itemToAdd.name, itemToAdd.type, itemToAdd.strength, itemToAdd.position, itemToAdd.value);

                realItem.position = pos;
                realItem.id = counter;
                Debug.Log("" + itemToAdd.position.x + "," + itemToAdd.position.y + "," + itemToAdd.position.z);
                itemInstances.Add(realItem);
                counter++;
            }

            Debug.Log("Item Instances: " + itemInstances.Count);
        }

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
        new MagicElement(new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, "water", "irrelevant", "Meshes/Monsters/Slime/slime_monster_mesh", "Meshes/Monsters/Slime/Water Texture/Slime Water", "Sprites/Enemies/Water Slime"),
        new MagicElement(new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, "earth", "irrelevant", "Meshes/Monsters/Spider/spider_monster_mesh", "Meshes/Monsters/Spider/Earth Texture/Spider Earth", "Sprites/Enemies/Earth Spider"),
        new MagicElement(new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, "fire", "irrelevant", "Meshes/Monsters/Spider/spider_monster_mesh", "Meshes/Monsters/Spider/Fire Texture/Spider Fire", "Sprites/Enemies/Fire Spider"),
        new MagicElement(new int[,] { { 5, 5 }, { 10, 10 }, { 20, 20} }, "plant", "irrelevant", "Meshes/Monsters/Slime/slime_monster_mesh", "Meshes/Monsters/Slime/Plant Texture/Slime Plant", "Sprites/Enemies/Plant Slime"),
        new MagicElement(new int[,] { { 5, 8 }, { 10, 10 }, { 20, 12} }, "ice", "irrelevant", "Meshes/Monsters/Rocky/rocky_monster_mesh", "Meshes/Monsters/Rocky/Ice/Rocky_Ice", "Sprites/Enemies/Ice Golem")
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
        new Vector3(37, -1.3F, 11),
        new Vector3(37, -1.3F, 11),
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
        //Only want to do this once on generation.
        if (!(GameObject.Find("Player").GetComponent<PlayerController>().dungeonGenerated))
        {
            //Items list.
            List<Fighter> monsterList = new List<Fighter>();
            monsterList.Add(new Fighter(getEnemyTemplate("water"), 0, 100, "Water Slime", "weak", enemyPositions[0]));
            monsterList.Add(new Fighter(getEnemyTemplate("plant"), 1, 100, "Plant Slime", "medium", enemyPositions[1]));
            monsterList.Add(new Fighter(getEnemyTemplate("fire"), 2, 100, "Fire Spider", "medium", enemyPositions[2]));
            monsterList.Add(new Fighter(getEnemyTemplate("ice"), 2, 100, "Ice Golem", "medium", enemyPositions[3]));
            monsterList.Add(new Fighter(getEnemyTemplate("earth"), 2, 100, "Earth Spider", "medium", enemyPositions[4]));
            //Create items.
            enemyPositions = GameObject.Find("Main Camera").GetComponent<DungeonGenerator>().monsterArray;
            enemyInstances.Clear();
            System.Random rand = new System.Random();

            int counter = 0;
            foreach (Vector3 pos in GameObject.Find("Main Camera").GetComponent<DungeonGenerator>().monsterArray)
            {
                int monsterDecider = rand.Next(0, monsterList.Count);
                Fighter monsterToAdd = monsterList[monsterDecider];

                Fighter realMonster = new Fighter(getEnemyTemplate(monsterToAdd.element), counter, monsterToAdd.health, monsterToAdd.name, monsterToAdd.strength, monsterToAdd.position);

                realMonster.position = pos;
                realMonster.id = counter;
                //Debug.Log("" + itemToAdd.position.x + "," + itemToAdd.position.y + "," + itemToAdd.position.z);
                enemyInstances.Add(realMonster);
                counter++;
            }
        }
        // spawns enemies
        foreach (var enemy in enemyInstances)
        {
            GameObject enemyObj = new GameObject(enemy.name);
            enemyObj.AddComponent<Rigidbody>();
            enemyObj.AddComponent<BoxCollider>();
            enemyObj.AddComponent<MeshRenderer>();
            enemyObj.AddComponent<MeshFilter>();
            enemyObj.AddComponent<EnemyController>();
            //enemyObj.AddComponent<EnemyMovement>();
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
