import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:aurora/commentwidget/expandable_widegs.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class RequestsDetails extends StatelessWidget {
  const RequestsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Row(
          spacing: 12,
          children: [
            SizedBox(
              width: 248.w,
              child: TextField(
                style: Theme.of(
                  context,
                ).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                  labelText: 'Search ',
                  suffixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
            FilledButton(
              style: Theme.of(context).filledButtonTheme.style?.copyWith(
                backgroundColor: WidgetStateProperty.all(
                  Theme.of(context).brightness == Brightness.dark
                      ? Theme.of(context).colorScheme.tertiary
                      // Dark mode background color
                      : Theme.of(context).colorScheme.onSecondary,
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                padding: WidgetStateProperty.all(
                  EdgeInsetsDirectional.only(
                    top: 4.w,
                    end: 8.w,
                    start: 8.w,
                    bottom: 4.w,
                  ),
                ),
              ),
              onPressed: () {},
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  spacing: 8,
                  children: [
                    Icon(
                      Icons.filter_list,
                      color: Theme.of(context).colorScheme.surfaceContainerHigh,
                    ),
                    Text(
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      "Filter",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              CardCom(
                children: [
                  Text(
                    "Request #2879 ",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  4.verticalSpace,
                  DetailsRequst(
                    tite: S.of(context).requestType,
                    subTite: " Sick Leave",
                  ),
                  DetailsRequst(
                    tite: S.of(context).date,
                    subTite: "Sun, 27 Oct 2024, 8:55 AM",
                  ),
                  DetailsRequst(tite: "Time:", subTite: " 8:55 AM"),
                  DetailsRequst(
                    tite: S.of(context).requestStatus,
                    subTite: " Pending",
                  ),
                  12.verticalSpace,
                  ExpandableWidegs(colorchange: false),
                ],
              ),
              24.verticalSpace,
              CardCom(
                children: [
                  Text(
                    "Request #2879 ",
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  4.verticalSpace,
                  DetailsRequst(
                    tite: S.of(context).requestType,
                    subTite: " Sick Leave",
                  ),
                  DetailsRequst(
                    tite: S.of(context).date,
                    subTite: "Sun, 27 Oct 2024, 8:55 AM",
                  ),
                  DetailsRequst(tite: "Time:", subTite: " 8:55 AM"),
                  DetailsRequst(
                    tite: S.of(context).requestStatus,
                    subTite: " Pending",
                  ),
                  12.verticalSpace,
                  ExpandableWidegs(colorchange: true),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
