// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:aurora/feature/profile_pages/details_profile_page_screen/main_profile/custom_switch.dart';
import 'package:bond_form/bond_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CardAllComponet extends StatefulWidget {
  final String image;
  final String title;
  final bool isComplet;
  final Function()? onPressed;
  const CardAllComponet({
    super.key,
    required this.image,
    required this.title,
    required this.isComplet,
    required this.onPressed,
  });

  @override
  State<CardAllComponet> createState() => _CardAllComponetState();
}

class _CardAllComponetState extends State<CardAllComponet> {
  bool _enable = false;
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
              SvgPicture.asset(widget.image),
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
                icon:
                    widget.isComplet
                        ? Icon(Icons.arrow_forward_ios) ?? SizedBox()
                        : CustomSwitch(
                          value: _enable,
                          onChanged: (bool val) {
                            setState(() {
                              _enable = val;
                            });
                          },
                        ),
                color: Theme.of(context).colorScheme.primary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
