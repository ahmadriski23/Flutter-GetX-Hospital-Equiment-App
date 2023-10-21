import 'package:get/get.dart';

import '../../../domain/repositories/auth_repository.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final AuthRepository _authRepository = AuthRepository();
  final email = ''.obs;
  final password = ''.obs;
  final passwordVisible = true.obs;

  void login() async {
    final response = await _authRepository.login(email.value, password.value);
    if (response.containsKey('token')) {
      Get.toNamed('/bottom-view');
    } else {
      Get.snackbar('Error', 'Maaf anda gagal login');
    }
  }

  void togglePasswordVisibility() {
    passwordVisible.value = !passwordVisible.value;
  }

  final count = 0.obs;
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
