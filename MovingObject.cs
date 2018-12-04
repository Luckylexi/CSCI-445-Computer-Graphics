using UnityEngine;
using System.Collections;

public class MovingObject : MonoBehaviour
{
	public float speed;
	public Vector3 point;

	void Start()
	{
		speed = 20f;
	}

	void Update()
	{
		transform.Translate(speed*Input.GetAxis("Horizontal") * Time.deltaTime, 0f, speed*Input.GetAxis("Vertical") * Time.deltaTime);
		point = transform.position;
		if (Input.GetKey(KeyCode.D))
		{
			transform.RotateAround(point, Vector3.up, 20 * Time.deltaTime);
		}
		else if (Input.GetKey(KeyCode.A))
			transform.RotateAround(point, -Vector3.up, 20 * Time.deltaTime);
	}
}