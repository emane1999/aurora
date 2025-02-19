import 'package:aurora/commentwidget/b_button.dart';
import 'package:aurora/commentwidget/b_error.dart';
import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamRequests extends StatelessWidget {
  const TeamRequests({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsetsDirectional.only(start: 16, end: 16, top: 4),
      shrinkWrap: true,
      children: [
        CardCom(
          children: [
            Text(
              "Request #2879 ",
              style: Theme.of(
                context,
              ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600),
            ),
            16.verticalSpace,
            DetailsRequst(tite: 'Request Type:', subTite: 'Sick Leave'),
            DetailsRequst(tite: 'Date:', subTite: 'Sun, 27 Oct 2024'),
            DetailsRequst(tite: 'Time:', subTite: '8:55 AM'),
            DetailsRequst(tite: 'Request Status:', subTite: ' Pending'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BError(text: 'Reject'),
                16.horizontalSpace,
                BButton(
                  style: Theme.of(context).filledButtonTheme.style?.copyWith(
                    padding: WidgetStateProperty.all(
                      EdgeInsetsDirectional.only(
                        start: 16.w,
                        top: 4.w,
                        end: 16.w,
                        bottom: 4.w,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  "Accept",
                  enabled: true,
                ),
              ],
            ),
          ],
        ),
        24.verticalSpace,
        CardCom(
          children: [
            Text(
              "Edit Request for IBAN ",
              style: Theme.of(
                context,
              ).textTheme.displaySmall?.copyWith(fontWeight: FontWeight.w600),
            ),
            16.verticalSpace,
            DetailsRequst(tite: 'Employee Name:', subTite: 'John Doe'),
            DetailsRequst(tite: 'Date:', subTite: 'Sun, 27 Oct 2024'),
            DetailsRequst(tite: 'Time:', subTite: '8:55 AM'),
            DetailsRequst(
              tite: 'Request Type:',
              subTite: ' Edit for IBAN number',
            ),
            DetailsRequst(tite: 'Previous Edit:', subTite: '  Lorem Ipsum'),
            DetailsRequst(tite: 'Updated Edit:', subTite: '  Lorem Ipsum'),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BError(text: 'Reject'),
                16.horizontalSpace,
                BButton(
                  style: Theme.of(context).filledButtonTheme.style?.copyWith(
                    padding: WidgetStateProperty.all(
                      EdgeInsetsDirectional.only(
                        start: 16.w,
                        top: 4.w,
                        end: 16.w,
                        bottom: 4.w,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  "Accept",
                  enabled: true,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
