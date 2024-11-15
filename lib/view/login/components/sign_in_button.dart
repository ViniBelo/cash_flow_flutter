import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.onSignInPressed});

  final Function()? onSignInPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: FilledButton(
        style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.black),
        ),
        onPressed: onSignInPressed,
        child: Container(
          width: double.infinity,
          height: 60,
          child: const Center(
              child: Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 24
                ),
              ),
          ),
        )
      ),
    );
  }
}
