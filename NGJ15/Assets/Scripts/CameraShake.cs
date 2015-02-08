using UnityEngine;
using System.Collections;

public class CameraShake : MonoBehaviour {
	// public variable, left at private to avoid touching the player
	public float ShakeMagnitude = 0.025f;

	private float initialAudioVolume = 0.5f;
	private Vector3 cameraPosition;
	private Pickup pickupComponent;

	private const float AUDIO_LIMIT = 0.1f;

	// Use this for initialization
	void Start () {
		this.initialAudioVolume = this.audio.volume;
		// this.maxAudio = 0.5f;

		this.pickupComponent = this.gameObject.GetComponent<Pickup>();
		if( this.pickupComponent == null ) {
			Debug.LogError("Camera shake behaviour was unable to get pickup component");
		}
	}

	void OnPreRender() {
		this.cameraPosition = this.camera.transform.position;

		float throwingPercentage = this.pickupComponent != null ? this.pickupComponent.ThrowPercentage : -1;

		if( throwingPercentage > 0 ) {
			this.camera.transform.position = cameraPosition + new Vector3(Rm() * throwingPercentage, Rm() * throwingPercentage, Rm() * throwingPercentage);
			this.audio.volume = throwingPercentage * this.initialAudioVolume;
		}

		// start & stop audio
		if( throwingPercentage > AUDIO_LIMIT && this.audio.isPlaying == false ) {
			this.audio.Play();
		}
		if( throwingPercentage < AUDIO_LIMIT && this.audio.isPlaying ) {
			this.audio.Stop();
		}
	}
	
	// Update is called once per frame
	void OnPostRender() {
		this.camera.transform.position = cameraPosition;
	}

	// random shake magnitude
	private float Rm() {
		return Random.Range(-ShakeMagnitude, ShakeMagnitude);
	}
}
