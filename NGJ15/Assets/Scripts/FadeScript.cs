using UnityEngine;
using System.Collections;

public class FadeScript : MonoBehaviour {

	private enum FadeStatus {FadeIn, Normal, FadeOut}

	private FadeStatus fade = FadeStatus.Normal;
	public float value = 0;
	public float SecondsFading = 1;

	public void FadeToBlack() {
		this.fade = FadeStatus.FadeOut;
		this.value = 0;
	}

	public void FadeFromBlack() {
		this.fade = FadeStatus.FadeIn;
		this.value = 1;
	}

	// Use this for initialization
	void Awake () {
		Debug.Log("Awakwe");
		this.guiTexture.pixelInset = new Rect(0f, 0f, Screen.width, Screen.height);
	}

	void Start() {
		Debug.Log("Start");
		FadeFromBlack();
	}
	
	// Update is called once per frame
	void Update () {
		switch(this.fade) {
		case FadeStatus.FadeOut:
			this.value += Time.deltaTime;
			if( value >= 1 ) {
				this.fade = FadeStatus.Normal;
				this.value = 1.0f;
			}
			break;
		case FadeStatus.FadeIn:
			this.value -= Time.deltaTime;
			if( value <= 0 ) {
				this.value = 0;
				this.fade = FadeStatus.Normal;
			}
			break;
		default:
			break;
		}

		this.guiTexture.color = Color.Lerp(Color.clear, Color.black, this.value);
	}
}
