import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/utils/color.dart';
import '../../../../shared/utils/text_style.dart';

class LayananKhususWidget extends StatelessWidget {
  const LayananKhususWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
          child: Container(
            height: 137,
            width: Get.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 232, 228, 228),
                    blurRadius: 40,
                    offset: Offset(0, 15))
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Layanan Khusus',
                    style: AppText.primaryText.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: Get.width / 2.2,
                    child: Text(
                      'Tes Covid 19, Cegah Corona Sedini Mungkin',
                      style: AppText.primaryText.copyWith(
                        fontSize: 12,
                        color: const Color(0xff597393),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  SizedBox(
                    width: 200,
                    child: Row(
                      children: [
                        Text(
                          'Daftar Tes',
                          style: AppText.primaryText.copyWith(
                            fontSize: 14,
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
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(300, 0, 0, 0),
          child: Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/img/suntik.png'))),
          ),
        ),
      ],
    );
  }
}
