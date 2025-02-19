import 'package:aurora/core/repository/profile_repo/profile_repository_provider.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_organizational_page/organizational_onfo/model/organizational_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'org_provider.g.dart';

@riverpod
FutureOr<HttpResponse<OrganizationalResponseModel?>> getOrgData(Ref ref) async {
  try {
    HttpResponse<OrganizationalResponseModel?> result = await ref
        .read(profileRepositoryProvider)
        .getOrgnizationList('Hr_System_1');
    print('final');
    // ProfileInfoResponseModel? profileInfoResponseModel = result.data;

    return result;
  } catch (e, trace) {
    // update UI

    // also return
    print(e.toString());
    throw Error();
    // return null;
  }
}
