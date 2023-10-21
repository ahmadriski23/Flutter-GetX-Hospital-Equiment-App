import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../home/views/home_view.dart';
import '../../profile/views/profile_view.dart';

class BottomViewController extends GetxController {
  //TODO: Implement BottomViewController

  final count = 0.obs;
  final currentIndex = 0.obs;
  void changeTab(int index) {
    currentIndex.value = index;
  }

  final List<Widget> pages = [
    const HomeView(),
    const Center(
      child: Text(
        'Jadwal',
        style: TextStyle(fontSize: 20),
      ),
    ),
    const ProfileView(),
  ];
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
  }

  void increment() => count.value++;
}
