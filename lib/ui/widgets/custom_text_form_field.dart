import 'package:flutter/material.dart';
import 'package:future_job/shared/theme.dart';

class CustomTextFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final EdgeInsets margin;

  const CustomTextFormField({
    Key? key,
    required this.title,
    this.margin = EdgeInsets.zero,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: greyTextStyle.copyWith(fontSize: 16),
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            obscureText: obscureText,
            cursorColor: purpleColor,
            style: blackTextStyle.copyWith(fontSize: 16),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 14,
              ),
              fillColor: softGreyColor,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(100),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
