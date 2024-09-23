
import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return TextField(
			keyboardType: TextInputType.emailAddress,
			decoration: InputDecoration(
				labelText: 'Email',
				hintText: 'Enter your email',
			),
		);
	}
}
