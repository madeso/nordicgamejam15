using UnityEngine;
using System.Collections;

public class Destructible : MonoBehaviour {
	/// <summary>
	/// How much the object can take before it is destroyed
	/// </summary>
	public float Hitpoints = 5;

	/// <summary>
	/// The prefabs to be spawned when the object is destroyed...
	/// </summary>
	public GameObject[] Parts;

	/// <summary>
	/// How fragile the object is = the ammount of force needs to be greater than this value for it to be damaged.
	/// -1 = this can't be destroyed by force
	/// </summary>
	public float Fragility;

	private bool CanBeDestroyed {
		get {
			return this.Fragility >= 0.0f;
		}
	}

	private void StopFlames () {
		var flames = this.GetComponent<Flamable>();
		if( flames != null ) {
			// Debug.Log(string.Format("{0}: stopping flames", this.gameObject.name));
			flames.StopBurningPlease();
		}
	}

	public void Hurt(float dmg) {
		this.Hitpoints -= dmg;
		
		// Debug.Log(string.Format("{0}: got {1} dmg", this.gameObject.name, dmg));
		if(this.Hitpoints <= 0.0) {
			Debug.Log(string.Format("{0}: died", this.gameObject.name));
			this.StopFlames();
			Destroy(this.gameObject);
			// todo: spawn destroyed game object
			foreach(var p in this.Parts) {
				Instantiate(p, this.transform.position, this.transform.rotation);
			}
		}
	}

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
	}

	void OnCollisionEnter(Collision col)
	{
		if( this.CanBeDestroyed ) {
			// hacky way to get the force, since unity doesn't give it to us...
			// http://answers.unity3d.com/questions/201823/how-to-implement-if-hit-with-certain-force.html
			var otherMass = col.rigidbody != null ? col.rigidbody.mass : 10;
			var force = otherMass * col.relativeVelocity;
//			Debug.Log(string.Format("{0}: hit force was {1}", this.gameObject.name, force.magnitude));
			if( force.sqrMagnitude < this.Fragility * this.Fragility ) {
				// not enough force...
				return;
			}

			var potentialDmg = force.magnitude - this.Fragility;

			this.Hurt(potentialDmg); // todo: find a way to determine the damage the object got was enough
		}
	}


}
