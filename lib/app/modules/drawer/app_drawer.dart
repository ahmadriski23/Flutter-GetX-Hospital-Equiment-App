import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../shared/utils/color.dart';
import '../../shared/utils/text_style.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(50, 100, 50, 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Angga',
                          style: AppText.primaryText.copyWith(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Praja',
                          style: AppText.primaryText.copyWith(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Membership BBLK',
                      style: AppText.primaryText.copyWith(
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            InkWell(
              onTap: () => Get.toNamed('/profile'),
              child: Row(
                children: [
                  Text(
                    'Profile Saya',
                    style: AppText.grayText.copyWith(
                      fontSize: 12,
                      color: const Color(0xff9A9A9A),
                    ),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Color(0xff9A9A9A),
                    size: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Text(
                  'Pengaturan',
                  style: AppText.grayText.copyWith(
                    fontSize: 12,
                    color: const Color(0xff9A9A9A),
                  ),
                ),
                const SizedBox(
                  width: 50.0,
                ),
                const Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: Color(0xff9A9A9A),
                  size: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            InkWell(
              onTap: () => Get.toNamed('/login'),
              child: Container(
                height: 28,
                width: 131,
                decoration: BoxDecoration(
                  color: AppColors.redColor,
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Center(
                  child: Text(
                    'Logout',
                    style: AppText.grayText
                        .copyWith(fontSize: 11, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            Row(
              children: [
                Text(
                  'Ikuti kami di',
                  style: AppText.primaryText.copyWith(fontSize: 16),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Image.asset(
                  'assets/img/facebook.png',
                  height: 15,
                  width: 15,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Image.asset(
                  'assets/img/instagram.png',
                  height: 15,
                  width: 15,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 5.0,
                ),
                Image.asset(
                  'assets/img/twitter.png',
                  height: 15,
                  width: 15,
                  fit: BoxFit.fill,
                )
              ],
            ),
            const SizedBox(
              height: 75.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FAQ',
                  style: AppText.grayText.copyWith(
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Terms and Condition',
                  style: AppText.grayText.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
