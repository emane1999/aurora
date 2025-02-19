import 'package:aurora/core/repository/profile_repo/profile_repository.dart';
import 'package:aurora/core/request_providers/api_client_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'profile_repository_provider.g.dart';

@riverpod
ProfileRepository profileRepository(Ref ref) =>
    ProfileRepository(apiClient: ref.watch(apiClientProvider));
