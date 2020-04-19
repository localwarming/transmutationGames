using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Runtime.Serialization.Formatters.Binary;

public static class SaveLoad{

	public static List<Playthrough> savedGames = new List<Playthrough>();
			

	public static void Save() {
		SaveLoad.savedGames.Add(Playthrough.current);
		BinaryFormatter bf = new BinaryFormatter();
		FileStream file = File.Create (Application.persistentDataPath + "/Saves.gd"); 
		bf.Serialize(file, SaveLoad.savedGames);
		file.Close();
	}	
	
	public static void Load() {
		if(File.Exists(Application.persistentDataPath + "/Saves.gd")) {
			BinaryFormatter bf = new BinaryFormatter();
			FileStream file = File.Open(Application.persistentDataPath + "/Saves.gd", FileMode.Open);
			SaveLoad.savedGames = (List<Playthrough>)bf.Deserialize(file);
			file.Close();
		}
	}
}
