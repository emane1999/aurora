import 'package:aurora/theme/all_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonDes extends StatelessWidget {
  final bool? isshow;
  final bool? isshowicon;
  final String detail;
  const PersonDes({
    super.key,
    this.isshow,
    required this.detail,
    this.isshowicon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            ClipOval(
              child: SizedBox.fromSize(
                size: Size.fromRadius(48),
                child: Image.asset(
                  'assets/images/Image.png',
                  width: 80.w,
                  height: 80.w,
                ),
              ),
            ),
            isshowicon ?? true
                ? SizedBox()
                : Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        Theme.of(context).brightness == Brightness.dark
                            ? Theme.of(context).colorScheme.tertiary
                            : Theme.of(context).colorScheme.onSecondary,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      Icons.edit,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
          ],
        ),
        24.horizontalSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "John Doe",
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w700),
            ),
            8.verticalSpace,
            Text(
              detail,
              style:
                  isshow ?? true
                      ? Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w300,
                      )
                      : Theme.of(context).textTheme.labelMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).colorScheme.onSecondary,
                      ),
            ),
          ],
        ),
      ],
    );
  }
}
