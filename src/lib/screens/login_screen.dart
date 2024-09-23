
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_auth_app/widgets/email_text_field.dart';
import 'package:simple_auth_app/widgets/password_text_field.dart';
import 'package:simple_auth_app/widgets/login_button.dart';
import 'package:simple_auth_app/cubits/login_cubit.dart';

class LoginScreen extends StatefulWidget {
	@override
	_LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Login'),
			),
			body: Padding(
				padding: const EdgeInsets.all(16.0),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						EmailTextField(),
						SizedBox(height: 16),
						PasswordTextField(),
						SizedBox(height: 16),
						LoginButton(),
					],
				),
			),
		);
	}
}
