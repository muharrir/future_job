import 'dart:async';

import 'package:flutter/material.dart';
import 'package:future_job/shared/theme.dart';
import 'package:future_job/ui/pages/onboarding_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const OnboardingPage())));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: purpleColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 59,
              height: 76,
              margin: const EdgeInsets.only(bottom: 50),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_logo.png',
                  ),
                ),
              ),
            ),
            Text(
              'FUTUREJOB',
              style: whiteTextStyle.copyWith(
                fontSize: 32,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
