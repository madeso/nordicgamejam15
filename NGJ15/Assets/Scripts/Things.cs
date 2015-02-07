using UnityEngine;
using System.Collections;

public class Things : MonoBehaviour {
	
	[SerializeField]
	AudioClip clip; //the sound to play.
	
	void HitSound(AudioClip sound)
	{
		//play audioclip
	}

	void OnCollisionEnter(Collision other)
	{
		if(other.gameObject.GetComponent<Usable>() != null)
		{
			HitSound(clip); // play sound
		}
	}
}
