import 'dart:ui';
import 'package:aurora/commentwidget/linears_gradient.dart';
import 'package:aurora/feature/verification_ALL_Page/work_space/screen/work_space_fe.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:aurora/theme/all_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class SignInToYourWork extends ConsumerWidget {
  const SignInToYourWork({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: 1.sw,
      height: 41.w,
      child: LinersGradientButton(
        isborder: true,
        child: FilledButton(
          style: Theme.of(context).filledButtonTheme.style?.copyWith(
            backgroundColor: WidgetStateProperty.all(Colors.transparent),
            shadowColor: WidgetStateProperty.all(Colors.transparent),
          ),
          onPressed: () {
            WoltModalSheet.show(
              context: context,
              pageListBuilder: (BuildContext context) {
                return [
                  SliverWoltModalSheetPage(
                    backgroundColor: Colors.transparent,
                    hasTopBarLayer: false,
                    isTopBarLayerAlwaysVisible: false,
                    mainContentSliversBuilder: (BuildContext context) {
                      return [SliverToBoxAdapter(child: WorkSpaceFe())];
                    },
                  ),
                ];
              },
              modalDecorator: (Widget child) {
                return Stack(
                  children: [
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                        child: Container(),
                      ),
                    ),
                    Positioned.fill(child: child),
                  ],
                );
              },
            );
          },
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              S.of(context).signInToYourWorkspace,
              maxLines: 1,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(
                color:
                    Theme.of(context).brightness == Brightness.dark
                        ? NAVY_50
                        // Dark mode background color
                        : Theme.of(context).colorScheme.onTertiary,
                fontSize:
                    Localizations.localeOf(context).languageCode == 'en'
                        ? 14
                        : 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
