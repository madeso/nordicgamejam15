using UnityEngine;
using System.Collections;

public class DoorScript : MonoBehaviour {

	private FadeScript fader;
	
	public GameObject objectToShow;

	// Use this for initialization
	void Start () {
		fader = GameObject.FindObjectOfType<FadeScript>();
		if(objectToShow != null){
			objectToShow.renderer.enabled = false;
		}
	}
	
	// Update is called once per frame
	void OnCollisionEnter (Collision other) {
		if (other.transform.tag == "Key") {
			if(objectToShow != null){
				objectToShow.renderer.enabled = true;
			}
						fader.FadeToBlack();
			Application.LoadLevel(0);
				}

	}
}
