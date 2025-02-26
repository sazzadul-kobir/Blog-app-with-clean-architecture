import 'package:blog_app/core/theme/color_pallete.dart';
import 'package:blog_app/features/auth/presentation/pages/sign_in.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  static route()=>MaterialPageRoute(
    builder: (context) {
      return SignUpPage();
    },
  );
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final nameController=TextEditingController();
  final emailController=TextEditingController();
  final passwordController=TextEditingController();

  final formKey=GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
                    "Sign Up.",
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  AuthField(hint: "name", controller: nameController,),
                  SizedBox(
                    height: 15,
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
              
                  AuthGrandientButton(buttonName: "Sign up",),
                  SizedBox(
                    height: 20,
                  ),
              
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, SignInPage.route());
                    },
                    child: RichText(text: TextSpan(
                      text: "have a account? ",
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
