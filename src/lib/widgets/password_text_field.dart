
import 'package:flutter/material.dart';

class PasswordTextField extends StatelessWidget {
	@override
	Widget build(BuildContext context) {
		return TextField(
			obscureText: true,
			decoration: InputDecoration(
				labelText: 'Password',
			),
		);
	}
}
