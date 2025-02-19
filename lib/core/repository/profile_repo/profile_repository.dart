import 'package:aurora/core/client/api_client.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/model/contract_response_model.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_organizational_page/organizational_onfo/model/organizational_response_model.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/models/profile_info_response_model.dart';
import 'package:retrofit/dio.dart';

class ProfileRepository {
  ProfileRepository({required this.apiClient});
  final ApiClient apiClient;

  Future<ProfileInfoResponseModel?> getProfileInfo(String employeeID) =>
      apiClient.getProfileInfo(
        employeeID: employeeID,
        token: 'Bearer 68078f949136e183dfd7aaeb9f9145c28b0f7ed4',
      );

  Future<HttpResponse<ProfileInfoResponseModel?>> updateProfileInfo(
    String employeeID,
  ) => apiClient.updateProfileInfo(employeeID: employeeID);

  Future<HttpResponse<OrganizationalResponseModel?>> getOrgnizationList(
    String dbName,
  ) => apiClient.getOrgnizationList(
    dbName: dbName,
    token: 'Bearer 68078f949136e183dfd7aaeb9f9145c28b0f7ed4',
  );

  Future<HttpResponse<ContractResponseModel?>> getContractInfo(
    String dbName,
    String employeeID,
  ) => apiClient.getContractInfo(
    dbName: dbName,
    employeeID: employeeID,
    token: 'Bearer 4f7635c1d336aac91fe467cef6f08b144f8ecd9e',
  );
}
