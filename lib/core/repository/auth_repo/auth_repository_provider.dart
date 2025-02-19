import 'package:aurora/core/repository/auth_repo/auth_repository.dart';
import 'package:aurora/core/request_providers/api_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) =>
    AuthRepository(apiClient: ref.watch(apiClientProvider));
