using UnityEngine;
using System.Collections;

public class Fire : MonoBehaviour {

	void OnTriggerEnter(Collider other)
	{
		if(other.transform.GetComponent<Flamable>() != null)
		{
			Debug.Log("FIRE");
			other.transform.GetComponent<Flamable>().FlameTimer = 10f;
		}
	}
}
