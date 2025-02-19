import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardCom extends StatelessWidget {
  const CardCom({super.key, required this.children});
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Card.filled(
      elevation: 4.w,
      color: Theme.of(context).cardColor,
      shadowColor: Theme.of(context).shadowColor,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
            start: 12.w, top: 12.w, end: 12.w, bottom: 24.w),
        child: Column(
            spacing: 12,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children),
      ),
    );
  }
}
