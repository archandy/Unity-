using UnityEngine;
using System.Collections;

public class TurnManager : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		gameObject.transform.Rotate(0,1,0);
		gameObject.transform.Rotate (0, 0, 0);
	}
}
