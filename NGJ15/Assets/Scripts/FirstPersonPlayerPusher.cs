using UnityEngine;
using System.Collections;

/// <summary>
/// Push objects when they collide with the player, straight from the unity docs:
/// http://docs.unity3d.com/ScriptReference/CharacterController.OnControllerColliderHit.html
/// </summary>
public class FirstPersonPlayerPusher  : MonoBehaviour {
	public float pushPower = 2.0F;
	void OnControllerColliderHit(ControllerColliderHit hit) {
		Rigidbody body = hit.collider.attachedRigidbody;
		if (body == null || body.isKinematic)
			return;
		
		if (hit.moveDirection.y < -0.3F)
			return;
		
		Vector3 pushDir = new Vector3(hit.moveDirection.x, 0, hit.moveDirection.z);
		body.velocity = pushDir * pushPower;
	}
}
