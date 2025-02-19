import 'package:aurora/feature/request_page.dart/details_request_page_screen/my_requests.dart';
import 'package:aurora/feature/request_page.dart/details_request_page_screen/team_requests.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RequestsAdmin extends StatelessWidget {
  const RequestsAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        Row(
          spacing: 12,
          children: [
            SizedBox(
              width: 248.w,
              child: TextField(
                style: Theme.of(
                  context,
                ).textTheme.labelSmall?.copyWith(fontWeight: FontWeight.w300),
                decoration: InputDecoration(
                  labelText: 'Search ',
                  suffixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
            FilledButton(
              style: Theme.of(context).filledButtonTheme.style?.copyWith(
                backgroundColor: WidgetStateProperty.all(
                  Theme.of(context).colorScheme.tertiary,
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                padding: WidgetStateProperty.all(
                  EdgeInsetsDirectional.only(
                    top: 4.w,
                    end: 8.w,
                    start: 8.w,
                    bottom: 4.w,
                  ),
                ),
              ),
              onPressed: () {},
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Row(
                  spacing: 8,
                  children: [
                    Icon(
                      Icons.account_balance_sharp,
                      color: Theme.of(context).colorScheme.surfaceContainerHigh,
                    ),
                    Text(
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      "Filter",
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: DefaultTabController(
            length: 2,
            child: Column(
              spacing: 24,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                  child: TabBar(
                    unselectedLabelColor: Theme.of(context).colorScheme.primary,
                    unselectedLabelStyle: Theme.of(context)
                        .textTheme
                        .displaySmall
                        ?.copyWith(fontWeight: FontWeight.w300),
                    labelStyle: Theme.of(context).textTheme.displaySmall,
                    tabs: [
                      Tab(text: "My Requests"),
                      Tab(text: "Team Requests"),
                    ],
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                const Expanded(
                  child: TabBarView(
                    children: [
                      Center(child: MyRequests()),
                      Center(child: TeamRequests()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
