import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomSwitch({Key? key, required this.value, required this.onChanged})
      : super(key: key);

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch>
    with SingleTickerProviderStateMixin {
  Animation? _circleAnimation;
  AnimationController? _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 60));
    _circleAnimation = AlignmentTween(
            begin: widget.value ? Alignment.centerRight : Alignment.centerLeft,
            end: widget.value ? Alignment.centerLeft : Alignment.centerRight)
        .animate(CurvedAnimation(
            parent: _animationController!, curve: Curves.linear));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AnimatedBuilder(
        animation: _animationController!,
        builder: (context, child) {
          return GestureDetector(
            onTap: () {
              if (_animationController!.isCompleted) {
                _animationController!.reverse();
              } else {
                _animationController!.forward();
              }
              widget.value == false
                  ? widget.onChanged(true)
                  : widget.onChanged(false);
            },
            child: Container(
              width: 48.0.w,
              height: 25.0.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0.w),
                color: _circleAnimation!.value == Alignment.centerLeft
                    ? Theme.of(context).colorScheme.onSurface
                    : Theme.of(context).colorScheme.primary,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.only(
                    top: 4.0.w, bottom: 4.0.w, start: 4.0.w, end: 4.0.w),
                child: Container(
                  alignment: widget.value
                      ? ((Directionality.of(context) == TextDirection.rtl)
                          ? Alignment.centerLeft
                          : Alignment.centerRight)
                      : ((Directionality.of(context) == TextDirection.rtl)
                          ? Alignment.centerRight
                          : Alignment.centerLeft),
                  child: Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
