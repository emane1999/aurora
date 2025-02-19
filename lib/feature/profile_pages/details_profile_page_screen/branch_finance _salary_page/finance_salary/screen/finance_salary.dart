import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_finance%20_salary_page/finance_salary/screen/deductions_per_month.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_finance%20_salary_page/finance_salary/screen/payslip.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_finance%20_salary_page/finance_salary/screen/salary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FinanceSalary extends StatefulWidget {
  const FinanceSalary({super.key});

  @override
  State<FinanceSalary> createState() => _FinanceSalaryState();
}

class _FinanceSalaryState extends State<FinanceSalary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.1.sh),
        child: HeaderOfEachBranch(
          title: 'Finance & Salary',
          preferredSize: Size.fromHeight(.1.sh),
        ),
      ),
      body: ListView(
        padding: EdgeInsetsDirectional.only(
          top: 24.w,
          end: 16.w,
          start: 16.w,
          bottom: 24.w,
        ),
        shrinkWrap: true,
        children: [
          Salary(),
          24.verticalSpace,
          Payslip(),
          24.verticalSpace,
          DeductionsPerMonth(),
        ],
      ),
    );
  }
}
