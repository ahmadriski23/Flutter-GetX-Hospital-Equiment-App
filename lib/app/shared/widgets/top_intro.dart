import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class TopIntro extends StatelessWidget {
  final String intro;
  const TopIntro({super.key, required this.intro});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 40.0,
        ),
        Row(
          children: [
            Text(
              'Hai,',
              style: AppText.primaryText
                  .copyWith(fontSize: 28, fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              width: 5.0,
            ),
            Flexible(
              child: Text(
                textAlign: TextAlign.left,
                ' Selamat Datang',
                style: AppText.primaryText.copyWith(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        Text(
          intro,
          style: AppText.primaryText.copyWith(
            fontSize: 12,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 218,
            width: 331,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/img/login-image.png'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
