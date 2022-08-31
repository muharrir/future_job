import 'package:flutter/material.dart';
import 'package:future_job/shared/theme.dart';

class PostedTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const PostedTile({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageUrl,
            width: 45,
            height: 45,
          ),
          const SizedBox(
            width: 28,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                subtitle,
                style: greyTextStyle,
              ),
              const SizedBox(
                height: 18,
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width - 141,
                decoration: BoxDecoration(
                  color: softGreyColor1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
