import 'package:cash_flow/view/login/components/login_form_field.dart';
import 'package:cash_flow/view/login/components/sign_in_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  onSignInPressed() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(46),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 60, bottom: 60),
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 48
                ),
              ),
            ),
            const LoginFormField(
              labelText: "Email",
              prefixIcon: Icon(Icons.email_sharp),
            ),
            const LoginFormField(
              labelText: "Password",
              prefixIcon: Icon(Icons.lock),
              obscureText: true,
            ),
            SignInButton(
              onSignInPressed: onSignInPressed,
            )
          ],
        ),
      ),
    );
  }
}
