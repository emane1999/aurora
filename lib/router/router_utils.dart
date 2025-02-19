enum AppRoute {
  splash,
  main_page,
  workSpaceFe,
  contract,
  login,
  vertication_pages,
  otp_code_verification,
  new_account_page,
  home_page,
  attendancepage,
  requestsPage,
  profilePage,
  meeting_details,
  personal_Info,
  organizational_info_user,
  notifications,
  language,
  FinanceSalary,
  Leaves_Vacations,
  Documents,
  CoursesTraining,
  Assets,
  CustomizationsAdmin
}

extension AppPageExtension on AppRoute {
  String get toPath {
    switch (this) {
      case AppRoute.splash:
        return "/";
      case AppRoute.meeting_details:
        return "/meeting_details";
      case AppRoute.CustomizationsAdmin:
        return "/CustomizationsAdmin";
      case AppRoute.Leaves_Vacations:
        return "/Leaves_vacations_page";
      case AppRoute.language:
        return "/language";
      case AppRoute.Assets:
        return "/Assets";
      case AppRoute.contract:
        return "/contract";
      case AppRoute.FinanceSalary:
        return "/finance_salary";
      case AppRoute.home_page:
        return "/home_page";
      case AppRoute.Documents:
        return "/documents";
      case AppRoute.attendancepage:
        return "/attendancepage";
      case AppRoute.notifications:
        return "/notification_info";
      case AppRoute.requestsPage:
        return "/requestsPage";
      case AppRoute.profilePage:
        return "/profilePage";
      case AppRoute.login:
        return "/login";
      case AppRoute.CoursesTraining:
        return "/CoursesTraining";
      case AppRoute.main_page:
        return "/main_page";
      case AppRoute.workSpaceFe:
        return "/workSpaceFe";
      case AppRoute.vertication_pages:
        return "/vertication_pages";
      case AppRoute.otp_code_verification:
        return "/otp_code_verification/:userId";
      case AppRoute.new_account_page:
        return "/new_account_page/:userId";
      case AppRoute.personal_Info:
        return "/personal_info";
      case AppRoute.organizational_info_user:
        return "/organizational_info_user";

      default:
        return "/";
    }
  }

  String get toName {
    switch (this) {
      case AppRoute.meeting_details:
        return "MeetingDetails";
      case AppRoute.home_page:
        return "Home";
      case AppRoute.Assets:
        return "Assets";
      case AppRoute.CustomizationsAdmin:
        return "CustomizationsAdmin";
      case AppRoute.FinanceSalary:
        return "FinanceSalary";
      case AppRoute.notifications:
        return "Notification";
      case AppRoute.splash:
        return "Splash";
      case AppRoute.CoursesTraining:
        return "CoursesTraining";
      case AppRoute.login:
        return "Login";
      case AppRoute.Documents:
        return "Documents";
      case AppRoute.language:
        return "Language";
      case AppRoute.main_page:
        return "Main_page";
      case AppRoute.workSpaceFe:
        return "WorkSpaceFe";
      case AppRoute.contract:
        return "Contract";
      // case AppRoute.main_page:
      //   return "Main_page";
      // case AppRoute.workSpaceFe:
      //   return "WorkSpaceFe";
      case AppRoute.vertication_pages:
        return "Vertication_pages";
      case AppRoute.otp_code_verification:
        return "Otp_code_verification";
      case AppRoute.new_account_page:
        return "New_account_page";
      case AppRoute.attendancepage:
        return "Attendancepage";
      case AppRoute.requestsPage:
        return "RequestsPage";
      case AppRoute.profilePage:
        return "ProfilePage";
      case AppRoute.personal_Info:
        return "personalInfo";
      case AppRoute.organizational_info_user:
        return "OrganizationalInfoUser";
      case AppRoute.Leaves_Vacations:
        return "Leavesvacations";
      default:
        return "Home";
    }
  }
}
