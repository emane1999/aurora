import 'package:aurora/commentwidget/b_TextField.dart';
import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/commentwidget/basis_ver.dart';
import 'package:aurora/commentwidget/header_verifiacation.dart';
import 'package:aurora/feature/verification_ALL_Page/create_new_account_%20page/contorl/account_contorl.dart';
import 'package:aurora/feature/verification_ALL_Page/create_new_account_%20page/screen/dis_text.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:aurora/router/router_utils.dart';
import 'package:bond_form/bond_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class NewAccount extends ConsumerStatefulWidget {
  const NewAccount(String? userId, {super.key});

  @override
  ConsumerState<NewAccount> createState() => _NewAccountState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordsControll = TextEditingController();
TextEditingController confirmpasswordControll = TextEditingController();

class _NewAccountState extends ConsumerState<NewAccount> {
  @override
  Widget build(BuildContext context) {
    return BasisVer(
      material: Material(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 24.0,
          children: [
            HeaderVerifiacation(
              tite: S.of(context).createAnAccount,
              subtite: S.of(context).fillInTheInformationBelow,
            ),
            8.verticalSpace,
            DisText(text: S.of(context).firstName, hintText: "John"),
            DisText(text: S.of(context).lastName, hintText: "Doe"),
            DisText(text: S.of(context).employeeNumber, hintText: "#8700"),
            BTextField(
              lable: S.of(context).usernameOrEmail,
              controller: emailController,
              provider: accountContorlProvider,
              statetext: 'emails',
              hintText: S.of(context).enterYourUsernameOrEmail,
              onChanged: (value) {
                print(value);
                ref.read(accountContorlProvider.notifier).clear();
              },
            ),
            BTextField(
              lable: S.of(context).password,
              obscureText: true,
              obscuringCharacter: "*",
              provider: accountContorlProvider,
              controller: passwordsControll,
              statetext: 'pass',
              hintText: S.of(context).enterYourPassword,
              onChanged: (value) {
                ref.read(accountContorlProvider.notifier).clear();
              },
            ),
            BTextField(
              lable: S.of(context).confirmPassword,
              obscureText: true,
              obscuringCharacter: "*",
              provider: accountContorlProvider,
              controller: confirmpasswordControll,
              statetext: 'confirmPassword',
              hintText: "re-enter your password",
              onChanged: (value) {
                print(value);
                ref.read(accountContorlProvider.notifier).clear();
              },
            ),
            CheckboxListTile(
              value:
                  ref.watch(accountContorlProvider).get('checkbox').value
                      as bool,
              contentPadding: EdgeInsets.zero,
              selected:
                  ref.watch(accountContorlProvider).get('checkbox').value
                      as bool,
              side: WidgetStateBorderSide.resolveWith(
                (states) =>
                    BorderSide(color: Theme.of(context).colorScheme.primary),
              ),
              controlAffinity: ListTileControlAffinity.leading,
              fillColor: WidgetStateProperty.resolveWith<Color?>((
                Set<WidgetState> states,
              ) {
                return Theme.of(context).colorScheme.surfaceContainerHigh;
              }),
              checkColor: Theme.of(context).colorScheme.primary,
              title: FittedBox(
                child: Text(
                  style: Theme.of(
                    context,
                  ).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w300),
                  maxLines: 2,
                  S.of(context).iAgreeToTheTermsAndConditionsNAsSet,
                ),
              ),
              onChanged: (bool? value) {
                ref
                    .read(accountContorlProvider.notifier)
                    .updateCheckbox('checkbox', value ?? false);
              },
            ),
            24.verticalSpace,
            Center(
              child: BButton(
                enabled:
                    ref.watch(accountContorlProvider).get('checkbox').value
                            as bool
                        ? true
                        : false,
                S.of(context).createAccount,
                onPressed: () async {
                  ref
                      .read(accountContorlProvider.notifier)
                      .updateText('emails', emailController.text);
                  ref
                      .read(accountContorlProvider.notifier)
                      .updateText('pass', passwordsControll.text);
                  ref
                      .read(accountContorlProvider.notifier)
                      .updateText(
                        'confirmPassword',
                        confirmpasswordControll.text,
                      );

                  await ref.read(accountContorlProvider.notifier).submit();
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
                    context.pushNamed(AppRoute.login.toName);
                  },
                  child: RichText(
                    text: TextSpan(
                      text: S.of(context).login,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline,
                        decorationColor: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
          ],
        ),
      ),
      textpage: S.of(context).newAccount,
      physics: ScrollPhysics(),
    );
  }
}
