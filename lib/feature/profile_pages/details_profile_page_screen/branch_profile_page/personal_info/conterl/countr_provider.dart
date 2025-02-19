import 'package:aurora/core/repository/profile_repo/profile_repository_provider.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/models/profile_info_response_model.dart';
import 'package:bond_form/bond_form.dart';
import 'package:bond_form_riverpod/bond_form_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'countr_provider.g.dart';

class CountrProvider extends AutoDisposeFormStateNotifier<String, Error> {
  @override
  Map<String, FormFieldState> fields() => {
    'MobileNumber': TextFieldState(
      null,
      label: "",
      rules: [Rules.required(), Rules.minLength(9), Rules.numeric()],
    ),
  };

  @override
  Future<String> onSubmit() async {
    final mobileNumber = state.get('MobileNumber').value;
    await Future.delayed(const Duration(seconds: 1));
    if (mobileNumber != '777222189') {
      ref
          .read(CountrProviders.notifier)
          .setError('MobileNumber', 'mobile incorret');
      throw Error();
    }
    return 'Success';
  }
}

final CountrProviders =
    NotifierProvider.autoDispose<CountrProvider, BondFormState<String, Error>>(
      CountrProvider.new,
    );

@riverpod
FutureOr<ProfileInfoResponseModel?> getProfileData(
  Ref ref,
  String employeeID,
) async {
  try {
    ProfileInfoResponseModel? result = await ref
        .read(profileRepositoryProvider)
        .getProfileInfo(employeeID);
    print('final');
    // ProfileInfoResponseModel? profileInfoResponseModel = result.data;

    return result;
  } catch (e, trace) {
    // update UI

    // also return
    print(e.toString());
    return null;
  }
}
