import 'package:blog_app/core/theme/color_pallete.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              "Sign Up.",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(
              height: 30,
            ),
            AuthField(hint: "name"),
            SizedBox(
              height: 15,
            ),
            AuthField(hint: "email"),
            SizedBox(
              height: 15,
            ),
            AuthField(hint: "password"),

            SizedBox(
              height: 20,
            ),

            AuthGrandientButton(),
            SizedBox(
              height: 20,
            ),

            RichText(text: TextSpan(
              text: "Don't have a account? ",
              style:Theme.of(context).textTheme.titleMedium,
              children: [
                TextSpan(
                  text: "Sign In",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppPallete.gradient2
                  )

                )
              ]
            ),
            )

          ],
        ),
      ),
    );
  }
}
