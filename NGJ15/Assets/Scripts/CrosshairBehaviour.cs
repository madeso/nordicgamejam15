using UnityEngine;
using System.Collections;

public class CrosshairBehaviour : MonoBehaviour {
	public Texture2D Crosshair;
	public Color PickupFontColor;

	private bool crosshairVisible = false;
	private string hudDesc = string.Empty;

	private float PLAYER_REACH {
		get {
			return pickupComponent != null ? pickupComponent.PickupDistance : 10.0f;
		}
	}
	private Pickup pickupComponent;

	// Use this for initialization
	static Rect GenerateRenderRect(Texture2D img) {
		return new Rect((Screen.width - img.width) / 2,
		                       (Screen.height - img.height) /2,
		                    img.width,
		                    img.height);
	}

	void Start() {
		this.pickupComponent = this.gameObject.GetComponent<Pickup>();
		if( this.pickupComponent == null ) {
			Debug.LogError("Crosshair behaviour was unable to get pickup component");
		}
	}

	void Update() {
		bool hasPickup = pickupComponent != null ? pickupComponent.HasPickedUpItem : false;
		this.crosshairVisible = hasPickup == false;
		this.hudDesc = string.Empty;
		if( hasPickup == false ) {
			RaycastHit hit;
			Physics.Raycast(this.transform.position, this.transform.forward, out hit, PLAYER_REACH);
			if( hit.transform != null ) {
				var useable = hit.transform.GetComponent<Usable>();
				if (useable != null)
				{
					this.hudDesc = useable.DisplayName;
				}
				else {
					this.hudDesc = string.Empty;
				}
			}
		}
	}
	
	// Update is called once per frame
	void OnGUI() {
		if( this.crosshairVisible) {
			var image = this.Crosshair;
			var rec = GenerateRenderRect(image);
			GUI.DrawTexture(rec, image);
		}

		if( string.IsNullOrEmpty(this.hudDesc) == false ) {
			var style = new GUIStyle();
			style.alignment = TextAnchor.MiddleCenter;
			style.wordWrap = false;
			style.normal.textColor = this.PickupFontColor;
			GUI.Label(new Rect(10, Screen.height / 2.0f + 20, Screen.width - 20, 30), this.hudDesc, style);
		}
	}
}
