import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../components/register_component.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: RegisterComponent(),
    );
  }
}
