import 'package:flutter/material.dart';
import 'package:vascomm_app/app/shared/utils/text_style.dart';

import '../utils/color.dart';

class CopyrightWidget extends StatelessWidget {
  const CopyrightWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.copyright,
          color: AppColors.grayColor,
          size: 16,
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          'SILK. all right reserved',
          style: AppText.grayText.copyWith(
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
