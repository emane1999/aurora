import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomColor extends StatelessWidget {
  const CustomColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 19,
      children: [
        Text(
          "Custom Color:",
          style: Theme.of(context).textTheme.labelLarge?.copyWith(
                fontWeight: FontWeight.w400,
              ),
        ),
        OutlinedButton(
          style: Theme.of(context).outlinedButtonTheme.style?.copyWith(
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10.0), // Set the border radius
                  ),
                ),
                foregroundColor: WidgetStateProperty.all<Color>(
                    Theme.of(context)
                        .colorScheme
                        .primary), // Foreground color for text
                backgroundColor: WidgetStateProperty.all<Color>(
                    Colors.white), // Background color
                side: WidgetStateProperty.all<BorderSide>(BorderSide(
                    color: Theme.of(context)
                        .colorScheme
                        .tertiary)), // Border color
              ),
          onPressed: () {},
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              "#9A3BD6",
              style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
        Card(
          shape: CircleBorder(
              side: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          )),
          elevation: 5,
          child: Container(
            width: 43.w,
            height: 43.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.onInverseSurface,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.all(7),
              child: Container(
                width: 30.w,
                height: 30.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
