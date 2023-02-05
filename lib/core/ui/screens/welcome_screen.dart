import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fullproject1/core/assets/app_images.dart';
import 'package:fullproject1/core/theme/app_colors.dart';
import 'package:fullproject1/core/theme/app_fonts.dart';
import 'package:fullproject1/core/ui/screens/login_screen.dart';

import '../widgets/button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages.bg),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(AppImages.tira),
                const Spacer(),
                Text(
                  'Rent your dream car from the Best Company',
                  textAlign: TextAlign.center,
                  style: AppFonts.w600s26.copyWith(color: Colors.white),
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  height: 52,
                  width: 243,
                  child: Button(
                    title: 'Get Started >',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
