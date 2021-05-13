import 'package:flutter/material.dart';
import '../../../app/routes/routes.dart';
import '../../../app/routes/routes.dart';
import '../../../app/shared/colors.dart';
import '../../../app/shared/dimensions.dart';
import '../../widgets/button.dart';

final emailController = TextEditingController();
final nameController = TextEditingController();
final passwordController = TextEditingController();

class CustomTextField extends StatelessWidget {
  final bool hideText;
  final String hintText;
  final TextEditingController textEditingController;
  const CustomTextField(
      {@required this.textEditingController, this.hideText, this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      obscureText: hideText,
      style: TextStyle(
        fontFamily: 'Montserrat',
        color: whiteColor,
        fontWeight: FontWeight.bold,
        fontSize: 14.0,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: 'Montserrat',
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 14.0,
        ),
        border: OutlineInputBorder(),
      ),
    );
  }
}

class SingupCredentialBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height: 400.0,
      child: Column(
        children: [
          CustomTextField(
            hideText: false,
            hintText: "username",
            textEditingController: nameController,
          ),
          vSizedBox2,
          CustomTextField(
            hideText: false,
            hintText: "Phone or email",
            textEditingController: emailController,
          ),
          vSizedBox2,
          CustomTextField(
            hideText: true,
            hintText: "Password",
            textEditingController: passwordController,
          ),
          vSizedBox2,
          LoginButton(
            buttonColor: blueColor,
            buttonText: "Log in",
            borderColor: blueColor,
            onPressed: null,
          ),
          vSizedBox3,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                  text: TextSpan(children: <TextSpan>[
                TextSpan(
                  text: "Already have an Account?",
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: blueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
              ])),
              GestureDetector(
                onTap: () => Navigator.of(context).pushNamed(LoginRoute),
                child: RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "Log in",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: blueColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ])),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
