using UnityEngine;
using System.Collections;

public class GraviSphere : MonoBehaviour {

	// Use this for initialization
	void OnCollisionEnter(Collision other){
		if(other.transform.GetComponent<Usable>() != null){
			other.transform.rigidbody.useGravity = !other.transform.rigidbody.useGravity;
		}
	}
}
