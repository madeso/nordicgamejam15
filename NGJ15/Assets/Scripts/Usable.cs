using UnityEngine;
using System.Collections;

public class Usable : Things {
	public string Name;

	public string DisplayName {
		get {
			return string.IsNullOrEmpty(this.Name) ? this.gameObject.name : this.Name;
		}
	}

	void OnCollisionEnter(Collision other)
	{
		if(other.rigidbody != null)
		if(other.rigidbody.velocity.magnitude > 1 && clip != null)
		this.HitSound (clip);
	}
}
