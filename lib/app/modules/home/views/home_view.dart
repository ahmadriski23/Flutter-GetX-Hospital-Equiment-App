import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:vascomm_app/app/modules/drawer/app_drawer.dart';
import 'package:vascomm_app/app/modules/home/components/home_component.dart';
import 'package:vascomm_app/app/shared/utils/color.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (context) => InkWell(
            onTap: () => Scaffold.of(context).openDrawer(),
            child: const Icon(
              Icons.menu,
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
      drawer: const AppDrawer(),
      body: const HomeComponent(),
    );
  }
}
