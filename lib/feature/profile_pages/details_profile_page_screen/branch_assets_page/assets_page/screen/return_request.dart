import 'dart:io';

import 'package:aurora/commentwidget/b_TextField.dart';
import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_assets_page/assets_page/contorl/asset_form_controller.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_assets_page/assets_page/screen/asset_type.dart';
import 'package:bond_form/bond_form.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ReturnRequest extends ConsumerStatefulWidget {
  const ReturnRequest({super.key});

  @override
  ConsumerState<ReturnRequest> createState() => _ReturnRequestState();
}

class _ReturnRequestState extends ConsumerState<ReturnRequest> {
  TextEditingController _serialNumber = TextEditingController();
  TextEditingController _notesComments = TextEditingController();
  String _fileText = "";
  bool _isSelected = true;
  File? _selectedFile;
  void _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
    );
    if (result != null) {
      setState(() {
        _selectedFile = File(result.files.single.path!);
        _fileText = "${result.files.single.name}";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      shadowColor: Theme.of(context).colorScheme.shadow,
      elevation: 7.5,
      child: SizedBox(
        height: .69.sh,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsetsDirectional.only(
            top: 24.w,
            start: 34.w,
            end: 34.w,
            bottom: 24.w,
          ),
          children: [
            Row(
              children: [
                Text(
                  'Return Request',
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(Icons.close),
              ],
            ),
            25.verticalSpace,
            AssetType(),
            24.verticalSpace,
            BTextField(
              inputType: TextInputType.number,
              lable: "Serial Number",
              provider: assetFormProvider,
              statetext: 'SerialNumber',
              controller: _serialNumber,
              hintText: "enter your SerialNumber",
              onChanged: (value) {
                ref.read(assetFormProvider.notifier).clear();
              },
            ),
            24.verticalSpace,
            Text(
              "Notes / Comments",
              style: Theme.of(context).textTheme.labelSmall,
            ),
            8.verticalSpace,
            BTextField(
              isfontWeights: true,
              inputType: TextInputType.number,
              lable: "Write your reason for returning this asset.",
              provider: assetFormProvider,
              statetext: 'NotesComments',
              controller: _notesComments,
              hintText: "Your message here",
              onChanged: (value) {
                ref.read(assetFormProvider.notifier).clear();
              },
            ),
            Text(
              'Attachment',
              style: Theme.of(
                context,
              ).textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w500),
            ),
            24.verticalSpace,
            _selectedFile == null
                ? SizedBox()
                : Row(
                  spacing: 8,
                  children: [
                    SvgPicture.asset(
                      'assets/images/today.svg',
                      width: 24.w,
                      height: 24.w,
                    ),
                    Text(
                      _fileText,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
                    ),
                  ],
                ),
            24.verticalSpace,
            Text("Choose File", style: Theme.of(context).textTheme.labelMedium),
            8.verticalSpace,
            SizedBox(
              width: 303.w,
              height: 126.w,
              child: OutlinedButton(
                style: Theme.of(context).outlinedButtonTheme.style,
                onPressed: _pickFile,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/folderAdd.svg',
                      width: 24.w,
                      height: 24.w,
                    ),
                  ],
                ),
              ),
            ),
            8.verticalSpace,
            Text(
              "pdf, doc, docs, xls, ppt, pptx, jpeg, png",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            24.verticalSpace,
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  BButton(
                    style: Theme.of(context).filledButtonTheme.style?.copyWith(
                      padding: WidgetStateProperty.resolveWith(
                        (context) => EdgeInsetsDirectional.only(
                          start: 16.w,
                          top: 4.w,
                          end: 16.w,
                          bottom: 4,
                        ),
                      ),
                    ),
                    "Save Document",
                    enabled: true,
                    onPressed: () async {
                      ref
                          .read(assetFormProvider.notifier)
                          .updateText('SerialNumber', _serialNumber.text);
                      await ref.read(assetFormProvider.notifier).submit();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
