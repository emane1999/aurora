import 'package:aurora/core/repository/attendance_repo/attendance_repository.dart';
import 'package:aurora/core/request_providers/api_client_provider.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'attendance_repo_provider.g.dart';

@riverpod
AttendanceRepository attendanceRepository(Ref ref) =>
    AttendanceRepository(apiClient: ref.watch(apiClientProvider));
