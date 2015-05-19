using UnityEngine;
using System.Collections;

public class camera_3 : MonoBehaviour {
	public GameObject target;
	public float rotatesSpeed = 5;
	Vector3 offset;

	// Use this for initialization
	void Start () {
		offset = target.transform.position - transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		float horizontal = Input.GetAxis ("Mouse X") * rotatesSpeed;
		target.transform.Rotate (0, horizontal, 0);

		float desiredAngle = target.transform.eulerAngles.y;
		Quaternion rotation = Quaternion.Euler (0, desiredAngle, 0);
		transform.position = target.transform.position - (rotation * offset);

		transform.LookAt (target.transform);
	}
}
