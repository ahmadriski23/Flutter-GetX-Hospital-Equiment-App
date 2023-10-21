import '../../service/api_service.dart';

class AuthRepository {
  final ApiService _apiService = ApiService();

  Future<Map<String, dynamic>> login(String email, String password) {
    return _apiService.login(email, password);
  }
}
