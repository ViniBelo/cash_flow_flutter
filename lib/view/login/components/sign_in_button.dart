import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({super.key, required this.onSignInPressed});

  final Function()? onSignInPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40, bottom: 20),
      child: FilledButton(
        style: ButtonStyle(
          backgroundColor: const WidgetStatePropertyAll(Colors.black),
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            )
          )
        ),
        onPressed: onSignInPressed,
        child: const SizedBox(
          width: double.infinity,
          height: 60,
          child: Center(
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
