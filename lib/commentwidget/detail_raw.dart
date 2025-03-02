// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DetailRaw extends StatelessWidget {
  final Icon images;
  final String tite;
  const DetailRaw({Key? key, required this.images, required this.tite})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8.w,
      children: [
        images,
        Text(
          tite,
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: Theme.of(context).colorScheme.onSecondary,
          ),
        ),
      ],
    );
  }
}
