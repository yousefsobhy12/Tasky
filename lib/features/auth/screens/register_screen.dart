import 'package:flutter/material.dart';
import 'package:tasky/features/auth/widgets/bottom_part.dart';
import 'package:tasky/features/auth/widgets/custom_button.dart';
import 'package:tasky/features/auth/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  static const String pageRoute = 'RegisterScreen';
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.12),
                Text(
                  'Register',
                  style: TextStyle(
                    color: Color(0xff24252C),
                    fontSize: 32,
                    fontFamily: 'lato',
                    fontWeight: FontWeight.w800,
                  ),
                ),
                SizedBox(height: 23),
                CustomTextAndTextFormField(
                  title: 'Email',
                  hintText: 'Enter your email...',
                  controller: email,
                ),
                SizedBox(height: 26),
                CustomTextAndTextFormField(
                  title: 'Password',
                  hintText: 'Password...',
                  controller: password,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility_outlined),
                  ),
                ),
                SizedBox(height: 26),
                CustomTextAndTextFormField(
                  title: 'Confirm Password',
                  hintText: 'Password...',
                  controller: confirmPassword,
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility_outlined),
                  ),
                ),
                SizedBox(height: 41),
                CustomAuthButton(title: 'Register', onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: AuthScreensLowerPart(
        title: 'Already have an account?',
        subTitle: ' Login',
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
