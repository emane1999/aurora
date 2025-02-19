import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourRequests extends StatelessWidget {
  const YourRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return CardCom(
      children: [
        Text(
          "Request #2879 ",
          style: Theme.of(
            context,
          ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600),
        ),
        4.verticalSpace,
        DetailsRequst(tite: S.of(context).requestType, subTite: " Sick Leave"),
        DetailsRequst(
          tite: S.of(context).date,
          subTite: "Sun, 27 Oct 2024, 8:55 AM",
        ),
        DetailsRequst(tite: S.of(context).requestStatus, subTite: " Pending"),
        4.verticalSpace,
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [BSecButton(text: S.of(context).viewMore)],
        ),
      ],
    );
  }
}
