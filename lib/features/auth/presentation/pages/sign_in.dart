import 'package:blog_app/core/theme/color_pallete.dart';
import 'package:blog_app/features/auth/presentation/pages/sign_up_page.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {

  static route()=>MaterialPageRoute(
    builder: (context) {
      return SignInPage();
    },
  );

  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {


  final emailController=TextEditingController();
  final passwordController=TextEditingController();

  final formKey=GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text(
                    "Sign In.",
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),

                  AuthField(hint: "email",controller: emailController,),
                  SizedBox(
                    height: 15,
                  ),
                  AuthField(
                    hint: "password",controller: passwordController,
                    ObsecureText: true,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  AuthGrandientButton(buttonName: "Sign In",),
                  SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,SignUpPage.route());
                    },
                    child: RichText(text: TextSpan(
                        text: "Don't have a account? ",
                        style:Theme.of(context).textTheme.titleMedium,
                        children: [
                          TextSpan(
                              text: "Sign Up",
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppPallete.gradient2
                              )

                          )
                        ]
                    ),
                    ),
                  )

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
