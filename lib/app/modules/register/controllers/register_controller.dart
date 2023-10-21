import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  //TODO: Implement RegisterController
  final count = 0.obs;
  final namaDepanController = TextEditingController();
  final namaBelakangController = TextEditingController();
  final noKtpController = TextEditingController();
  final emailController = TextEditingController();
  final noTelpController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final passwordVisible = true.obs;
  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    namaDepanController.dispose();
    namaBelakangController.dispose();
    noKtpController.dispose();
    emailController.dispose();
    noTelpController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  void increment() => count.value++;
}
