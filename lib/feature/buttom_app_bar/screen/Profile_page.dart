import 'package:aurora/commentwidget/heading_all_text.dart';
import 'package:aurora/commentwidget/person_des.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/main_profile/card_all_componet.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/main_profile/card_swich_componet.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/main_profile/custom_switch.dart';
import 'package:aurora/router/router_utils.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool _enable = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
              start: 16.w,
              end: 16.w,
              top: 24.w,
              bottom: 24.w,
            ),
            child: PersonDes(
              detail: "Technical Team Lead - #8700",
              isshow: false,
            ),
          ),
          Divider(color: BORDER_PRIMARY.light, thickness: 1, endIndent: 1),
          Expanded(
            child: ListView(
              padding: EdgeInsetsDirectional.only(
                start: 16.w,
                end: 16.w,
                top: 24.w,
                bottom: 24.w,
              ),
              children: [
                CardAllComponet(
                  image: 'assets/images/preson.svg',
                  title: "Personal Info",

                  onPressed: () {
                    context.pushNamed(AppRoute.personal_Info.toName);
                  },
                ),
                24.verticalSpace,
                CardAllComponet(
                  image: 'assets/images/organization.svg',
                  title: "Organizational Info",

                  onPressed: () {
                    context.pushNamed(AppRoute.organizational_info_user.toName);
                  },
                ),
                24.verticalSpace,
                CardAllComponet(
                  image: 'assets/images/vectors.svg',
                  title: "Finance & Salary",
                  onPressed: () {
                    context.pushNamed(AppRoute.FinanceSalary.toName);
                  },
                ),
                24.verticalSpace,
                CardAllComponet(
                  image: 'assets/images/contract.svg',
                  title: "Contract",

                  onPressed: () {
                    context.pushNamed(AppRoute.contract.toName);
                  },
                ),
                24.verticalSpace,
                CardAllComponet(
                  image: 'assets/images/annualIcon.svg',
                  title: "Leaves & Vacations",

                  onPressed: () {
                    context.pushNamed(AppRoute.Leaves_Vacations.toName);
                  },
                ),
                24.verticalSpace,
                CardAllComponet(
                  image: 'assets/images/documents.svg',
                  title: "Documents",

                  onPressed: () {
                    context.pushNamed(AppRoute.Documents.toName);
                  },
                ),
                24.verticalSpace,
                CardAllComponet(
                  image: 'assets/images/courses.svg',
                  title: "Courses & Training",

                  onPressed: () {
                    context.pushNamed(AppRoute.CoursesTraining.toName);
                  },
                ),
                24.verticalSpace,
                CardAllComponet(
                  image: 'assets/images/assets.svg',
                  title: "Assets",

                  onPressed: () {
                    context.pushNamed(AppRoute.Assets.toName);
                  },
                ),
                24.verticalSpace,
                HeadingAllText(indexToSearch: 9),
                24.verticalSpace,
                CardAllComponet(
                  image: 'assets/images/notifications.svg',
                  title: "Notifications",

                  onPressed: () {
                    context.pushNamed(AppRoute.notifications.toName);
                  },
                ),
                24.verticalSpace,
                CardAllComponet(
                  image: 'assets/images/Icon.svg',
                  title: "Language",

                  onPressed: () {
                    context.pushNamed(AppRoute.language.toName);
                  },
                ),
                24.verticalSpace,
                CardAllComponet(
                  image: 'assets/images/customizations.svg',
                  title: "Customizations",

                  onPressed: () {
                    context.pushNamed(AppRoute.CustomizationsAdmin.toName);
                  },
                ),
                24.verticalSpace,
                CardSwichComponet(
                  image: 'assets/images/Fingerprint (1).svg',
                  title: "Biometric Login",

                  onPressed: () {},
                  switchType: SwitchType.biometric,
                ),
                24.verticalSpace,
                CardSwichComponet(
                  image: 'assets/images/theme.svg',
                  title: "Light Theme",

                  onPressed: () {},
                  switchType: SwitchType.theme,
                ),
                24.verticalSpace,
                SizedBox(
                  height: 70.h,
                  child: Card.filled(
                    elevation: 4.w,
                    color: Theme.of(context).cardColor,
                    shadowColor: Theme.of(context).shadowColor,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: 12.w,
                        top: 8.w,
                        end: 12.w,
                        bottom: 8.w,
                      ),
                      child: Center(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          spacing: 8,
                          children: [
                            SvgPicture.asset(
                              'assets/images/logout.svg',
                              colorFilter: ColorFilter.mode(
                                Theme.of(context).brightness == Brightness.dark
                                    ? Theme.of(context).colorScheme.onError
                                    // Dark mode background color
                                    : Theme.of(context).colorScheme.onError,
                                BlendMode.srcIn, // Color the SVG
                              ),
                            ),
                            Text(
                              "Logout",
                              style: Theme.of(
                                context,
                              ).textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeight.w300,
                                color:
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Theme.of(context).colorScheme.onError
                                        // Dark mode background color
                                        : Theme.of(context).colorScheme.error,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                24.verticalSpace,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
