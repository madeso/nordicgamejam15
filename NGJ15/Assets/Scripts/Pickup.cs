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
		hand = this.transform.parent.Find("Hand").gameObject;
	}
	
	// shouold be remade into two functions so that it looks nice and needs to disable some stuff when picking up and putting down Also i have to mone it out a bit from the character so that you can allways move forward
	void Update () {
		if(Input.GetMouseButtonDown (0) && hand.transform.childCount !=0)
		{
			hand.transform.GetChild(0).rigidbody.useGravity = true;
			hand.transform.GetChild(0).rigidbody.isKinematic = false;
			hand.transform.GetChild(0).parent = null;
		}
		if (Input.GetMouseButtonDown (0) && !handsFull) // get left mouse button down (only one frame)
		{
			RaycastHit hit;
			if (Physics.Raycast(transform.position, this.transform.forward, out hit, PickupDistance))
			{
				hit.transform.parent = hand.transform;
				hit.rigidbody.useGravity = false;
				hand.transform.GetChild(0).rigidbody.isKinematic = true;
			}
			Debug.DrawRay(transform.position, this.transform.forward*PickupDistance, Color.green,10.0f );
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
