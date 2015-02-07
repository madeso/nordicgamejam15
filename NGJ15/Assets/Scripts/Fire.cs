using UnityEngine;
using System.Collections;

public class Fire : MonoBehaviour {

	void OnCollisionStay(Collision other)
	{
		if(other.transform.GetComponent<Flamable>() != null)
		{
			Debug.Log("FIRE");
			other.transform.GetComponent<Flamable>().FlameTimer = 2.0f;
		}
	}
}
