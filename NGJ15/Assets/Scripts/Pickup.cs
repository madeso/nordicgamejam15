using UnityEngine;
using System.Collections;

public class Pickup : MonoBehaviour {
	
	public float PickupDistance;

	[SerializeField]
	private float ThrowIncreaseSpeed = 20;

	[SerializeField]
	private float maxThrowForce = 50;

	[SerializeField]
	private float minThrowForce = 1;

	public GameObject hand {
		get {
			return this.transform.GetChild(0).gameObject;
		}
	}
	private Camera camera;
	private bool handsFull = false;
	private GameObject item;
	private float throwForce = 0;

	public Vector3 handpos {
		get {
			return hand.transform.position; }
	}

	public bool HasPickedUpItem {
		get {
			return item != null;
		}
	}

	/// <summary>
	/// negative = not throwing, positive 0-1 = throw charge
	/// </summary>
	/// <value>The throw percentage.</value>
	public float ThrowPercentage {
		get {
			if( this.HasPickedUpItem == false ) return -1.0f;
			else return (this.throwForce - minThrowForce )/ (maxThrowForce - this.minThrowForce);
		}
	}



	// Use this for initialization
	void Start () {

		// handpos = hand.transform.localPosition;
	}

	public Vector3 debughand;

	private float oldAngularDrag;

	private float SlowDist = 1.0f;

	private float MaxSpeed = 11;

	private static Vector3 Arrival(Vector3 target, Vector3 position, float slowing_distance, float max_speed, Vector3 velocity) {
		var target_offset = target - position;
		var distance = target_offset.magnitude;
		var ramped_speed = max_speed * (distance / slowing_distance);
		var clipped_speed = Mathf.Min(ramped_speed, max_speed);
		var desired_velocity = (clipped_speed / distance) * target_offset;
		var steering = desired_velocity - velocity;
		return steering;
	}

	
	// shouold be remade into two functions so that it looks nice and needs to disable some stuff when picking up and putting down Also i have to mone it out a bit from the character so that you can allways move forward
	void Update () {
		this.debughand = this.item != null ? this.item.transform.localPosition : Vector3.zero;

		if( this.item != null ) {
			var lp = this.item.transform.localPosition;
			// this.item.transform.localPosition = new Vector3(0, 0, 0);
		}

		if(Input.GetMouseButtonDown (1) && this.item != null) // when we have an item and pres the left mouse button we set it free
		{
			LetGo();
			throwForce = 0; // resets force so that the player cannot save up force
		}

		if (Input.GetMouseButtonUp (0) && !handsFull) // get left mouse button down (only one frame)
		{
			RaycastHit hit;
			if (Physics.Raycast(transform.position, this.transform.forward, out hit, PickupDistance)) // sends a ray to find any object
			{
				Debug.Log(hit.transform.name);
				var useable = hit.transform.GetComponent<Usable>();
				if(useable != null) // if we hit an object and it does not have a usable script on it, ignore it
				{
					// useable.transform.parent = hand.transform; // move in as a child of hand
					// useable.transform.localPosition = Vector3.zero;
					// useable.transform.localPosition = Vector3.zero;
					item = useable.gameObject;   // the object
					// useable.rigidbody.isKinematic = true;
					this.oldAngularDrag = this.item.rigidbody.angularDrag;
					item.rigidbody.angularDrag = 120;
					Physics.IgnoreCollision(item.collider, this.transform.parent.collider, true);
				}
			}
			Debug.DrawRay(transform.position, this.transform.forward*PickupDistance, Color.green, 1f); // debug ray for seeing the distance
		}

		if(Input.GetMouseButton(0) && handsFull && throwForce < maxThrowForce) // If left mous botton is down we check if there is something in our hands and that the force is not above max force before adding more.
		{
				throwForce += Time.deltaTime*ThrowIncreaseSpeed;
		}

		if(Input.GetMouseButtonUp(0) && throwForce > minThrowForce && handsFull) // checking for a left mouse up input and ensures that the force is sufficient for a throw 
		{
			Throw();
		}

		if( this.item != null ) {
			// Vector3.SmoothDamp(
			/*var diff = this.handpos - this.item.transform.position;
			if( diff.magnitude > 0 ) {
				diff *= diff.magnitude;
			}*/
			var diff = Arrival (this.handpos, this.item.transform.position, this.SlowDist, this.MaxSpeed, this.item.rigidbody.velocity);
			diff *= 20.0f;

			// this.item.rigidbody.useGravity = false;
			this.item.rigidbody.AddForce(diff, ForceMode.Force);
		}

		//anything picked up???
		if (this.item != null)
		{
			handsFull = true; //yes
			// item.rigidbody.velocity = Vector3.zero;
		}
		else
		{
			handsFull = false; //no
			item = null;
		}

	}

	private void LetGo() // ensures that we return the object to its original state
	{
		if (item != null) 
		{
			Physics.IgnoreCollision(item.collider, this.transform.parent.collider, false);
			// item.transform.parent = null;		 // set it free!!!
			// item.rigidbody.isKinematic = false;
			// hand.transform.localPosition = handpos;
			this.item.rigidbody.angularDrag = this.oldAngularDrag;
			this.item = null;
		}
	}

	private void Throw() // adds force before letting it go
	{
		// item.rigidbody.isKinematic = false;
		item.rigidbody.AddForce (this.transform.forward*throwForce, ForceMode.Impulse);
		//item.GetComponent<Usable> ().thrown = true;

		LetGo ();
		throwForce = 0; // resets force.

	}

}
