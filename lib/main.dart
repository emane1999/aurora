import 'package:aurora/app/app_run_tasks.dart';
import 'package:aurora/app_lang/app_language_provider.dart';
import 'package:aurora/config/app.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:aurora/router/app_router.dart';
import 'package:aurora/theme/global_theme_providers.dart';
import 'package:bond_core/bond_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => run(
  () => const ProviderScope(
    child: ScreenUtilInit(
      designSize: const Size(375, 812),
      ensureScreenSize: true,
      child: const Aurora(),
    ),
  ),
  tasks: RunAppTasks(),
  providers: providers,
);
/*Future<void> main() async {
  runApp(ProviderScope(
      child: ScreenUtilInit(
          designSize: const Size(375, 812),
          ensureScreenSize: true,
          child: const HRApp()),
              
          ),
    tasks: RunAppTasks(),
    providers: providers,
          );*/

class Aurora extends ConsumerWidget {
  const Aurora({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProviderProvider);
    final themeP = ref.watch(globalThemDataProvider);
    final themeState = ref.watch(themeStateProvider);
    final appLocaleState = ref.watch(appLanguageStateProvider);
    // ref.read(authStateProvider.notifier).fetchData();
    return MaterialApp.router(
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
      theme: themeP.lightThemeData, // Use the light theme data
      darkTheme: themeP.darkThemeData, // Use the dark theme data
      themeMode: themeState,
      debugShowCheckedModeBanner: false,
      locale: appLocaleState,
      supportedLocales: const [Locale('en', ''), Locale('ar', '')],
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
