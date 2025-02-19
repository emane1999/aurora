import 'package:aurora/core/repository/profile_repo/profile_repository_provider.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/model/contract_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'contract_provider.g.dart';

@riverpod
FutureOr<HttpResponse<ContractResponseModel?>> getContractInfo(Ref ref) async {
  try {
    HttpResponse<ContractResponseModel?> result = await ref
        .read(profileRepositoryProvider)
        .getContractInfo('Hr_System_1', '17');

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
