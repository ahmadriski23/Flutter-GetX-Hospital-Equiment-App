import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/app/shared/widgets/top_intro.dart';
import '../../../shared/utils/text_style.dart';
import '../../../shared/widgets/copyright.dart';
import '../controllers/login_controller.dart';
import '../widget/login_texform.dart';

class LoginComponent extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // * widget intro
            const TopIntro(intro: 'Silahkan login untuk melanjutkan'),
            const SizedBox(
              height: 10.0,
            ),
            // * login text form field
            const LoginTextForm(),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum punya akun ?',
                  style: AppText.grayText.copyWith(
                    fontSize: 14,
                  ),
                ),
                const SizedBox(
                  width: 5.0,
                ),
                InkWell(
                  onTap: () => Get.toNamed('/register'),
                  child: Text(
                    'Daftar sekarang',
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
