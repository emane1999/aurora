import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const double _kItemExtent = 32.0;

class CupertinoPickers extends StatefulWidget {
  final DateTime? dateTime;
  const CupertinoPickers({super.key, this.dateTime});

  @override
  State<CupertinoPickers> createState() => _CupertinoPickersState();
}

class _CupertinoPickersState extends State<CupertinoPickers> {
  int _selectedMonth = 0;
  int _selectedDay = 0;
  int _selectedYear = 0;

  @override
  void initState() {
    _selectedMonth = widget.dateTime?.month ?? 0;
    _selectedDay = widget.dateTime?.day ?? 0;
    _selectedYear = widget.dateTime?.year ?? 0;
    super.initState();
  }

  final List<String> _months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];

  final List<String> _days =
      List<String>.generate(31, (index) => (index + 1).toString());

  final List<String> _years =
      List<String>.generate(126, (index) => (1900 + index).toString());

  void _showDialog() {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 230,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: CupertinoPicker(
                magnification: 1.22,
                squeeze: 1.2,
                useMagnifier: true,
                itemExtent: _kItemExtent,
                scrollController: FixedExtentScrollController(
                  initialItem: _selectedMonth,
                ),
                onSelectedItemChanged: (int selectedItem) {
                  setState(() {
                    _selectedMonth = selectedItem;
                  });
                },
                children: List<Widget>.generate(_months.length, (int index) {
                  return Center(child: Text(_months[index]));
                }),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CupertinoPicker(
                magnification: 1.22,
                squeeze: 1.2,
                useMagnifier: true,
                itemExtent: _kItemExtent,
                scrollController: FixedExtentScrollController(
                  initialItem: _selectedDay,
                ),
                onSelectedItemChanged: (int selectedItem) {
                  setState(() {
                    _selectedDay = selectedItem;
                  });
                },
                children: List<Widget>.generate(_days.length, (int index) {
                  return Center(child: Text(_days[index]));
                }),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: CupertinoPicker(
                magnification: 1.22,
                squeeze: 1.2,
                useMagnifier: true,
                itemExtent: _kItemExtent,
                scrollController: FixedExtentScrollController(
                  initialItem: _selectedYear,
                ),
                onSelectedItemChanged: (int selectedItem) {
                  setState(() {
                    _selectedYear = selectedItem;
                  });
                },
                children: List<Widget>.generate(_years.length, (int index) {
                  return Center(child: Text(_years[index]));
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: TextStyle(
        color: CupertinoColors.label.resolveFrom(context),
        fontSize: 22.0,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              ' Birthday:',
              style: Theme.of(context).textTheme.labelSmall,
            ),
            8.verticalSpace,
            CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: _showDialog,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  border: (_selectedMonth != 0 &&
                          _selectedDay != 0 &&
                          _selectedYear != 0)
                      ? Border.all(
                          color: Theme.of(context).colorScheme.tertiary,
                        )
                      : Border.all(
                          color: Colors.transparent,
                        ),
                  color: Theme.of(context).colorScheme.surfaceContainerHigh,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Row(
                  children: [
                    if (_selectedMonth == 0 &&
                        _selectedDay == 0 &&
                        _selectedYear == 0)
                      Expanded(
                        child: Text(
                          'Select Birthday',
                          style:
                              Theme.of(context).inputDecorationTheme.hintStyle,
                        ),
                      )
                    else
                      Expanded(
                        child: Text(
                            '${_months[_selectedMonth]} /${_days[_selectedDay]} /${_years[_selectedYear]}',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.w400,
                                )),
                      ),
                    Icon(
                      CupertinoIcons.calendar,
                      color: Theme.of(context).colorScheme.onTertiary,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
