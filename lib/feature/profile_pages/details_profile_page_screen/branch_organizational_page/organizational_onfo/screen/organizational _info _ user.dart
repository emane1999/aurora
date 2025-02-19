import 'package:aurora/commentwidget/header_of_each_branch.dart';
import 'package:aurora/feature/profile_pages/details_profile_page_screen/branch_organizational_page/organizational_onfo/providers/org_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrganizationalInfoUser extends StatelessWidget {
  const OrganizationalInfoUser({super.key});

  @override
  Widget build(BuildContext context) {
    /*  var info = [
      Organizational(
          email: 'abcd@gmail.com',
          image: 'assets/images/Image.png',
          firstName: 'John ',
          lastName: 'Doe',
          phone: ' +962874638948',
          position: 'Manager'),
      Organizational(
          email: 'abcd@gmail.com',
          image: 'assets/images/Image.png',
          firstName: 'John ',
          lastName: 'Doe',
          phone: ' +962874638948',
          position: 'UX/UI Designer'),
      Organizational(
          email: 'abcd@gmail.com',
          image: 'assets/images/Image.png',
          firstName: 'John ',
          lastName: 'Doe',
          phone: ' +962874638948',
          position: 'UX/UI Designer'),
      Organizational(
          email: 'abcd@gmail.com',
          image: 'assets/images/Image.png',
          firstName: 'John ',
          lastName: 'Doe',
          phone: ' +962874638948',
          position: 'UX/UI Designer'),
      Organizational(
          email: 'abcd@gmail.com',
          image: 'assets/images/Image.png',
          firstName: 'John ',
          lastName: 'Doe',
          phone: ' +962874638948',
          position: 'UX/UI Designer'),
      Organizational(
          email: 'abcd@gmail.com',
          image: 'assets/images/Image.png',
          firstName: 'John ',
          lastName: 'Doe',
          phone: ' +962874638948',
          position: 'UX/UI Designer'),
      Organizational(
          email: 'abcd@gmail.com',
          image: 'assets/images/Image.png',
          firstName: 'John ',
          lastName: 'Doe',
          phone: ' +962874638948',
          position: 'UX/UI Designer'),
    ];*/
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(.10.sh), // Set the height of the app bar
        child: HeaderOfEachBranch(
          title: 'Organizational Info',
          preferredSize: Size.fromHeight(.10.sh),
        ),
      ),
      body: RawScrollbar(
        thickness: 4,
        padding: EdgeInsets.only(left: 3, right: 8.w),
        mainAxisMargin: 200,
        thumbColor: Theme.of(context).colorScheme.onSurfaceVariant,
        thumbVisibility: true,
        radius: Radius.circular(4),
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            top: 24.w,
            end: 16.w,
            start: 16.w,
          ),
          child: Column(
            children: [
              Row(
                spacing: 12,
                children: [
                  SizedBox(
                    width: 248.w,
                    child: TextField(
                      style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
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
                            color:
                                Theme.of(
                                  context,
                                ).colorScheme.surfaceContainerHigh,
                          ),
                          Text(
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            "Filter",
                            style: Theme.of(
                              context,
                            ).textTheme.labelMedium?.copyWith(
                              color:
                                  Theme.of(
                                    context,
                                  ).colorScheme.onPrimaryContainer,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              24.verticalSpace,
              Expanded(
                flex: 1,
                child: Consumer(
                  builder: (context, ref, child) {
                    final req = ref.watch(getOrgDataProvider);
                    return req.when(
                      data: (data) {
                        final org = data.data!.data;

                        return ListView.separated(
                          itemCount: org.length,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return Row(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                    start: 60.w,
                                  ),
                                  child: Container(
                                    width: 2.w,
                                    height: 24.w,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                  ),
                                ),
                              ],
                            );
                          },
                          itemBuilder: (context, index) {
                            return Card.filled(
                              elevation: 4.w,
                              color: Theme.of(context).cardColor,
                              shadowColor: Theme.of(context).shadowColor,
                              child: Padding(
                                padding: EdgeInsetsDirectional.all(10),
                                child: Row(
                                  spacing: 15,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipOval(
                                      child: SizedBox.fromSize(
                                        size: Size.fromRadius(48),
                                        child: Image.network(
                                          org[index].imageUrl,
                                          width: 80.w,
                                          height: 80.w,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  Container(
                                                    width: 80.w,
                                                    height: 80.w,
                                                    color: Colors.grey,
                                                  ),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Flexible(
                                      flex: 10,
                                      child: Column(
                                        spacing: 4,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            org[index].name,
                                            style: Theme.of(
                                              context,
                                            ).textTheme.labelLarge?.copyWith(
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Text(
                                            org[index].position,
                                            style:
                                                Theme.of(
                                                  context,
                                                ).textTheme.labelMedium,
                                          ),
                                          Text(
                                            "Phone:" + "" + org[index].phone,
                                            style: Theme.of(
                                              context,
                                            ).textTheme.labelSmall?.copyWith(
                                              fontWeight: FontWeight.w300,
                                              color:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.onSecondary,
                                            ),
                                          ),
                                          Text(
                                            "Email:" + "" + org[index].email,
                                            style: Theme.of(
                                              context,
                                            ).textTheme.labelSmall?.copyWith(
                                              fontWeight: FontWeight.w300,
                                              color:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.onSecondary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      error:
                          (error, stackTrace) => ListView(
                            shrinkWrap: true,
                            children: [Text(error.toString())],
                          ),
                      loading: () => CircularProgressIndicator(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
