import 'dart:math';

import 'package:aurora/commentwidget/card_com.dart';
import 'package:aurora/theme/all_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late Map<DateTime, List<Event>> selectedEvents;
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();
  DateTime? startSelectedDay;
  DateTime? endSelectedDay;

  @override
  void initState() {
    selectedEvents = {};
    super.initState();
  }

  List<Event> _getEventsfromDay(DateTime date) {
    return selectedEvents[date] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      if (startSelectedDay == null || endSelectedDay != null) {
        startSelectedDay = selectedDay;
        endSelectedDay = null;
      } else {
        endSelectedDay =
            selectedDay.isBefore(startSelectedDay!)
                ? startSelectedDay
                : selectedDay;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CardCom(
      children: [
        TableCalendar(
          locale: Localizations.localeOf(context).languageCode,
          rowHeight: 60.0,
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(
              fontSize: 14.sp,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w400,
              fontFamily: 'Alexandria',
            ),
            weekendStyle: TextStyle(
              fontSize: 14.sp,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w400,
              fontFamily: 'Alexandria',
            ),
          ),
          focusedDay: selectedDay,
          firstDay: DateTime(1990),
          lastDay: DateTime(2050),
          calendarFormat: format,
          startingDayOfWeek: StartingDayOfWeek.sunday,
          onDaySelected: _onDaySelected,
          selectedDayPredicate: (DateTime date) {
            return isSameDay(selectedDay, date);
          },
          calendarStyle: CalendarStyle(
            isTodayHighlighted: true,
            defaultTextStyle: TextStyle(
              fontSize: 14.sp,
              color: Theme.of(context).colorScheme.onTertiary,
              fontWeight: FontWeight.w400,
              fontFamily: 'Alexandria',
            ),
            todayTextStyle: TextStyle(color: Colors.white),
            defaultDecoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          calendarBuilders: CalendarBuilders(
            markerBuilder: (context, date, events) {
              if (date.day == 6 && _getEventsfromDay(date).isEmpty) {
                return Center(
                  child: Container(
                    width: 24.w,
                    height: 24.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      border: Border.all(
                        color: Theme.of(context).colorScheme.onError,
                        width: 2,
                      ),
                      shape: BoxShape.rectangle,
                    ),
                    child: Center(
                      child: Text(
                        '${date.day}',
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                );
              }
              if (date.weekday == DateTime.saturday ||
                  date.weekday == DateTime.sunday) {
                return Center(
                  child: Container(
                    width: 24.w,
                    height: 24.w,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.onSurface,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      shape: BoxShape.rectangle,
                    ),
                    child: Center(
                      child: Text(
                        '${date.day}',
                        style: Theme.of(
                          context,
                        ).textTheme.labelMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ),
                  ),
                );
              }
              return SizedBox.shrink();
            },
            selectedBuilder: (context, day, focusedDay) {
              if (_getEventsfromDay(day).isEmpty) {
                return Center(
                  child: Container(
                    width: 24.w,
                    height: 24.w,
                    decoration: BoxDecoration(
                      color: SKY_BLUE_200,
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      shape: BoxShape.rectangle,
                    ),
                    child: Center(
                      child: Text(
                        '${day.day}',
                        style: Theme.of(context).textTheme.labelMedium
                            ?.copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                );
              }

              //
            },
          ),
          headerStyle: HeaderStyle(
            formatButtonVisible: false,
            titleCentered: true,
            titleTextStyle: TextStyle(
              fontSize: 14.sp,
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.w600,
              fontFamily: 'Alexandria',
            ),
            leftChevronIcon: Icon(
              Icons.chevron_left,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            rightChevronIcon: Icon(
              Icons.chevron_right,
              color: Theme.of(context).colorScheme.tertiary,
            ),
            headerPadding: const EdgeInsets.symmetric(vertical: 12.0),
            leftChevronPadding: const EdgeInsets.all(16.0),
            rightChevronPadding: const EdgeInsets.all(16.0),
          ),
        ),
      ],
    );
  }
}

class Event {
  final String title;
  Event({required this.title});
}
