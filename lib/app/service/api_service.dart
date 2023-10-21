import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio();
  final String baseUrl = 'https://reqres.in/api';

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final response = await _dio.post('$baseUrl/login', data: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Login failed');
      }
    } catch (error) {
      throw Exception('Login failed');
    }
  }
}
