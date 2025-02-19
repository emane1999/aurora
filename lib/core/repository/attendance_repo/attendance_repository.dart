import 'package:aurora/core/client/api_client.dart';

class AttendanceRepository {
  AttendanceRepository({required this.apiClient});
  final ApiClient apiClient;

  Future<dynamic> checkIn(Map<String, dynamic> data) =>
      apiClient.attendanceCheckIn(data: data, token: '');

  Future<dynamic> checkOut(Map<String, dynamic> data) =>
      apiClient.attendanceCheckOut(data: data, token: '');
}
