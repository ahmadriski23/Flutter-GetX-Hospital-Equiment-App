import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/utils/color.dart';
import '../../../shared/utils/text_style.dart';
import '../controllers/profile_controller.dart';

class ProfileCard extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 150,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/img/oval.png',
                  height: 180,
                  width: 190,
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  'assets/img/ornamen.png',
                  height: 44,
                  width: 44,
                  fit: BoxFit.fill,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 120, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/img/profile.png',
                    height: 40,
                    width: 40,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Angga',
                            style: AppText.grayText.copyWith(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Praja',
                            style: AppText.grayText.copyWith(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Membership BBLK',
                        style: AppText.grayText.copyWith(
                          color: Colors.white54,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 105, 0, 0),
              child: Container(
                height: 48,
                width: Get.width,
                decoration: BoxDecoration(
                  color: const Color(0xff1A3E78),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Center(
                    child: Text(
                      'Lengkapi profile anda untuk memaksimalkan penggunaan aplikasi',
                      style: AppText.grayText.copyWith(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
