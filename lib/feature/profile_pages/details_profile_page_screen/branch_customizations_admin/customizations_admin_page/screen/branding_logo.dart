import 'dart:io';

import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/theme/colors.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BrandingLogo extends StatefulWidget {
  const BrandingLogo({super.key});

  @override
  State<BrandingLogo> createState() => _BrandingLogoState();
}

class _BrandingLogoState extends State<BrandingLogo> {
  String _fileText = "";
  File? _selectedFile;
  bool _isSelected = true;

  @override
  Widget build(BuildContext context) {
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

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 222.w,
              height: 107.w,
              child: OutlinedButton(
                style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
                  side: WidgetStateProperty.all(
                    BorderSide(
                      color:
                          Theme.of(
                            context,
                          ).colorScheme.tertiary, // Set custom border color
                      width: 1.0, // Set custom border width
                    ),
                  ),
                ),
                onPressed: _pickFile,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/Branding.svg',
                      width: 110.w,
                      height: 67.w,
                    ),
                  ],
                ),
              ),
            ),
            8.verticalSpace,
            Text(
              "pdf, doc, docs, ppt, pptx, jpeg, png",
              style: Theme.of(context).textTheme.labelMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
            16.verticalSpace,
            BSecButton(
              style: Theme.of(context).filledButtonTheme.style?.copyWith(
                backgroundColor: WidgetStateProperty.all(SURFACE_NAV.light),
                padding: WidgetStateProperty.all(
                  EdgeInsetsDirectional.only(
                    top: 7,
                    start: 12,
                    end: 12,
                    bottom: 7,
                  ),
                ),
              ),
              text: 'Replace Logo',
              onPressed: () {},
            ),
          ],
        ),
        48.verticalSpace,
      ],
    );
  }
}
