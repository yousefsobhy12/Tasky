import 'package:flutter/material.dart';
import 'package:tasky/features/auth/screens/register_screen.dart';
import 'package:tasky/features/auth/widgets/bottom_part.dart';
import 'package:tasky/features/auth/widgets/custom_button.dart';
import 'package:tasky/features/auth/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  static const String pageRoute = 'LoginScreen';
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.12),
                Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xff24252C),
                    fontSize: 32,
                    fontFamily: 'lato',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 53),
                CustomTextAndTextFormField(
                  title: 'Username',
                  hintText: 'Enter your email...',
                  controller: email,
                ),
                SizedBox(height: 26),
                CustomTextAndTextFormField(
                  title: 'Password',
                  hintText: 'Password...',
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility_outlined),
                  ),
                  controller: password,
                ),
                SizedBox(height: 71),
                CustomAuthButton(title: 'Login', onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AuthScreensLowerPart(
        onTap: () {
          Navigator.pushNamed(context, RegisterScreen.pageRoute);
        },
        title: 'Don’t have an account?',
        subTitle: ' Register',
      ),
    );
  }
}
