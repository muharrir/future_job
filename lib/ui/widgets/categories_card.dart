import 'package:flutter/material.dart';
import 'package:future_job/shared/theme.dart';
import 'package:future_job/ui/pages/categories_page.dart';

class CategoriesCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final EdgeInsets margin;

  const CategoriesCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CategoriesPage()));
      },
      child: Container(
        width: 150,
        height: 200,
        margin: margin,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              imageUrl,
            ),
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              title,
              style: whiteTextStyle.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
