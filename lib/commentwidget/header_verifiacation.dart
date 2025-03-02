import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderVerifiacation extends StatelessWidget {
  final String tite;
  final String subtite;
  const HeaderVerifiacation({
    super.key,
    required this.tite,
    required this.subtite,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tite, style: Theme.of(context).textTheme.headlineSmall),
        8.verticalSpace,
        Text(
          maxLines: 2,
          subtite,
          style: Theme.of(
            context,
          ).textTheme.labelMedium?.copyWith(fontSize: 16.sp),
        ),
      ],
    );
  }
}
