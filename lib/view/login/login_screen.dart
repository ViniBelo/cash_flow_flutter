import 'package:cash_flow/view/login/components/login_form_field.dart';
import 'package:cash_flow/view/login/components/sign_in_button.dart';
import 'package:cash_flow/view/login/components/titled_divider.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  onSignInPressed() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40),
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
              ),
              const TitledDivider(
                title: 'Login with Socials',
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: (){},
                      style: const ButtonStyle(
                        shape: WidgetStatePropertyAll(CircleBorder()),
                        side: WidgetStatePropertyAll(BorderSide(width: 3))
                      ),
                      child: const Icon(
                        Icons.facebook,
                        color: Colors.black,
                        size: 60,
                      ),
                    ),
                    OutlinedButton(
                      onPressed: (){},
                      style: const ButtonStyle(
                        shape: WidgetStatePropertyAll(CircleBorder()),
                        side: WidgetStatePropertyAll(BorderSide(width: 3))
                      ),
                      child: SizedBox(
                        height: 60,
                        child: Image.network(
                          'http://pngimg.com/uploads/google/google_PNG19635.png',
                          fit:BoxFit.cover,
                          color: Colors.black,
                        ) ,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
