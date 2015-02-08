using UnityEngine;
using System.Collections;

public class Things : MonoBehaviour {

	public AudioClip clip; //the sound to play.

	private GameObject player;

	void Awake(){
		player = GameObject.FindWithTag ("Player").gameObject;
	}

	public void HitSound(AudioClip sound)
	{
		if (sound != null && !player.audio.isPlaying) {
			player.audio.PlayOneShot (clip, 0.5f);
			Debug.Log (sound.name);
				}
	}

	void OnCollisionEnter(Collision other)
	{
		if(other.gameObject.GetComponent<Usable>() != null)
		{
			HitSound(clip); // play sound
		}
	}
}
