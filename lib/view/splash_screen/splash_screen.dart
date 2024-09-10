import 'package:flutter/material.dart';
import 'package:sample_29/utils/constants/color_constants.dart';
import 'package:sample_29/utils/constants/image_constants.dart';
import 'package:sample_29/view/bottomnavbarscreen/bottomnavbarscreen.dart';
import 'package:sample_29/view/homescreen/homescreen.dart';
import 'package:sample_29/view/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => OnboardingScreen(),
            ));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.PRIMARY_COLOR,
      body: Center(
        child: Image.asset(ImageConstants.SPLASH_sCREEN),
      ),
    );
  }
}
