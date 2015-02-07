using UnityEngine;
using System.Collections;

public class Finder : MonoBehaviour {

	//[SerializeField]
	private float lightDistance = 30.0f; 

	private Light torch;

	void Start()
	{
		torch = this.GetComponentInChildren<Light> ();
	}

	// Update is called once per frame
	void Update () {
	
		if(this.transform.parent != null)
		{
			if(this.transform.parent.name == "Hand")
			{
			torch.enabled = true;

			RaycastHit hit;
			if (Physics.Raycast(transform.position, this.transform.up, out hit, lightDistance)) // sends a ray to find any object
			{
				if(hit.transform.gameObject.GetComponent<HiddenText>() != null)
				{
					hit.transform.gameObject.GetComponent<HiddenText>().enabled = true;
				}
					Debug.DrawRay(transform.position, this.transform.up *lightDistance, Color.green, 1f);
			}
			}
		}

	}
}
