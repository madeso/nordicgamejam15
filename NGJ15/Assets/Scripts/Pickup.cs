using UnityEngine;
using System.Collections;

public class Pickup : MonoBehaviour {
	
	[SerializeField]
	private float PickupDistance;

	private GameObject hand;
	private Camera camera;
	private bool handsFull = false;
	// Use this for initialization
	void Start () {
		hand = this.transform.GetChild(0).gameObject;
	}
	
	// shouold be remade into two functions so that it looks nice and needs to disable some stuff when picking up and putting down Also i have to mone it out a bit from the character so that you can allways move forward
	void Update () {
		if(Input.GetMouseButtonDown (0) && hand.transform.childCount !=0) // when we have an item and pres the left mouse button we set it free
		{
			GameObject item = hand.transform.GetChild(0).gameObject;   // the object
			item.rigidbody.useGravity = true;  //enables gravity
			item.rigidbody.constraints = RigidbodyConstraints.None; //release all constrains
			item.transform.parent = null; // set it free!!!
		}
		if (Input.GetMouseButtonDown (0) && !handsFull) // get left mouse button down (only one frame)
		{
			RaycastHit hit;
			if (Physics.Raycast(transform.position, this.transform.forward, out hit, PickupDistance)) // sends a ray to find any object
			{
				if(hit.transform.GetComponent<Usable>() != null) // if we hit an object and it does not have a usable script on it, ignore it
				{
				hit.transform.parent = hand.transform; // move in as a child of hand

				hit.rigidbody.constraints = RigidbodyConstraints.FreezeAll; // freez rotation and position of the rigidbody
				hit.rigidbody.useGravity = false;  // disable gravity so that we can lift it
				}
			}
			Debug.DrawRay(transform.position, this.transform.forward*PickupDistance, Color.green,1f ); // debug ray for seeing the distance
		}


		//anything picked up???
		if (hand.transform.childCount != 0) 
		{
			handsFull = true; //yes
		}
		else
		{
			handsFull = false; //no
		}

	}

}
