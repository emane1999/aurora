import 'package:aurora/feature/attendance_pages/details_attendance_page_screen/meetings_day/meeting_details.dart';
import 'package:aurora/feature/buttom_app_bar/screen/Profile_page.dart';
import 'package:aurora/feature/buttom_app_bar/screen/app_bar_home.dart';
import 'package:aurora/feature/buttom_app_bar/screen/attendance_page.dart';
import 'package:aurora/feature/buttom_app_bar/screen/home_page.dart';
import 'package:aurora/feature/buttom_app_bar/screen/requests_page.dart';
import 'package:aurora/feature/main_page/main_page.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_Language_page/Language/screen/language.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_Notification_page/Notifications/screen/notification_info.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_assets_page/assets_page/screen/assets.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/screen/admin/contract_admin.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/screen/user/contract.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/screen/user/prson_details.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_courses%20_training_page/courses_Training_page/courses_training.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_customizations_admin/customizations_admin_page/screen/customizations_admin.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_docement_page/documents_page/screen/documents.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_finance%20_salary_page/finance_salary/screen/finance_salary.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_leaves_%20vacations_page/leaves%20_vacations/Leaves_vacations_page.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_organizational_page/organizational_onfo/screen/organizational%20_info%20_%20user.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/employee_info_admin.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_profile_page/personal_info/screen/personal_info.dart';
import 'package:aurora/feature/splash/splash_screen.dart';
import 'package:aurora/feature/verification_ALL_Page/create_new_account_%20page/screen/new_account.dart';
import 'package:aurora/feature/verification_ALL_Page/login_Page/contorl/auth_state.dart';
import 'package:aurora/feature/verification_ALL_Page/login_Page/screen/Login.dart';
import 'package:aurora/feature/verification_ALL_Page/opt/screen/otp_code_verification.dart';
import 'package:aurora/feature/verification_ALL_Page/verification/screen/verification_page.dart';
import 'package:aurora/router/router_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'app_router.g.dart';

final _keyNavegator = GlobalKey<NavigatorState>();

BuildContext? get navgtorContext => _keyNavegator.currentContext;
@riverpod
GoRouter routerProvider(Ref ref) {
  return GoRouter(
    navigatorKey: _keyNavegator,
    debugLogDiagnostics: true,
    // redirect: (context, state) {
    //   final authState = ref.watch(authStateProvider);
    //   print(authState);
    //   if (authState == true) {
    //     return AppRoute.home_page.toPath;
    //   } else {
    //     return null;
    //   }
    // },
    // AppRoute.personal_Info.toPath,
    initialLocation: "/",
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppBarHome(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: AppRoute.home_page.toName,
                path: AppRoute.home_page.toPath,
                builder: (context, state) => const HomePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: AppRoute.attendancepage.toName,
                path: AppRoute.attendancepage.toPath,
                builder: (context, state) => const AttendancePage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: AppRoute.requestsPage.toName,
                path: AppRoute.requestsPage.toPath,
                builder: (context, state) => const RequestsPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: AppRoute.profilePage.toName,
                path: AppRoute.profilePage.toPath,
                builder: (context, state) => const ProfilePage(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: AppRoute.splash.toPath,
        name: AppRoute.splash.toName,
        builder: (context, state) {
          return SplashScreen();
        },
      ),
      GoRoute(
        path: AppRoute.main_page.toPath,
        name: AppRoute.main_page.toName,
        builder: (context, state) {
          return MainPage();
        },
      ),
      GoRoute(
        path: AppRoute.login.toPath,
        name: AppRoute.login.toName,
        builder: (context, state) {
          return Login();
        },
      ),
      GoRoute(
        path: AppRoute.vertication_pages.toPath,
        name: AppRoute.vertication_pages.toName,
        builder: (context, state) {
          return VerificationPage();
        },
      ),
      GoRoute(
        path: AppRoute.Documents.toPath,
        name: AppRoute.Documents.toName,
        builder: (context, state) {
          return Documents();
        },
      ),
      GoRoute(
        name: AppRoute.meeting_details.toName,
        path: AppRoute.meeting_details.toPath,
        builder: (context, state) => const MeetingDetails(),
      ),
      GoRoute(
        path: AppRoute.otp_code_verification.toPath,
        name: AppRoute.otp_code_verification.toName,
        builder: (context, state) {
          final userId = state.pathParameters['userId'];
          return OtpCodeVerification(userId);
        },
      ),
      GoRoute(
        path: AppRoute.new_account_page.toPath,
        name: AppRoute.new_account_page.toName,
        builder: (context, state) {
          final userId = state.pathParameters['userId'];
          return NewAccount(userId);
        },
      ),
      GoRoute(
        path: AppRoute.contract.toPath,
        name: AppRoute.contract.toName,
        builder: (context, state) {
          return ContractAdmin();
        },
      ),
      GoRoute(
        path: AppRoute.personal_Info.toPath,
        name: AppRoute.personal_Info.toName,
        builder: (context, state) {
          return EmployeeInfoAdmin();
        },
      ),
      GoRoute(
        path: AppRoute.notifications.toPath,
        name: AppRoute.notifications.toName,
        builder: (context, state) {
          return NotificationInfo();
        },
      ),
      GoRoute(
        path: AppRoute.organizational_info_user.toPath,
        name: AppRoute.organizational_info_user.toName,
        builder: (context, state) {
          return OrganizationalInfoUser();
        },
      ),
      GoRoute(
        path: AppRoute.language.toPath,
        name: AppRoute.language.toName,
        builder: (context, state) {
          return Language();
        },
      ),
      GoRoute(
        path: AppRoute.CoursesTraining.toPath,
        name: AppRoute.CoursesTraining.toName,
        builder: (context, state) {
          return CoursesTraining();
        },
      ),
      GoRoute(
        path: AppRoute.FinanceSalary.toPath,
        name: AppRoute.FinanceSalary.toName,
        builder: (context, state) {
          return FinanceSalary();
        },
      ),
      GoRoute(
        path: AppRoute.Leaves_Vacations.toPath,
        name: AppRoute.Leaves_Vacations.toName,
        builder: (context, state) {
          return LeavesVacationsPage();
        },
      ),
      GoRoute(
        path: AppRoute.CustomizationsAdmin.toPath,
        name: AppRoute.CustomizationsAdmin.toName,
        builder: (context, state) {
          return CustomizationsAdmin();
        },
      ),
      GoRoute(
        path: AppRoute.Assets.toPath,
        name: AppRoute.Assets.toName,
        builder: (context, state) {
          return Assets();
        },
      ),
    ],
  );
}
