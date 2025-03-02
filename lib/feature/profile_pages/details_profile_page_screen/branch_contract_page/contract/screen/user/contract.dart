import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/providers/contract_provider.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/screen/user/contract_time.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/screen/user/parties.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_contract_page/contract/screen/user/prson_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Contract extends StatelessWidget {
  const Contract({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.07.sh),
        child: HeaderOfEachBranch(
          title: 'Contract',
          preferredSize: Size.fromHeight(.07.sh),
        ),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final req = ref.watch(getContractInfoProvider);
          return req.when(
            data: (data) {
              print(data.data?.data ?? 'ss');
              return ListView(
                shrinkWrap: true,
                padding: EdgeInsetsDirectional.only(
                  top: 24,
                  start: 16,
                  end: 16,
                  bottom: 24,
                ),
                children: [
                  ContractTimeWidget(
                    contractTimeData: data.data?.data.contractTime,
                  ),
                  16.verticalSpace,
                  PartiesWidget(PartiesData: data.data?.data.parties),
                  16.verticalSpace,
                  PrsonDetails(jobDetails: data.data?.data.jobDetails),
                ],
              );
            },
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
