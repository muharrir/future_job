import 'package:flutter/material.dart';
import 'package:future_job/shared/theme.dart';
import 'package:future_job/ui/widgets/posted_tile.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget imageHeader() {
      return Container(
        height: 270,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img_category6.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Website Developer',
                style: whiteTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '12,309 available',
                style: whiteTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget companies() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Big Companies',
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
            const PostedTile(
              imageUrl: 'assets/img_google.png',
              title: 'Front-End Developer',
              subtitle: 'Google',
            ),
            const PostedTile(
              imageUrl: 'assets/img_instagram.png',
              title: 'UI Designer',
              subtitle: 'Instagram',
            ),
            const PostedTile(
              imageUrl: 'assets/img_facebook.png',
              title: 'Data Scientist',
              subtitle: 'Facebook',
            ),
          ],
        ),
      );
    }

    Widget startups() {
      return Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New Startups',
              style: blackTextStyle.copyWith(fontSize: 16),
            ),
            const PostedTile(
              imageUrl: 'assets/img_google.png',
              title: 'Front-End Developer',
              subtitle: 'Google',
            ),
            const PostedTile(
              imageUrl: 'assets/img_instagram.png',
              title: 'UI Designer',
              subtitle: 'Instagram',
            ),
            const PostedTile(
              imageUrl: 'assets/img_facebook.png',
              title: 'Data Scientist',
              subtitle: 'Facebook',
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            imageHeader(),
            companies(),
            startups(),
          ],
        ),
      ),
    );
  }
}
