using UnityEngine;
using System.Collections;

public class Things : MonoBehaviour {
	
	[SerializeField]
	AudioClip clip; //the sound to play.

	private GameObject player;

	void Awake(){
		player = GameObject.FindWithTag ("Player").gameObject;
	}

	void HitSound(AudioClip sound)
	{
		if(clip != null)
		player.audio.PlayOneShot (clip, 1.0f);
	}

	void OnCollisionEnter(Collision other)
	{
		if(other.gameObject.GetComponent<Usable>() != null)
		{
			HitSound(clip); // play sound
		}
	}
}
