import 'package:blog_app/core/theme/color_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthGrandientButton extends StatelessWidget {
  final String buttonName;
  const AuthGrandientButton({super.key, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.09,
      width: MediaQuery.of(context).size.width,

      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppPallete.gradient1,
            AppPallete.gradient2,

          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight
        ),
        borderRadius: BorderRadius.circular(7)
      ),
      child: ElevatedButton(
          onPressed: (){},
          child: Text(buttonName,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,

          ),
          ),
        style: ElevatedButton.styleFrom(
          backgroundColor: AppPallete.transparentColor,
          shadowColor: AppPallete.transparentColor
        ),

      ),
    );
  }
}
