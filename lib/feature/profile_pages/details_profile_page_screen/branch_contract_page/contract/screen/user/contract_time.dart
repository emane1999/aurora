import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/model/contract_response_model.dart';
import 'package:aurora/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ContractTimeWidget extends StatelessWidget {
  final ContractTime? contractTimeData;
  const ContractTimeWidget({super.key, this.contractTimeData});

  @override
  Widget build(BuildContext context) {
    return CardCom(
      children: [
        Text("Contract Time", style: Theme.of(context).textTheme.displaySmall),
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
              'assets/images/today.svg',
              width: 24.w,
              height: 24.w,
            ),
            DetailsRequst(
              tite: 'Start Date:',
              subTite: contractTimeData?.startDate.toString() ?? '',
            ),
          ],
        ),
        4.verticalSpace,
        Row(
          spacing: 12,
          children: [
            SvgPicture.asset(
              'assets/images/today.svg',
              width: 24.w,
              height: 24.w,
            ),
            DetailsRequst(
              tite: 'End Date:',
              subTite: contractTimeData?.endDate.toString() ?? '',
            ),
          ],
        ),
        4.verticalSpace,
        Row(
          spacing: 12,
          children: [
            SvgPicture.asset(
              'assets/images/today.svg',
              width: 24.w,
              height: 24.w,
            ),
            DetailsRequst(
              tite: 'Contract Period:',
              subTite: contractTimeData?.contractPeriod ?? '',
            ),
          ],
        ),
        4.verticalSpace,
        Row(
          spacing: 12,
          children: [
            SvgPicture.asset(
              'assets/images/status.svg',
              width: 20.w,
              height: 20.w,
            ),
            DetailsRequst(
              tite: 'Status:',
              subTite: contractTimeData?.status ?? '',
            ),
          ],
        ),
      ],
    );
  }
}
