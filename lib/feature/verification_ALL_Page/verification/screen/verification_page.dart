import 'package:aurora/commentwidget/b_TextField.dart';
import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/commentwidget/basis_ver.dart';
import 'package:aurora/commentwidget/header_verifiacation.dart';
import 'package:aurora/feature/verification_ALL_Page/verification/contorl/verification_provider.dart';
import 'package:aurora/feature/verification_ALL_Page/verification/screen/country_dropdown_screen.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bond_form/bond_form.dart';

class VerificationPage extends ConsumerStatefulWidget {
  const VerificationPage({super.key});

  @override
  ConsumerState<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends ConsumerState<VerificationPage> {
  TextEditingController _mobileNumberController = TextEditingController(
    text: '777222189',
  );
  TextEditingController _iDNumberController = TextEditingController(
    text: '9992009699',
  );
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _mobileNumberController.dispose();
    _iDNumberController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final formState = ref.watch(verificationContorlFormController);
    return BasisVer(
      material: Material(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderVerifiacation(
                  tite: S.of(context).hello,
                  subtite:
                      S.of(context).pleaseVerifyByEnteringTheInformationBelow,
                ),
                32.verticalSpace,
                BTextField(
                  lable: S.of(context).idNumber,
                  inputType: TextInputType.phone,
                  controller: _iDNumberController,
                  provider: verificationContorlFormController,
                  statetext: 'IDNumber',
                  hintText: S.of(context).enterYourIdNumber,
                  onChanged: (value) {
                    ref
                        .read(verificationContorlFormController.notifier)
                        .clear();
                  },
                ),
                24.verticalSpace,
                Text(
                  S.of(context).mobileNumber,
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                8.verticalSpace,
                Row(
                  children: [
                    CountryDropdown(),
                    Flexible(
                      flex: 1,
                      child: TextFormField(
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                          color:
                              Theme.of(context).brightness == Brightness.dark
                                  ? Theme.of(context).colorScheme.primary
                                  // Dark mode background color
                                  : Theme.of(context).colorScheme.onTertiary,
                        ),
                        controller: _mobileNumberController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color:
                                  formState.error('MobileNumber') != null
                                      ? Theme.of(context).colorScheme.onTertiary
                                      : Colors.transparent,
                            ),
                          ),
                          error:
                              formState.error('MobileNumber') != null
                                  ? Row(
                                    children: [
                                      Text(
                                        formState.error('MobileNumber') ?? "",
                                        style: Theme.of(
                                          context,
                                        ).textTheme.labelSmall?.copyWith(
                                          color:
                                              Theme.of(
                                                context,
                                              ).colorScheme.onError,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.error_outline_sharp,
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onError,
                                      ),
                                    ],
                                  )
                                  : null,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide:
                                _mobileNumberController!.text.isEmpty
                                    ? BorderSide(color: Colors.transparent)
                                    : BorderSide(
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onTertiary,
                                    ),
                          ),
                        ),
                        onChanged: (value) {
                          ref
                              .read(verificationContorlFormController.notifier)
                              .clear();
                        },
                      ),
                    ),
                  ],
                ),
                60.verticalSpace,
                Center(
                  child: BButton(
                    enabled: true,
                    S.of(context).verify,
                    onPressed: () async {
                      ref
                          .read(verificationContorlFormController.notifier)
                          .updateText('IDNumber', _iDNumberController.text);
                      ref
                          .read(verificationContorlFormController.notifier)
                          .updateText(
                            'MobileNumber',
                            _mobileNumberController.text,
                          );
                      await ref
                          .read(verificationContorlFormController.notifier)
                          .submit();
                    },
                  ),
                ),
                130.verticalSpace,
              ],
            ),
          ],
        ),
      ),
      textpage: S.of(context).verification,
      physics: NeverScrollableScrollPhysics(),
    );
  }
}
