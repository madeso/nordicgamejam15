using UnityEngine;
using System.Collections;

public class Usable : Things {

	[SerializeField]
	private float flamable = 0; //0<= is no fire above sets the time in miliseconds.

	[SerializeField]
	private bool inDestructable = false; // can be destroyed

	[SerializeField]
	private GameObject fireParticles; // perticle prefab

	private bool thrown = false; //to check if the object was thrown
	
	IEnumerator Burn(float flammable, GameObject Particles) // to 
	{
		//instantiate fire on object position as a child of it
		
		yield return new WaitForSeconds(flamable);
		//destroy Particles
	}

	void wrecking (GameObject toBeWrecked)
	{
		Debug.Log ("wrecking is still under construction");
		//disable this model and replace with breakable version found in the parent object's child.
	}

	void OnCollisionEnter(Collision other)
	{
		if(other.gameObject.GetComponent<Usable>() != null)
		{
			Usable useable = other.gameObject.GetComponent<Usable>();
			if(useable.thrown)
			{
				if(!useable.inDestructable)
				{
					wrecking(other.gameObject);
				}
				wrecking(this.gameObject);
			}
		}

	}
}
