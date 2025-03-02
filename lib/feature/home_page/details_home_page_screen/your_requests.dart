import 'package:aurora/commentwidget/b_sec_button.dart';
import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/commentwidget/details_requst.dart';
import 'package:aurora/feature/home_page/details_home_page_screen/list_request.dart';
import 'package:aurora/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class YourRequests extends StatelessWidget {
  const YourRequests({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController? _scrollController = ScrollController();
    return SizedBox(
      height: 320.h,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              controller: _scrollController,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsetsDirectional.zero,
              shrinkWrap: true,
              children: [
                ListRequest(),
                ListRequest(),
                ListRequest(),
                ListRequest(),
                ListRequest(),
                ListRequest(),
                ListRequest(),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_left,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () {
                  _scrollController.animateTo(
                    _scrollController.position.pixels -
                        200, // Adjust the scroll amount as needed
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),

              IconButton(
                icon: Icon(
                  Icons.keyboard_arrow_right,
                  color: Theme.of(context).colorScheme.primary,
                ),
                onPressed: () {
                  _scrollController.animateTo(
                    _scrollController.position.pixels +
                        200, // Adjust the scroll amount as needed
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
