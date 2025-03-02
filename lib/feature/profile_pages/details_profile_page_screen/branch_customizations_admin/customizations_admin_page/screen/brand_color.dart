import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_customizations_admin/customizations_admin_page/model/colorlist.dart';
import 'package:aurora/theme/all_color.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BrandColor extends StatelessWidget {
  const BrandColor({super.key});

  @override
  Widget build(BuildContext context) {
    List<Colorlist> CustomizationsColorLight = [
      Colorlist(color: TEXT_PRIMARY.light, title: "Primary Text"),
      Colorlist(color: TEXT_SECONDARY.light, title: "Secondary Text"),
      Colorlist(color: TEXT_ERROR.light, title: "Error Text"),
      Colorlist(color: TEXT_DISABLED.light, title: "Disabled Text"),
      Colorlist(color: NAVY_100, title: "Primary Button"),
      Colorlist(color: TechnoWhite, title: "Secondary Button"),
      Colorlist(color: cyan_50, title: "UI Elements"),
      Colorlist(color: SURFACE_PRIMARY.light, title: "Primary Surface"),
      Colorlist(color: SURFACE_SELECTED.light, title: "Selected Surface"),
    ];
    List<Colorlist> CustomizationsColorDark = [
      Colorlist(color: TEXT_PRIMARY.dark, title: "Primary Text"),
      Colorlist(color: TechnoWhite, title: "Secondary Text"),
      Colorlist(color: TEXT_ERROR.dark, title: "Error Text"),
      Colorlist(color: TEXT_DISABLED.dark, title: "Disabled Text"),
      Colorlist(color: NAVY_100, title: "Primary Button"),
      Colorlist(color: SURFACE_PRIMARY.dark, title: "Secondary Button"),
      Colorlist(color: cyan_50, title: "UI Elements"),
      Colorlist(color: SURFACE_PRIMARY.dark, title: "Primary Surface"),
      Colorlist(color: SURFACE_SELECTED.dark, title: "Selected Surface"),
    ];
    List<Colorlist> colorList =
        Theme.of(context).brightness == Brightness.dark
            ? CustomizationsColorDark
            : CustomizationsColorLight;
    return Wrap(
      spacing: 12,
      runSpacing: 24,
      alignment: WrapAlignment.center,
      children: [
        for (int i = 0; i < colorList.length; i++)
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                shape: const CircleBorder(),
                clipBehavior: Clip.antiAlias,
                elevation: 5,
                child: Container(
                  width: 43.w,
                  height: 43.w,
                  decoration: BoxDecoration(
                    color: colorList[i].color,
                    shape: BoxShape.circle,
                  ),
                  child: SizedBox(),
                ),
              ),
              4.verticalSpace, // Adds space between circle and text
              Text(
                colorList[i].title,
                style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
      ],
    );
  }
}
