import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HeaderHome extends StatelessWidget {
  final String tite;

  const HeaderHome({super.key, required this.tite});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(tite, style: Theme.of(context).textTheme.displayLarge),
        12.verticalSpace,
        Divider(),
      ],
    );
  }
}
