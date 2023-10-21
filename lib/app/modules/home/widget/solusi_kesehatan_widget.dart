import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/utils/color.dart';
import '../../../shared/utils/text_style.dart';

class SolusiKesehatanWidget extends StatelessWidget {
  const SolusiKesehatanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
        child: Container(
          height: 150,
          width: Get.width,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 232, 228, 228),
                  blurRadius: 40,
                  offset: Offset(0, 15))
            ],
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/img/border-home.png'),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Solusi,',
                      style: AppText.primaryText.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Kesehatan Anda',
                      style: AppText.primaryText.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: Get.width / 2,
                  child: Text(
                    'Update informasi seputar kesehatan semua bisa disini !',
                    style: AppText.primaryText.copyWith(
                      fontSize: 12,
                      color: const Color(0xff597393),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 32,
                      width: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          'Selengkapnya',
                          style: AppText.grayText.copyWith(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 8,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(
                          width: 8.0,
                        ),
                        Container(
                          height: 8,
                          width: 8,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(300, 0, 0, 0),
        height: 150,
        width: 150,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/img/calendar.png'))),
      ),
    ]);
  }
}
