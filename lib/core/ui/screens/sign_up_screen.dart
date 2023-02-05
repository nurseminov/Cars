import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fullproject1/core/assets/app_images.dart';
import 'package:fullproject1/core/theme/app_colors.dart';
import 'package:fullproject1/core/theme/app_fonts.dart';
import 'package:fullproject1/core/ui/screens/login_screen.dart';
import 'package:fullproject1/core/ui/widgets/custom_text_field.dart';

import '../widgets/app_button.dart';
import '../widgets/app_button_2.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  String? errorText;
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: AppFonts.w400s48,
            ),
            const SizedBox(
              height: 80,
            ),
            CustomTextField(
              errorText: errorText,
              text: 'FULL NAME',
              hintText: 'Lorem Ipsum',
              controller: controllerEmail,
              onChanged: (val) {},
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextField(
              errorText: errorText,
              text: 'EMAIL',
              hintText: 'Loremipsum@gmail.com',
              controller: controllerEmail,
              onChanged: (val) {
                if (val.contains('@')) {
                  errorText = null;
                } else {
                  errorText = 'Введите корректный email';
                }
                setState(() {});
              },
            ),
            const SizedBox(
              height: 18,
            ),
            CustomTextField(
              text: 'PASSWORD',
              hintText: '••••••••',
              controller: controllerPassword,
              obscureText: isPassword,
              suffix: IconButton(
                onPressed: () {
                  isPassword = !isPassword;
                  setState(() {});
                },
                icon: Icon(
                  isPassword ? Icons.remove_red_eye : Icons.visibility_off,
                  color: AppColors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            AppButton(
              title: 'Log In',
              onPressed: () {},
            ),
            const SizedBox(
              height: 9,
            ),
            const Center(
              child: Text(
                'OR',
                style: AppFonts.w300s16,
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            AppButton2(
              image: AppImages.google,
              title: 'Continue With Google',
              onPressed: () {},
            ),
            const SizedBox(
              height: 13,
            ),
            AppButton2(
              image: AppImages.fb,
              title: 'Continue With Facebook',
              onPressed: () {},
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                const Text(
                  'Have an account yet?',
                  style: AppFonts.w300s15,
                ),
                const Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'sign in'.toUpperCase(),
                    style: AppFonts.w700s13.copyWith(
                        color: AppColors.yellow, fontStyle: FontStyle.italic),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
