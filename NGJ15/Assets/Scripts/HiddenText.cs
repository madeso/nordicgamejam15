using UnityEngine;
using System.Collections;

public class HiddenText : MonoBehaviour {

	private float alpha;

	void OnEnable()
	{
		this.renderer.enabled = true;
		alpha = renderer.material.GetFloat ("_Cutoff");
		StartCoroutine (ShowText());
		audio.Play ();
	}

	IEnumerator ShowText() {
		float time = 0;
		while (renderer.material.GetFloat("_Cutoff") >= 0.2) {
			time += Time.deltaTime;
			renderer.material.SetFloat("_Cutoff", Mathf.Lerp (alpha, 0.2f, time));
			// Yield execution of this coroutine and return to the main loop until next frame
			yield return null;
		}

	}
}
