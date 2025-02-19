import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/model/contract_response_model.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class PrsonDetails extends ConsumerWidget {
  final JobDetails? jobDetails;
  const PrsonDetails({super.key, this.jobDetails});

  @override
  Widget build(BuildContext context, ref) {
    return CardCom(
      children: [
        Text("Job Details", style: Theme.of(context).textTheme.displaySmall),
        4.verticalSpace,
        Divider(
          color: BORDER_PRIMARY.light,
          indent: 2,
          endIndent: 2,
          height: 1,
        ),
        4.verticalSpace,
        Row(
          spacing: 12,
          children: [
            SvgPicture.asset(
              'assets/images/preson.svg',
              width: 24.w,
              height: 24.w,
            ),
            DetailsRequst(
              tite: 'Position:',
              subTite: jobDetails?.position ?? '',
            ),
          ],
        ),
        4.verticalSpace,
        Row(
          spacing: 12,
          children: [
            SvgPicture.asset(
              'assets/images/clock_in.svg',
              width: 24.w,
              height: 24.w,
            ),
            DetailsRequst(
              tite: 'End Date:',
              subTite: jobDetails?.duration ?? '',
            ),
          ],
        ),
        4.verticalSpace,
      ],
    );
  }
}
