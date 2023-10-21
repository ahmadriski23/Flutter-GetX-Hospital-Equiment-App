import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascomm_app/app/modules/register/controllers/register_controller.dart';

import '../../../shared/utils/color.dart';
import '../../../shared/utils/text_style.dart';

class RegisterTextForm extends GetView<RegisterController> {
  const RegisterTextForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 110,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Depan',
                        style: AppText.primaryText.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 70,
                        width: Get.width / 2,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 25,
                                color: Colors.grey.shade200,
                                offset: const Offset(0, 5)),
                          ],
                        ),
                        child: TextField(
                          controller: controller.namaDepanController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'John',
                            hintStyle: AppText.blackText.copyWith(fontSize: 12),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  width: 0.5, color: AppColors.primaryColor),
                            ),
                            disabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(width: 0.5, color: Colors.white),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(width: 0.5, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nama Belakang',
                        style: AppText.primaryText.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        height: 70,
                        width: Get.width / 2,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 25,
                                color: Colors.grey.shade200,
                                offset: const Offset(0, 5)),
                          ],
                        ),
                        child: TextField(
                          controller: controller.namaBelakangController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Doe',
                            hintStyle: AppText.blackText.copyWith(fontSize: 12),
                            border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(
                                  width: 0.5, color: AppColors.primaryColor),
                            ),
                            disabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(width: 0.5, color: Colors.white),
                            ),
                            enabledBorder: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide:
                                  BorderSide(width: 0.5, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            'No. KTP',
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
              controller: controller.noKtpController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Masukkan No. KTP anda',
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
              controller: controller.emailController,
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
          Text(
            'No. Telpon',
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
              controller: controller.noTelpController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Masukkan no telepon anda',
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
          Text(
            'Password',
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
              controller: controller.passwordController,
              obscureText: !controller.passwordVisible.value,
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
          Text(
            'Konfirmasi Password',
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
              controller: controller.confirmPasswordController,
              obscureText: !controller.passwordVisible.value,
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
                hintText: 'Konfirmasi password anda',
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
            onTap: () {},
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
                      'Register',
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
