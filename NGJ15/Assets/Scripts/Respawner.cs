using UnityEngine;
using System.Collections;

public class Respawner : MonoBehaviour {

	private Collider box;
	private Vector3 center;

	void Start(){
		box = this.GetComponentInChildren<Collider> ();
		center = box.transform.position;
	}

	void OnTriggerEnter(Collider other)
	{
		Vector3 randPoint = new Vector3(Random.Range(center.x - (box.bounds.size.x/2),center.x + (box.bounds.size.x/2)),
		                            Random.Range(center.y - (box.bounds.size.y/2),center.y + (box.bounds.size.y/2)),
		                            Random.Range(center.z - (box.bounds.size.z/2),center.z + (box.bounds.size.z/2)));
		other.transform.position = randPoint;
	}
}
