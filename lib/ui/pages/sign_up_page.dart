import 'package:flutter/material.dart';
import 'package:future_job/shared/theme.dart';
import 'package:future_job/ui/pages/sign_in_page.dart';
import 'package:future_job/ui/widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Sign Up',
              style: greyTextStyle.copyWith(fontSize: 16),
            ),
            const SizedBox(
              height: 2,
            ),
            Text(
              'Begin New Journey',
              style: blackTextStyle.copyWith(
                fontSize: 24,
                fontWeight: semiBold,
              ),
            ),
          ],
        ),
      );
    }

    Widget uploadImage() {
      return Container(
        width: 120,
        height: 120,
        margin: const EdgeInsets.only(
          top: 50,
        ),
        decoration: const BoxDecoration(
          // border: Border.all(
          //   color: purpleColor,
          //   width: 2,
          // ),
          // shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(
              'assets/img_upload_pic.png',
            ),
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return const CustomTextFormField(
          title: 'Full Name',
          margin: EdgeInsets.only(bottom: 20),
        );
      }

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
          margin: EdgeInsets.only(bottom: 20),
        );
      }

      Widget goalInput() {
        return const CustomTextFormField(
          title: 'Your Goal',
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            goalInput(),
          ],
        ),
      );
    }

    Widget buttonSection() {
      return Container(
        margin: const EdgeInsets.only(
          top: 40,
          bottom: 35,
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
                onPressed: () {},
                child: Text(
                  'Sign Up',
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
                        builder: (context) => const SignInPage()));
              },
              child: Text(
                'Back to Sign In',
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
            uploadImage(),
            inputSection(),
            buttonSection(),
          ],
        ),
      ),
    );
  }
}
