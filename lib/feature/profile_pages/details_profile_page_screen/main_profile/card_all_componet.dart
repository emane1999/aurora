import 'package:aurora/feature/profile_pages/details_profile_page_screen/main_profile/custom_switch.dart';
import 'package:aurora/theme/global_theme_providers.dart';
import 'package:bond_form/bond_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardAllComponet extends StatefulWidget {
  final String image;
  final String title;

  final Function()? onPressed;

  const CardAllComponet({
    super.key,
    required this.image,
    required this.title,

    required this.onPressed,
  });

  @override
  State<CardAllComponet> createState() => _CardAllComponetState();
}

class _CardAllComponetState extends State<CardAllComponet> {
  @override
  Widget build(BuildContext context) {
    return Card.filled(
      elevation: 4.w,
      color: Theme.of(context).cardColor,
      shadowColor: Theme.of(context).shadowColor,
      child: Padding(
        padding: EdgeInsetsDirectional.only(
          start: 12.w,
          top: 8.w,
          end: 12.w,
          bottom: 8.w,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 8,
            children: [
              SvgPicture.asset(
                widget.image,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.primary,
                  BlendMode.srcIn, // Color the SVG
                ),
              ),
              Text(
                widget.title,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
              ),
              Spacer(),
              IconButton(
                padding: EdgeInsetsDirectional.zero,
                onPressed: widget.onPressed,
                icon: Icon(Icons.arrow_forward_ios),
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
