using UnityEngine;
using System.Collections;

public class Flamable : MonoBehaviour {

	/// <summary>
	/// Set to -1 to make it burn forever. Greater than 0, seconds left of burn time.
	/// </summary>
	public float FlameTimer;

	/// <summary>
	/// The color of the coal.
	/// </summary>
	public Color CoalColor = Color.black;

	private const float SECONDS_TO_COAL = 3; // how many seconds it will take before the object will turn to coal
	private const float BURN_DAMAGE = 1.0f; // the ammount of damage applied

	private const float SECONDS_BETWEEN_DAMAGE = 1; // time in seconds between hurt calls

	/// <summary>
	/// Called when it should start burning
	/// </summary>
	private void StartBurning() {
		Debug.Log(string.Format("{0}: started burning", this.gameObject.name));
	}
	
	/// <summary>
	/// Called when it should stop burning
	/// </summary>
	private void StopBurning() {
		Debug.Log(string.Format("{0}: stopped burning", this.gameObject.name));
	}

	////////////////////////////////////////////////////////////////////////////////////////////////
	///                         ////////////////////////////////////////////////////////////////////
	///    Fire logic below!    ////////////////////////////////////////////////////////////////////
	///                         ////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////

	private const float INFINITE_BURN_VALUE = -0.9f;
	private const float BURNING_STOPPED = -0.5f;

	private const float COAL_CHANGE_PER_SECOND = 1 / SECONDS_TO_COAL;

	private float timeUntilNextDamage = SECONDS_BETWEEN_DAMAGE;

	private Color startColor;
	private float isCoal = 0; // 0=not coal, 1=coal

	private bool IsBurning {
		get
		{
			if( this.IsBurnInfinite ) return true;
			return this.FlameTimer > 0;
		}
	}

	private bool IsBurnInfinite {
		get
		{
			return FlameTimer < INFINITE_BURN_VALUE;
		}
	}

	void Start () {
		this.startColor = this.gameObject.renderer.material.color;
		this.timeUntilNextDamage = Random.Range(0, SECONDS_BETWEEN_DAMAGE); // randomize it
		if( this.IsBurning ) {
			StartBurning();
		}
	}
	
	void Update () {
		// damage the object
		if( this.IsBurning ) {
			this.timeUntilNextDamage -= Time.deltaTime;
			if( this.timeUntilNextDamage <= 0 ){
				this.timeUntilNextDamage += SECONDS_BETWEEN_DAMAGE;
				var dest = this.gameObject.GetComponent<Destructible>();
				if( dest != null ) {
					dest.Hurt(BURN_DAMAGE);
					Debug.Log(string.Format("{0}: burn dmg hurting", this.gameObject.name));
				}
			}
		}

		// change the color of the object to a more coal like black
		if( this.IsBurning ) {
			var coalChange = Time.deltaTime * COAL_CHANGE_PER_SECOND;
			this.isCoal = Mathf.Clamp01(this.isCoal + coalChange);
			this.renderer.material.color = Color.Lerp (this.startColor, this.CoalColor, this.isCoal);
		}

		// decrease the burn timer
		if( this.IsBurning && this.IsBurnInfinite==false ) {
			this.FlameTimer -= Time.deltaTime;
			if( this.FlameTimer <= 0 ) {
				this.FlameTimer = BURNING_STOPPED;
				this.StopBurning();
			}
		}
	}
}
