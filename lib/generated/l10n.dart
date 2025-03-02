// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sign in to your workspace`
  String get signInToYourWorkspace {
    return Intl.message(
      'Sign in to your workspace',
      name: 'signInToYourWorkspace',
      desc: '',
      args: [],
    );
  }

  /// `Seamless `
  String get seamless {
    return Intl.message('Seamless ', name: 'seamless', desc: '', args: []);
  }

  /// `HR Management`
  String get hrManagement {
    return Intl.message(
      'HR Management',
      name: 'hrManagement',
      desc: '',
      args: [],
    );
  }

  /// `,Just a Click Away`
  String get justAClickAway {
    return Intl.message(
      ',Just a Click Away',
      name: 'justAClickAway',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message('Welcome', name: 'welcome', desc: '', args: []);
  }

  /// `Hello`
  String get hello {
    return Intl.message('Hello', name: 'hello', desc: '', args: []);
  }

  /// `Please sign in by entering your workspace address.`
  String get pleaseSignInByEnteringYourWorkspaceAddress {
    return Intl.message(
      'Please sign in by entering your workspace address.',
      name: 'pleaseSignInByEnteringYourWorkspaceAddress',
      desc: '',
      args: [],
    );
  }

  /// `Workspace URL`
  String get workspaceUrl {
    return Intl.message(
      'Workspace URL',
      name: 'workspaceUrl',
      desc: '',
      args: [],
    );
  }

  /// `enter your workspace`
  String get enterYourWorkspace {
    return Intl.message(
      'enter your workspace',
      name: 'enterYourWorkspace',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continues {
    return Intl.message('Continue', name: 'continues', desc: '', args: []);
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Login to continue`
  String get loginToContinue {
    return Intl.message(
      'Login to continue',
      name: 'loginToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Username or email`
  String get usernameOrEmail {
    return Intl.message(
      'Username or email',
      name: 'usernameOrEmail',
      desc: '',
      args: [],
    );
  }

  /// `enter your username or email`
  String get enterYourUsernameOrEmail {
    return Intl.message(
      'enter your username or email',
      name: 'enterYourUsernameOrEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `enter your password`
  String get enterYourPassword {
    return Intl.message(
      'enter your password',
      name: 'enterYourPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Don’t have an account?`
  String get dontHaveAnAccount {
    return Intl.message(
      'Don’t have an account?',
      name: 'dontHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Verification`
  String get verification {
    return Intl.message(
      'Verification',
      name: 'verification',
      desc: '',
      args: [],
    );
  }

  /// `Please verify by entering the information below`
  String get pleaseVerifyByEnteringTheInformationBelow {
    return Intl.message(
      'Please verify by entering the information below',
      name: 'pleaseVerifyByEnteringTheInformationBelow',
      desc: '',
      args: [],
    );
  }

  /// `ID Number`
  String get idNumber {
    return Intl.message('ID Number', name: 'idNumber', desc: '', args: []);
  }

  /// `enter your ID number`
  String get enterYourIdNumber {
    return Intl.message(
      'enter your ID number',
      name: 'enterYourIdNumber',
      desc: '',
      args: [],
    );
  }

  /// `Mobile Number`
  String get mobileNumber {
    return Intl.message(
      'Mobile Number',
      name: 'mobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `OTP Code`
  String get otpCode {
    return Intl.message('OTP Code', name: 'otpCode', desc: '', args: []);
  }

  /// `Please type the OTP verification code sent to`
  String get pleaseTypeTheOtpVerificationCodeSentTo {
    return Intl.message(
      'Please type the OTP verification code sent to',
      name: 'pleaseTypeTheOtpVerificationCodeSentTo',
      desc: '',
      args: [],
    );
  }

  /// `Didn’t receive SMS?`
  String get didntReceiveSms {
    return Intl.message(
      'Didn’t receive SMS?',
      name: 'didntReceiveSms',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resendCode {
    return Intl.message('Resend Code', name: 'resendCode', desc: '', args: []);
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message('Sign Up', name: 'signUp', desc: '', args: []);
  }

  /// `I agree to the terms and conditions \n as set out by the user agreement.`
  String get iAgreeToTheTermsAndConditionsNAsSet {
    return Intl.message(
      'I agree to the terms and conditions \\n as set out by the user agreement.',
      name: 'iAgreeToTheTermsAndConditionsNAsSet',
      desc: '',
      args: [],
    );
  }

  /// `confirm Password`
  String get confirmPassword {
    return Intl.message(
      'confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get createAnAccount {
    return Intl.message(
      'Create an Account',
      name: 'createAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Fill in the information below`
  String get fillInTheInformationBelow {
    return Intl.message(
      'Fill in the information below',
      name: 'fillInTheInformationBelow',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message('First Name', name: 'firstName', desc: '', args: []);
  }

  /// `Last Name`
  String get lastName {
    return Intl.message('Last Name', name: 'lastName', desc: '', args: []);
  }

  /// `Employee Number`
  String get employeeNumber {
    return Intl.message(
      'Employee Number',
      name: 'employeeNumber',
      desc: '',
      args: [],
    );
  }

  /// `New Account`
  String get newAccount {
    return Intl.message('New Account', name: 'newAccount', desc: '', args: []);
  }

  /// `{time}, {name}!`
  String goodAfternoonJohn(String name, String time) {
    return Intl.message(
      '$time, $name!',
      name: 'goodAfternoonJohn',
      desc: 'Greet the user by their name.',
      args: [name, time],
    );
  }

  /// `Attendance`
  String get attendance {
    return Intl.message('Attendance', name: 'attendance', desc: '', args: []);
  }

  /// `Announcements / Upcoming Events`
  String get announcementsUpcomingEvents {
    return Intl.message(
      'Announcements / Upcoming Events',
      name: 'announcementsUpcomingEvents',
      desc: '',
      args: [],
    );
  }

  /// `Performance Tracking`
  String get performanceTracking {
    return Intl.message(
      'Performance Tracking',
      name: 'performanceTracking',
      desc: '',
      args: [],
    );
  }

  /// `Your Requests`
  String get yourRequests {
    return Intl.message(
      'Your Requests',
      name: 'yourRequests',
      desc: '',
      args: [],
    );
  }

  /// `Recently Used Features`
  String get recentlyUsedFeatures {
    return Intl.message(
      'Recently Used Features',
      name: 'recentlyUsedFeatures',
      desc: '',
      args: [],
    );
  }

  /// `Remaining Balance`
  String get remainingBalance {
    return Intl.message(
      'Remaining Balance',
      name: 'remainingBalance',
      desc: '',
      args: [],
    );
  }

  /// `Today’s Shift:`
  String get todaysShift {
    return Intl.message(
      'Today’s Shift:',
      name: 'todaysShift',
      desc: '',
      args: [],
    );
  }

  /// `Location:`
  String get location {
    return Intl.message('Location:', name: 'location', desc: '', args: []);
  }

  /// `Clock In`
  String get clockIn {
    return Intl.message('Clock In', name: 'clockIn', desc: '', args: []);
  }

  /// `Clock Out`
  String get clockOut {
    return Intl.message('Clock Out', name: 'clockOut', desc: '', args: []);
  }

  /// `Latest Announcement:`
  String get latestAnnouncement {
    return Intl.message(
      'Latest Announcement:',
      name: 'latestAnnouncement',
      desc: '',
      args: [],
    );
  }

  /// `View More `
  String get viewMore {
    return Intl.message('View More ', name: 'viewMore', desc: '', args: []);
  }

  /// `Goals:`
  String get goals {
    return Intl.message('Goals:', name: 'goals', desc: '', args: []);
  }

  /// `\t\tPerformance: `
  String get ttperformance {
    return Intl.message(
      '\t\tPerformance: ',
      name: 'ttperformance',
      desc: '',
      args: [],
    );
  }

  /// `Work`
  String get work {
    return Intl.message('Work', name: 'work', desc: '', args: []);
  }

  /// `Training`
  String get training {
    return Intl.message('Training', name: 'training', desc: '', args: []);
  }

  /// `Courses`
  String get courses {
    return Intl.message('Courses', name: 'courses', desc: '', args: []);
  }

  /// `Request Type:`
  String get requestType {
    return Intl.message(
      'Request Type:',
      name: 'requestType',
      desc: '',
      args: [],
    );
  }

  /// `Date:`
  String get date {
    return Intl.message('Date:', name: 'date', desc: '', args: []);
  }

  /// `Request Status:`
  String get requestStatus {
    return Intl.message(
      'Request Status:',
      name: 'requestStatus',
      desc: '',
      args: [],
    );
  }

  /// `Punch Correction`
  String get punchCorrection {
    return Intl.message(
      'Punch Correction',
      name: 'punchCorrection',
      desc: '',
      args: [],
    );
  }

  /// `Leave Request`
  String get leaveRequest {
    return Intl.message(
      'Leave Request',
      name: 'leaveRequest',
      desc: '',
      args: [],
    );
  }

  /// `Loan Request`
  String get loanRequest {
    return Intl.message(
      'Loan Request',
      name: 'loanRequest',
      desc: '',
      args: [],
    );
  }

  /// `New Request`
  String get newRequest {
    return Intl.message('New Request', name: 'newRequest', desc: '', args: []);
  }

  /// `Annual Balance`
  String get annualBalance {
    return Intl.message(
      'Annual Balance',
      name: 'annualBalance',
      desc: '',
      args: [],
    );
  }

  /// `Sick Days`
  String get sickDays {
    return Intl.message('Sick Days', name: 'sickDays', desc: '', args: []);
  }

  /// `Overtime Days`
  String get overtimeDays {
    return Intl.message(
      'Overtime Days',
      name: 'overtimeDays',
      desc: '',
      args: [],
    );
  }

  /// `Deductions`
  String get deductions {
    return Intl.message('Deductions', name: 'deductions', desc: '', args: []);
  }

  /// `Today’s Schedule`
  String get todaysSchedule {
    return Intl.message(
      'Today’s Schedule',
      name: 'todaysSchedule',
      desc: '',
      args: [],
    );
  }

  /// `Attendance History`
  String get attendanceHistory {
    return Intl.message(
      'Attendance History',
      name: 'attendanceHistory',
      desc: '',
      args: [],
    );
  }

  /// `Meetings for Today`
  String get meetingsForToday {
    return Intl.message(
      'Meetings for Today',
      name: 'meetingsForToday',
      desc: '',
      args: [],
    );
  }

  /// `Meeting Details`
  String get meetingDetails {
    return Intl.message(
      'Meeting Details',
      name: 'meetingDetails',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message('Today', name: 'today', desc: '', args: []);
  }

  /// `Overall`
  String get overall {
    return Intl.message('Overall', name: 'overall', desc: '', args: []);
  }

  /// `Notes:`
  String get notes {
    return Intl.message('Notes:', name: 'notes', desc: '', args: []);
  }

  /// `Meetings`
  String get meetings {
    return Intl.message('Meetings', name: 'meetings', desc: '', args: []);
  }

  /// `Reschedule Meeting`
  String get rescheduleMeeting {
    return Intl.message(
      'Reschedule Meeting',
      name: 'rescheduleMeeting',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Meeting`
  String get cancelMeeting {
    return Intl.message(
      'Cancel Meeting',
      name: 'cancelMeeting',
      desc: '',
      args: [],
    );
  }

  /// `Announcements `
  String get announcements {
    return Intl.message(
      'Announcements ',
      name: 'announcements',
      desc: '',
      args: [],
    );
  }

  /// `Upcoming Events`
  String get upcomingEvents {
    return Intl.message(
      'Upcoming Events',
      name: 'upcomingEvents',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
