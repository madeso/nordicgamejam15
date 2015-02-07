using UnityEngine;
using System.Collections;

public class Flammable : MonoBehaviour {

	[SerializeField]
	private float flamable = 0; //0<= is no fire above sets the time in miliseconds.
	
	[SerializeField]
	private GameObject fireParticles; // perticle prefab
	
	IEnumerator Burn(float flammable, GameObject Particles) // to 
	{
		//instantiate fire on object position as a child of it
		
		yield return new WaitForSeconds(flamable);
		//destroy Particles
	}
}
