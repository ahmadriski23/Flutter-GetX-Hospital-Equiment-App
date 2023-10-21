import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/color.dart';
import '../utils/text_style.dart';

class NextNotification extends StatelessWidget {
  const NextNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/img/oval.png',
                width: 180,
                height: Get.height,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 120.0,
              ),
              Image.asset(
                'assets/img/ornamen.png',
                width: 40,
                height: 40,
                fit: BoxFit.fill,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: Get.width / 2.3,
                      child: Text(
                        'Ingin mendapat update dari kami ?',
                        style: AppText.grayText.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: Get.width / 4,
                          child: Text(
                            'Dapatkan notifikasi',
                            style: AppText.grayText
                                .copyWith(fontSize: 14, color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 16,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
