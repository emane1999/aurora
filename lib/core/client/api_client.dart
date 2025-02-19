import 'dart:io';

import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/model/contract_response_model.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_organizational_page/organizational_onfo/model/organizational_response_model.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/models/profile_info_response_model.dart';
import 'package:aurora/feature/verification_ALL_Page/login_Page/model/login_resposnse_model.dart';
import 'package:aurora/feature/verification_ALL_Page/verification/model/verification_state_model.dart';
import 'package:aurora/feature/verification_ALL_Page/work_space/models/work_state_response_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/retrofit.dart';
part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  /// Check Database Avilability
  ///
  /// [dbName] : database name
  @GET("/get/db/u/api/database/listrl")
  Future<HttpResponse<WorkStateResponseModel?>> checkDataBase({
    @Query("db_name") required String dbName,
  });

  /// Check   User Availability
  @GET("/get/user/availability")
  Future<HttpResponse<VerificationStateModel?>> userAvailability({
    @Query("user_id") required String userid,
  });

  /// Login
  ///
  /// [username] : username
  /// [password] : password
  @POST("/login")
  Future<HttpResponse<LoginResponseModel?>> login({
    @Query("username") required String username,
    @Query("password") required String password,
    @Query("db_name") required String dbName,
  });

  ///
  /// signup new use
  ///
  /// [data]:
  ///
  ///       {
  ///       "params":{
  ///       "data":{
  ///       "name": "Ahmad Doe",
  ///       "username": "ahmad",
  ///       "password": "123",
  ///       "mobile": "1234567890",
  ///       "email": "ahmad@example.com"
  ///       }
  ///       }}
  ///
  @POST("/signup")
  Future<dynamic> signup({@Body() required Map<String, dynamic> data});

  /// Get Leaves and Vacations
  ///
  /// [employeeID] : employeeID
  @GET("/get/leaves/and/vacations")
  Future<dynamic> getLeavesAndVacations({
    @Query("employee_id") required String employeeID,
    @Header('Authorization') required String token,
  });

  ///
  /// Attendance Check-in
  ///
  /// [data]:
  ///
  ///       {
  ///       "params":{
  ///       "data":{
  ///       "username": "ahmad",
  ///       "in_latitude": "31.967465",
  ///       "in_longitude": "35.842634",
  ///       "in_ip_address": "10.10.100.25",
  ///       "in_mode": "systray"
  ///       }
  ///       }}
  ///
  @POST("/attendance/chick_in")
  Future<dynamic> attendanceCheckIn({
    @Body() required Map<String, dynamic> data,
    @Header('Authorization') required String token,
  });

  ///
  /// Attendance Check-out
  ///
  /// [data]:
  ///
  ///       {
  ///       "params":{
  ///       "data":{
  ///       "username": "ahmad",
  ///       "in_latitude": "31.967465",
  ///       "in_longitude": "35.842634",
  ///       "in_ip_address": "10.10.100.25",
  ///       "out_mode": "systray"
  ///       }
  ///       }}
  ///
  @POST("/attendance/chick_out")
  Future<dynamic> attendanceCheckOut({
    @Body() required Map<String, dynamic> data,
    @Header('Authorization') required String token,
  });

  /// Get HR User Info
  ///
  /// [employeeID] : employeeID
  @GET("/get/hr/user/info")
  Future<dynamic> getUserInfo({
    @Query("employee_id") required String employeeID,
    @Header('Authorization') required String token,
  });

  /// Get Employee Contract Info
  ///
  /// [employeeID] : employeeID
  @GET("/get/contract")
  Future<dynamic> getEmployeeContract({
    @Query("employee_id") required String employeeID,
    @Header('Authorization') required String token,
  });

  /// Get Employee profile Info
  ///
  /// [employeeID] : employeeID
  @GET("/get/personal/info")
  Future<ProfileInfoResponseModel?> getProfileInfo({
    @Query("employee_id") required String employeeID,
    @Header('Authorization') required String token,
  });

  /// update Employee PRofile Info
  ///
  /// [employeeID] : employeeID
  @PUT("/update/personal/info")
  Future<HttpResponse<ProfileInfoResponseModel?>> updateProfileInfo({
    @Query("employee_id") required String employeeID,
    // @Header('Authorization') required String token,
  });

  /// update Employee PRofile Info
  ///
  /// [db_name] : db_name
  @GET("get/organization/info")
  Future<HttpResponse<OrganizationalResponseModel?>> getOrgnizationList({
    @Query("db_name") required String dbName,
    @Header('Authorization') required String token,
  });

  @GET("get/contract")
  Future<HttpResponse<ContractResponseModel?>> getContractInfo({
    @Query("db_name") required String dbName,
    @Query("employee_id") required String employeeID,
    @Header('Authorization') required String token,
  });

  @POST("/upload/attachment")
  Future<dynamic> attachment({
    @Query("db_name") required String dbName,
    @Query("employee_id") required String employeeID,
    @Part(name: 'file') required File file,
  });

  @POST("/update/user/info")
  Future<dynamic> updateUser({@Body() required Map<String, dynamic> data});
}
