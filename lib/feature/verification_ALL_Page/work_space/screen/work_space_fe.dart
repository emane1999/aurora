import 'package:aurora/commentwidget/b_TextField.dart';
import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/commentwidget/header_verifiacation.dart';
import 'package:aurora/feature/verification_ALL_Page/work_space/contorl/url_workspace.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:bond_form/bond_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WorkSpaceFe extends ConsumerStatefulWidget {
  const WorkSpaceFe({super.key});

  @override
  ConsumerState<WorkSpaceFe> createState() => _WorkSpaceFeState();
}

class _WorkSpaceFeState extends ConsumerState<WorkSpaceFe> {
  TextEditingController controller = TextEditingController(text: 'Hr_System_1');
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: SizedBox(
        height: .45.sh,
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            end: 36.w,
            start: 36.w,
            top: 32.w,
            bottom: 32.w,
          ),
          child: ListView(
            shrinkWrap: false,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderVerifiacation(
                    tite: S.of(context).hello,
                    subtite:
                        S
                            .of(context)
                            .pleaseSignInByEnteringYourWorkspaceAddress,
                  ),
                  Column(
                    children: [
                      32.verticalSpace,
                      BTextField(
                        lable: S.of(context).workspaceUrl,
                        provider: workUrlProvider,
                        statetext: 'url',
                        controller: controller,
                        hintText: S.of(context).enterYourWorkspace,
                        onChanged: (value) {
                          ref.read(workUrlProvider.notifier).clear();
                        },
                      ),
                      32.verticalSpace,
                      Center(
                        child: BButton(
                          S.of(context).continues,
                          enabled: true,
                          onPressed: () async {
                            ref
                                .read(workUrlProvider.notifier)
                                .updateText('url', controller.text);
                            await ref.read(workUrlProvider.notifier).submit();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
