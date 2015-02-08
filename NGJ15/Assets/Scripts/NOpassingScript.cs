using UnityEngine;
using System.Collections;

public class NOpassingScript : MonoBehaviour {

	void OnCollisionEnter(Collision other){
		if (other.transform.name = "keyHole") 
		{
			this.GetComponent<Flamable>().FlameTimer = 5.0f;
			audio.Play();
		}
	}
}
