#pragma strict

var jumpHeight = 18;
private var isFalling=false;


function Update () {
	//handle object jumping
	if(Input.GetKeyDown(KeyCode.Space)&&isFalling==false){
		GetComponent.<Rigidbody>().velocity.y=jumpHeight;
		isFalling=true;
		isFalling=false;
	}
	if(Input.GetKeyDown(KeyCode.A)){
		GetComponent.<Rigidbody>().velocity.x=-1;
	}
	if(Input.GetKeyDown(KeyCode.D)){
		GetComponent.<Rigidbody>().velocity.x=1;
	}
	if(Input.GetKeyDown(KeyCode.S)){
		GetComponent.<Rigidbody>().velocity.z=-1;
	}
	if(Input.GetKeyDown(KeyCode.W)){
		GetComponent.<Rigidbody>().velocity.z=1;
	}
} 