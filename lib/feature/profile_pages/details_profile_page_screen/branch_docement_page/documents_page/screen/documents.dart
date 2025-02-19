import 'dart:ui';
import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_docement_page/documents_page/screen/my_Doc.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_docement_page/documents_page/screen/new_document.dart';
import 'package:expandable/expandable.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class Documents extends StatelessWidget {
  const Documents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.1.sh),
        child: HeaderOfEachBranch(
          title: 'Documents',
          preferredSize: Size.fromHeight(.1.sh),
          showIcon: true,
          icon: Icon(Icons.add, color: Theme.of(context).colorScheme.primary),
          onPressed: () {
            WoltModalSheet.show(
              context: context,
              modalBarrierColor: Colors.transparent,
              modalDecorator: (Widget child) {
                return Stack(
                  children: [
                    Positioned.fill(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                        child: Container(),
                      ),
                    ),
                    Positioned.fill(child: child),
                  ],
                );
              },
              pageListBuilder: (BuildContext context) {
                return [
                  SliverWoltModalSheetPage(
                    navBarHeight: 4,
                    topBar: Material(
                      elevation: 4,
                      color: Colors.grey.shade300,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      shadowColor: Theme.of(context).colorScheme.shadow,
                    ),
                    mainContentSliversBuilder: (BuildContext context) {
                      return [SliverToBoxAdapter(child: NewDocument())];
                    },
                  ),
                ];
              },
            );
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.only(start: 16.w, top: 24.w, end: 16.w),
        child: Column(
          spacing: 24,
          children: [
            MyDoc(docType: 'My Documents'),
            MyDoc(docType: 'My HR Letters'),
          ],
        ),
      ),
    );
  }
}
