import 'package:aurora/generated/l10n.dart';

import 'package:flutter/material.dart';

class HeadingAllText extends StatelessWidget {
  final int indexToSearch;
  const HeadingAllText({super.key, required this.indexToSearch});

  @override
  Widget build(BuildContext context) {
    final itemList = [
      S.of(context).attendance,
      S.of(context).announcementsUpcomingEvents,
      S.of(context).performanceTracking,
      S.of(context).yourRequests,
      S.of(context).recentlyUsedFeatures,
      S.of(context).remainingBalance,
      S.of(context).attendanceHistory,
      S.of(context).meetingsForToday,
      S.of(context).meetingDetails,
      "Settings",
      "Identification",
      "Address",
    ];

    String item = getItemFromIndex(itemList, indexToSearch);
    return Text(item, style: Theme.of(context).textTheme.displaySmall);
  }
}

String getItemFromIndex(List<String> list, int index) {
  if (index < list.length) {
    return list[index];
  } else {
    return 'Item not found';
  }
}
