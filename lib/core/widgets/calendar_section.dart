import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:tabib_app/features/home/presentation/widgets/details_section.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarSection extends StatefulWidget {
  const CalendarSection({super.key, this.calendarFormat});
  final CalendarFormat ?calendarFormat;
  @override
  State<CalendarSection> createState() => _CalendarSectionState();
}

class _CalendarSectionState extends State<CalendarSection> {
  var _selectedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return DetailsSection(
      title: 'home.doctorDetails.selectDay'.tr(),
      child: TableCalendar(
        locale: context.locale.languageCode,
        firstDay: DateTime.now(),
        calendarFormat: CalendarFormat.week ,
        lastDay: DateTime.utc(2030, 3, 14),
        headerStyle: const HeaderStyle(
          formatButtonVisible: false,
          titleCentered: true,
        ),
        selectedDayPredicate: (day) {
          return isSameDay(_selectedDay, day);
        },
        onDaySelected: (selectedDay, focusedDay) {
          setState(() {
            _selectedDay = selectedDay;
          });
        },
        focusedDay: _selectedDay,
      ),
    );
  }
}
