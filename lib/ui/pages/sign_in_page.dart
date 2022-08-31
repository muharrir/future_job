import 'package:flutter/material.dart';
import 'package:future_job/shared/theme.dart';
import 'package:future_job/ui/pages/home_page.dart';
import 'package:future_job/ui/pages/sign_up_page.dart';
import 'package:future_job/ui/widgets/custom_text_form_field.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign In',
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Build Your Career',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    Widget image() {
      return Container(
        width: 260,
        height: 240,
        margin: const EdgeInsets.only(top: 40),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/img_signin.png',
            ),
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return const CustomTextFormField(
          title: 'Email Address',
          margin: EdgeInsets.only(bottom: 20),
        );
      }

      Widget passwordInput() {
        return const CustomTextFormField(
          title: 'Password',
          obscureText: true,
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 40),
        child: Column(
          children: [
            emailInput(),
            passwordInput(),
          ],
        ),
      );
    }

    Widget buttonSection() {
      return Container(
        margin: const EdgeInsets.only(
          top: 40,
          bottom: 30,
        ),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 45,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: purpleColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(66),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: Text(
                  'Sign In',
                  style: whiteTextStyle.copyWith(fontWeight: semiBold),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpPage()));
              },
              child: Text(
                'Create New Account',
                style: greyTextStyle.copyWith(fontWeight: light),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          children: [
            title(),
            image(),
            inputSection(),
            buttonSection(),
          ],
        ),
      ),
    );
  }
}
