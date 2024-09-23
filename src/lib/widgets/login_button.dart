
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
	final VoidCallback? onPressed;
	final bool isEnabled;

	const LoginButton({
		Key? key,
		this.onPressed,
		this.isEnabled = true,
	}) : super(key: key);

	@override
	Widget build(BuildContext context) {
		return ElevatedButton(
			onPressed: isEnabled ? onPressed : null,
			child: const Text('Login'),
		);
	}
}
