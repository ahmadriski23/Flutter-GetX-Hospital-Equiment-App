import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/app/modules/home/controllers/home_controller.dart';

import '../../../shared/utils/color.dart';
import '../../../shared/utils/text_style.dart';

class PaketPemeriksaanCard extends GetView<HomeController> {
  const PaketPemeriksaanCard({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return SizedBox(
      height: 600,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: homeController.layanan.length - 2,
          itemBuilder: (context, index) {
            final layanan = homeController.layanan[index];
            return Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              height: 170,
              width: Get.width,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 30,
                    offset: const Offset(1, 15),
                  ),
                ],
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: Get.width / 1.6,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 8, 0, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              layanan.name,
                              style: AppText.primaryText.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              layanan.duration,
                              style: AppText.primaryText.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Rp. ${layanan.price.toStringAsFixed(5)}',
                              style: AppText.orangeText.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/img/hospital.png',
                                  height: 14,
                                  width: 14,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  layanan.place,
                                  style: AppText.grayText.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.place,
                                  color: AppColors.primaryColor,
                                  size: 14,
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  layanan.location,
                                  style: AppText.grayText.copyWith(
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 119,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(layanan.image),
                      ),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
