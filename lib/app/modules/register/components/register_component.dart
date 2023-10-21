import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/app/modules/register/widget/register_textform.dart';
import 'package:vascomm_app/app/shared/widgets/top_intro.dart';

import '../../../shared/utils/text_style.dart';
import '../../../shared/widgets/copyright.dart';
import '../controllers/register_controller.dart';

class RegisterComponent extends GetView<RegisterController> {
  const RegisterComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 50, 15, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // * top intro
            const TopIntro(intro: 'Silahkan registrasi untuk melanjutkan'),
            const SizedBox(
              height: 10.0,
            ),
            // * register text form field
            const RegisterTextForm(),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sudah punya akun ?',
                  style: AppText.grayText.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                InkWell(
                  onTap: () => Get.toNamed('/login'),
                  child: Text(
                    'Login sekarang',
                    style: AppText.primaryText.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            // * copyright widget
            const CopyrightWidget(),
          ],
        ),
      ),
    );
  }
}
