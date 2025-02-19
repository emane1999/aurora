import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_Notification_page/Notifications/screen/branch_tab/notification_all_screen.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_Notification_page/Notifications/screen/branch_tab/notification_announcements_screen.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_Notification_page/Notifications/screen/branch_tab/notification_events_screen.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_Notification_page/Notifications/screen/branch_tab/notification_requests_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

enum NotificationType { All, Announcements, Events, Requests }

class NotificationInfo extends StatefulWidget {
  const NotificationInfo({super.key});

  @override
  State<NotificationInfo> createState() => _NotificationInfoState();
}

class _NotificationInfoState extends State<NotificationInfo>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(.1.sh),
          child: Container(
            padding: EdgeInsets.zero,
            color: Theme.of(context).colorScheme.surfaceContainerHigh,
            child: TabBar(
              tabAlignment: TabAlignment.start,
              isScrollable: true,
              labelPadding: EdgeInsetsDirectional.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              controller: tabController,
              unselectedLabelColor: Theme.of(context).colorScheme.primary,
              unselectedLabelStyle: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w200),
              labelStyle: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w500),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 2.0,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              tabs: [
                Tab(text: "${NotificationType.All.name}"),
                Tab(text: "${NotificationType.Announcements.name}"),
                Tab(text: "${NotificationType.Events.name}"),
                Tab(text: "${NotificationType.Requests.name}"),
              ],
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
        leadingWidth: 15.sw,
        leading: Row(
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                context.pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            Text(
              'Notifications',
              style: Theme.of(
                context,
              ).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          NotificationAllScreen(tabController: tabController),
          NotificationAnnouncementsScreen(tabController: tabController),
          NotificationEventsScreen(tabController: tabController),
          NotificationRequestsScreen(tabController: tabController),
        ],
      ),
    );
  }
}
