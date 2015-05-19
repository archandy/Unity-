using UnityEngine;
using System.Collections;

public class camera_1 : MonoBehaviour {
	public GameObject target;
	Vector3 offset;
	// Use this for initialization
	void Start () {
		offset = transform.position - target.transform.position;
	}
	
	// Update is called once per frame
	void Update () {
		Vector3 desiredPosition = target.transform.position + offset;
		transform.position = desiredPosition;
	}
}
