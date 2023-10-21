import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/app/modules/login/controllers/login_controller.dart';

import '../../../shared/utils/color.dart';
import '../../../shared/utils/text_style.dart';

class LoginTextForm extends GetView<LoginController> {
  const LoginTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email',
            style: AppText.primaryText
                .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 25,
                    color: Colors.grey.shade200,
                    offset: const Offset(0, 5)),
              ],
            ),
            child: TextField(
              onChanged: (value) => controller.email.value = value,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Masukkan email anda',
                hintStyle: AppText.blackText.copyWith(fontSize: 12),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide:
                      BorderSide(width: 0.5, color: AppColors.primaryColor),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Password',
                style: AppText.primaryText
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                'Lupa Password anda ?',
                style: AppText.primaryText.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            height: 70,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 25,
                    color: Colors.grey.shade200,
                    offset: const Offset(0, 5)),
              ],
            ),
            child: TextField(
              obscureText: !controller.passwordVisible.value,
              onChanged: (value) => controller.password.value = value,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                    onTap: () => controller.togglePasswordVisibility(),
                    child: controller.passwordVisible.value
                        ? const Icon(
                            Icons.visibility,
                            color: AppColors.primaryColor,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: AppColors.grayColor,
                          )),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Masukkan password anda',
                hintStyle: AppText.blackText.copyWith(fontSize: 12),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide:
                      BorderSide(width: 0.5, color: AppColors.primaryColor),
                ),
                disabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(width: 0.5, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () => controller.login(),
            child: Container(
              height: 48,
              width: Get.width,
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Login',
                      style: AppText.grayText.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
