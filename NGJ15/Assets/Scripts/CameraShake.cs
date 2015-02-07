using UnityEngine;
using System.Collections;

public class CameraShake : MonoBehaviour {
	private Vector3 start;

	private Pickup pickupComponent;

	private const float AUDIO_LIMIT = 0.1f;

	// Use this for initialization
	void Start () {
		this.start = this.camera.transform.position;

		this.pickupComponent = this.gameObject.GetComponent<Pickup>();
		if( this.pickupComponent == null ) {
			Debug.LogError("Camera shake behaviour was unable to get pickup component");
		}
	}

	void OnPreRender() {
		this.start = this.camera.transform.position;

		float throwing = this.pickupComponent != null ? this.pickupComponent.ThrowPercentage : -1;

		if( throwing > 0 ) {
			this.camera.transform.position = start + new Vector3(R() * throwing, R() * throwing, R() * throwing);
			this.audio.volume = throwing;
		}

		if( throwing > AUDIO_LIMIT && this.audio.isPlaying == false ) {
			this.audio.Play();
		}
		if( throwing < AUDIO_LIMIT && this.audio.isPlaying ) {
			this.audio.Stop();
		}
	}
	
	// Update is called once per frame
	void OnPostRender() {
		this.camera.transform.position = start;
	}

	private const float M = 0.1f;

	private static float R() {
		return Random.Range(-M, M);
	}
}
