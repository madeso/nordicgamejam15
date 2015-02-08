using UnityEngine;
using System.Collections;

public class PlayerSteps : MonoBehaviour {
	private float stepsdim = 0;

	/// <summary>
	/// Time between the steps...
	/// </summary>
	public float Steptime = 0.4f;
	private Vector3 lastPos;
	// Use this for initialization
	void Start () {
		lastPos = this.transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		if( (lastPos-this.transform.position).sqrMagnitude > 0.0f ) {
			stepsdim += Time.deltaTime;
			this.lastPos = this.transform.position;
		}

		if( this.stepsdim >= this.Steptime ) {
			this.audio.Play();
			this.stepsdim -= this.Steptime;
		}
	}
}
