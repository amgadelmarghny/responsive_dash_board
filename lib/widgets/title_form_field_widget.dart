import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class TitleFormFieldWidget extends StatelessWidget {
  const TitleFormFieldWidget({
    super.key,
    required this.title,
    required this.hintText,
  });
  final String title, hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hintText: hintText,
        ),
      ],
    );
  }
}
