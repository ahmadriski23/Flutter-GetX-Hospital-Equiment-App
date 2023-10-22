import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/app/modules/profile/widget/profile_card.dart';
import 'package:vascomm_app/app/modules/profile/widget/profile_textform.dart';

import '../../../shared/utils/color.dart';
import '../../../shared/utils/text_style.dart';
import '../../../shared/widgets/next_notif.dart';
import '../controllers/profile_controller.dart';

class ProfileComponent extends GetView<ProfileController> {
  const ProfileComponent({super.key});

  @override
  Widget build(BuildContext context) {
    final profileController = Get.put(ProfileController());

    return Obx(
      () => SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            Center(
              child: Container(
                width: 320,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 30,
                        color: Colors.grey.shade200,
                        offset: const Offset(1, 15))
                  ],
                ),
                height: 40,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: profileController.type.map((type) {
                      final isSelected =
                          profileController.selectedTypeProfile == type;
                      return GestureDetector(
                        onTap: () {
                          profileController.selectedType(type);
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 0, 5),
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 500),
                            width: 150,
                            height: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: isSelected
                                    ? AppColors.secondaryColor
                                    : Colors.white),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              child: Center(
                                child: Text(
                                  type,
                                  style: AppText.blackText.copyWith(
                                      color: isSelected
                                          ? AppColors.primaryColor
                                          : AppColors.primaryColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList()),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Stack(
              children: [
                // * text form field
                ProfileTextForm(),
                // * card user
                ProfileCard(),
              ],
            ),
            const SizedBox(
              height: 40.0,
            ),
            // * bottom notif
            const NextNotification(),
          ],
        ),
      ),
    );
  }
}
