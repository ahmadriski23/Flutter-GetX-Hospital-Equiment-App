import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/login_component.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: LoginComponent());
  }
}
