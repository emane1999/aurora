import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/screen/admin/bank_accounts.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/screen/user/contract_time.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/screen/user/parties.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/screen/user/prson_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContractAdmin extends StatelessWidget {
  const ContractAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.1.sh),
        child: HeaderOfEachBranch(
          title: 'Contract',
          preferredSize: Size.fromHeight(.1.sh),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsetsDirectional.only(
          top: 24,
          start: 16,
          end: 16,
          bottom: 24,
        ),
        children: [
          ContractTimeWidget(),
          16.verticalSpace,
          PartiesWidget(),
          16.verticalSpace,
          PrsonDetails(),
          16.verticalSpace,
          BankAccounts(),
        ],
      ),
    );
  }
}
