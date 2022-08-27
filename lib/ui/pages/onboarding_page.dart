import 'package:flutter/material.dart';
import 'package:future_job/shared/theme.dart';
import 'package:future_job/ui/pages/sign_in_page.dart';
import 'package:future_job/ui/pages/sign_up_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/img_onboarding.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 50,
              bottom: 50,
              left: 30,
              right: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Build Your Next\nFuture Career Like\na Master',
                  style: whiteTextStyle.copyWith(
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '18,000 jobs available',
                  style: whiteTextStyle,
                ),
                const Spacer(),
                Center(
                  child: Column(
                    children: [
                      Container(
                        width: 200,
                        height: 45,
                        margin: const EdgeInsets.only(bottom: 16),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpPage()),
                            );
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: whiteColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(66),
                            ),
                          ),
                          child: Text(
                            'Get Started',
                            style: purpleTextStyle.copyWith(
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 200,
                        height: 45,
                        margin: const EdgeInsets.only(bottom: 16),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignInPage()),
                            );
                          },
                          style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                color: whiteColor,
                              ),
                              borderRadius: BorderRadius.circular(66),
                            ),
                          ),
                          child: Text(
                            'Sign In',
                            style: whiteTextStyle.copyWith(
                              fontWeight: semiBold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
