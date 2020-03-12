using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Item
{
    public int id;
    public string name;
    public string strength;
    public string element;
    public string attackType;
    public int count;

    public Item(int _id, string _name, string _s, string _e, string _a)
    {
        id = _id;
        name = _name;
        strength = _s;
        element = _e;
        attackType = _a;
        count = 0;
    }
}

public static class ItemDatabase
{

    public static List<Item> items = new List<Item>()
    {
        new Item(0, "Blue Potion", "Water", "Weak", "Heal"),
        new Item(1, "Green Potion", "Earth", "Medium", "Attack"),
        new Item(2, "Red Potion", "Fire", "Medium", "Attack"),
        new Item(3, "Yellow Potion", "Plant", "Medium", "Heal"),
        new Item(4, "Violet Potion", "Ice", "Strong", "Block")
    };

    public static Item get(int id)
    {
        return items.Find(item => item.id == id);
    }
    
    public static Item get(string itemName)
    {
        return items.Find(item => item.name == itemName);
    }
}
