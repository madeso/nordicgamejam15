using UnityEngine;
using System.Collections;

public class Usable : Things {
	public string Name;

	public string DisplayName {
		get {
			return string.IsNullOrEmpty(this.Name) ? this.gameObject.name : this.Name;
		}
	}
}
