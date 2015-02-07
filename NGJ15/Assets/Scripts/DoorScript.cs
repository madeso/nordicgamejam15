using UnityEngine;
using System.Collections;

public class DoorScript : MonoBehaviour {

	private FadeScript fader;

	// Use this for initialization
	void Start () {
		fader = GameObject.FindObjectOfType<FadeScript>();
	}
	
	// Update is called once per frame
	void OnCollisionEnter (Collision other) {
		if (other.transform.tag == "Key") {
						fader.FadeToBlack();
				} else if (other.transform.GetComponent<Flamable> () != null)
						other.transform.GetComponent<Flamable> ().FlameTimer = 10.0f;
	}
}
