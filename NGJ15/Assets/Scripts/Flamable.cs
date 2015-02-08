using UnityEngine;
using System.Collections;

public class Flamable : MonoBehaviour {
	
	////////////////////////////////////////////////////////////////////////////////////////////////
	// To unity
	
	/// <summary>
	/// Set to -1 to make it burn forever. Greater than 0, seconds left of burn time.
	/// </summary>
	public float FlameTimer;
	
	/// <summary>
	/// The color of the coal.
	/// </summary>
	public Color CoalColor = Color.black;
	
	/// <summary>
	/// How many seconds it will take before the object will turn to coal
	/// </summary>
	public float SecondsToCoal = 3;
	
	/// <summary>
	/// The ammount of damage applied each burn update
	/// </summary>
	public float BurnDamage = 1.0f;
	
	/// <summary>
	/// Time in seconds between each burn update (hurt/damage call)
	/// </summary>
	public float SecondsBetweenDamage = 1;
	
	public GameObject prefabFire = null;
	
	private GameObject fireInstance = null;
	
	////////////////////////////////////////////////////////////////////////////////////////////////
	// High level logic
	
	/// <summary>
	/// Called when it should start burning
	/// </summary>
	public void StartBurning() {
		if( this.prefabFire != null ) {
			Debug.Log(string.Format("{0}: started burning", this.gameObject.name));
			fireInstance = (GameObject) Instantiate(this.prefabFire, this.transform.position, Quaternion.Euler(-90,0,0));
		}
	}
	
	/// <summary>
	/// Called each burn update so we can play some sound or something...
	/// </summary>
	private void OnBurn() {
		// todo: play some burn sound
		// Debug.Log(string.Format("{0}: playing some burn sound...", this.gameObject.name));
		
		if( fireInstance != null ) {
			fireInstance.transform.position = this.transform.position;
		}
	}
	
	/// <summary>
	/// Called when it should stop burning
	/// </summary>
	private void StopBurning() {
		Debug.Log(string.Format("{0}: stopped burning", this.gameObject.name));
		if( fireInstance != null ) {
			Destroy(fireInstance);
		}
	}

	public void StopBurningPlease () {
		if( this.fireInstance != null ) {
			this.StopBurning();
		}
	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////
	///                         ////////////////////////////////////////////////////////////////////
	///    Fire logic below!    ////////////////////////////////////////////////////////////////////
	///                         ////////////////////////////////////////////////////////////////////
	////////////////////////////////////////////////////////////////////////////////////////////////
	
	private const float INFINITE_BURN_VALUE = -0.9f;
	private const float BURNING_STOPPED = -0.5f;
	
	private float CoalChangePerSecond  {
		get {
			return 1 / SecondsToCoal;
		}
	}
	
	private float timeUntilNextDamage = 15;
	
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
	
	void OnEnable () {
		this.startColor = this.gameObject.renderer.material.color;
		this.timeUntilNextDamage = Random.Range(0, SecondsBetweenDamage); // randomize it
	}
	
	void Update () {
		if( this.IsBurning && fireInstance == null ) {
			StartBurning();
		}

		// damage the object
		if( this.IsBurning ) {
			this.OnBurn();
			this.timeUntilNextDamage -= Time.deltaTime;
			if( this.timeUntilNextDamage <= 0 ){
				this.timeUntilNextDamage += SecondsBetweenDamage;
				var dest = this.gameObject.GetComponent<Destructible>();
				if( dest != null ) {
					// Debug.Log(string.Format("{0}: burn dmg hurting", this.gameObject.name));
					dest.Hurt(BurnDamage);
				}
			}
		}
		
		// change the color of the object to a more coal like black
		if( this.IsBurning ) {
			var coalChange = Time.deltaTime * CoalChangePerSecond;
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
