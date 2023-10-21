import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../shared/utils/color.dart';
import '../components/profile_component.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () => Get.back(),
            child: const Icon(
              Icons.arrow_back_ios,
              color: AppColors.primaryColor,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              fit: BoxFit.contain,
              'assets/img/cart.png',
              height: 22,
              width: 22,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              fit: BoxFit.contain,
              'assets/img/notif.png',
              height: 22,
              width: 22,
            ),
          ),
        ],
      ),
      body: ProfileComponent(),
    );
  }
}
