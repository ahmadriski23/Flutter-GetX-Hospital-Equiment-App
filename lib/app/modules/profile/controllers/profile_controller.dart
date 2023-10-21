import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController

  final count = 0.obs;
  final namaDepanController = TextEditingController();
  final namaBelakangController = TextEditingController();
  final noKtpController = TextEditingController();
  final emailController = TextEditingController();
  final noTelpController = TextEditingController();

  final selectedTypeProfile = 'Profile Saya'.obs;
  final type = [
    'Profile Saya',
    'Pengaturan',
  ];
  void selectedType(String type) {
    selectedTypeProfile.value = type;
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
  }

  void increment() => count.value++;
}
