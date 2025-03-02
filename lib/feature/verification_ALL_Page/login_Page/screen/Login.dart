import 'package:aurora/commentwidget/b_TextField.dart';
import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/commentwidget/basis_ver.dart';
import 'package:aurora/commentwidget/header_verifiacation.dart';
import 'package:aurora/feature/verification_ALL_Page/login_Page/contorl/login_contorl.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:aurora/router/app_router.dart';
import 'package:aurora/router/router_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bond_form/bond_form.dart';
import 'package:go_router/go_router.dart';

class Login extends ConsumerStatefulWidget {
  const Login({super.key});

  @override
  ConsumerState<Login> createState() => _LoginState();
}

TextEditingController emailController = TextEditingController(
  text: 'Ahmaed@gmail.com',
);
TextEditingController passwordControll = TextEditingController(text: '159874');

class _LoginState extends ConsumerState<Login> {
  @override
  Widget build(BuildContext context) {
    return BasisVer(
      material: Material(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderVerifiacation(
                  tite: S.of(context).welcomeBack,
                  subtite: S.of(context).loginToContinue,
                ),
                32.verticalSpace,
                BTextField(
                  lable: S.of(context).usernameOrEmail,
                  controller: emailController,
                  provider: loginContorlProvider,
                  statetext: 'email',
                  hintText: S.of(context).enterYourUsernameOrEmail,
                  onChanged: (value) {
                    ref.read(loginContorlProvider.notifier).clear();
                  },
                ),
                24.verticalSpace,
                BTextField(
                  lable: S.of(context).password,
                  obscureText: true,
                  obscuringCharacter: "*",
                  provider: loginContorlProvider,
                  controller: passwordControll,
                  statetext: 'password',
                  hintText: S.of(context).enterYourPassword,
                  onChanged: (value) {
                    ref.read(loginContorlProvider.notifier).clear();
                  },
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.centerLeft,
                    ),
                    onPressed: () {},
                    child: Text(
                      S.of(context).forgotPassword,
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                48.verticalSpace,
                Center(
                  child: BButton(
                    S.of(context).login,
                    enabled: true,
                    onPressed: () async {
                      ref
                          .read(loginContorlProvider.notifier)
                          .updateText('email', emailController.text);
                      ref
                          .read(loginContorlProvider.notifier)
                          .updateText('password', passwordControll.text);
                      await ref.read(loginContorlProvider.notifier).submit();
                    },
                  ),
                ),
                86.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).dontHaveAnAccount,
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    8.horizontalSpace,
                    InkWell(
                      onTap: () {
                        navgtorContext?.pushNamed(
                          AppRoute.vertication_pages.toName,
                        );
                      },
                      child: RichText(
                        text: TextSpan(
                          text: S.of(context).createAccount,
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Theme.of(context).colorScheme.primary,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Sora',
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      textpage: S.of(context).login,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
