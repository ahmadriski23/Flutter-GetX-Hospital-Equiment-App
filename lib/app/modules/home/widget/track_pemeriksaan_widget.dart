import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/utils/color.dart';
import '../../../shared/utils/text_style.dart';

class TrackPemeriksaanWidget extends StatelessWidget {
  const TrackPemeriksaanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
          child: Container(
            height: 135,
            width: Get.width,
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 232, 228, 228),
                    blurRadius: 40,
                    offset: Offset(0, 15)),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(120, 10, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Track Pemeriksaan',
                    style: AppText.primaryText.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  SizedBox(
                    width: Get.width / 1.5,
                    child: Text(
                      'Kamu dapat mengecek progress pemeriksaan mu disini',
                      style: AppText.primaryText.copyWith(
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Track',
                        style: AppText.primaryText.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      const Icon(
                        Icons.arrow_forward,
                        color: AppColors.primaryColor,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Container(
            width: 80,
            height: 66,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/kaca-pembesar.png'))),
          ),
        )
      ],
    );
  }
}
