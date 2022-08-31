import 'package:flutter/material.dart';
import 'package:future_job/shared/theme.dart';
import 'package:future_job/ui/widgets/categories_card.dart';
import 'package:future_job/ui/widgets/posted_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'Jason Powell',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              width: 58,
              height: 58,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: purpleColor,
                ),
              ),
              child: Container(
                width: 50,
                height: 50,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/img_profile.png'),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                bottom: 16,
              ),
              child: Text(
                'Hot Categories',
                style: blackTextStyle.copyWith(fontSize: 16),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  CategoriesCard(
                    imageUrl: 'assets/img_category1.png',
                    title: 'Website Developer',
                    margin: EdgeInsets.only(
                      left: 24,
                    ),
                  ),
                  CategoriesCard(
                    imageUrl: 'assets/img_category2.png',
                    title: 'Mobile Developer',
                    margin: EdgeInsets.only(
                      left: 16,
                    ),
                  ),
                  CategoriesCard(
                    imageUrl: 'assets/img_category3.png',
                    title: 'App Designer',
                    margin: EdgeInsets.only(
                      left: 16,
                    ),
                  ),
                  CategoriesCard(
                    imageUrl: 'assets/img_category4.png',
                    title: 'Content Writer',
                    margin: EdgeInsets.only(
                      left: 16,
                    ),
                  ),
                  CategoriesCard(
                    imageUrl: 'assets/img_category5.png',
                    title: 'Video Grapher',
                    margin: EdgeInsets.only(
                      left: 16,
                      right: 24,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget posted() {
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Just Posted',
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
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          backgroundColor: whiteColor,
          selectedItemColor: blackColor,
          unselectedItemColor: greyColor,
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/ic_home.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/ic_notification.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/ic_love.png',
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(
                  'assets/ic_profile.png',
                ),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            header(),
            categories(),
            posted(),
          ],
        ),
      ),
    );
  }
}
