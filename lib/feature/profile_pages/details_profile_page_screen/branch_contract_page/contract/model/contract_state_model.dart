import 'package:aurora/core/api_result_state.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/model/contract_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contract_state_model.freezed.dart';
part 'contract_state_model.g.dart';

@freezed
class ContractStateModel with _$ContractStateModel {
  const factory ContractStateModel({
    @Default(APIResultState.initial) APIResultState apiResultState,
    @Default("") String errorMessage,
    ContractResponseModel? response,
  }) = _ContractStateModel;

  factory ContractStateModel.fromJson(Map<String, dynamic> json) =>
      _$ContractStateModelFromJson(json);
}
