using UnityEngine;
using System.Collections;

public class camera_2 : MonoBehaviour {
	public GameObject target;
	Vector3 offset;
	// Use this for initialization
	void Start () {

		offset = target.transform.position - transform.position;
	}
	
	// Update is called once per frame
	//to orient the camera behind the target, set angle of the target
	//and turn it into a rotation in the LateUpdate()method;
	void LateUpdate () {
		float desiredAngle = target.transform.eulerAngles.y;
		Quaternion rotation = Quaternion.Euler (0, desiredAngle, 0);
		//multiply offset by the rotation to orient the offset the same as the target.
		transform.position = target.transform.position - (rotation * offset);
		//to keep looking at the player
		transform.LookAt (target.transform);
	}
}
