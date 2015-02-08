using UnityEngine;
using System.Collections;

public class Resetter : MonoBehaviour {

	void Update() {
		if (Input.GetKeyDown ("q"))
						Application.LoadLevel (Application.loadedLevelName);
		
	}
}
