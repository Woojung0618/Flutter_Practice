import 'package:calendar_scheduler/component/schedule_card.dart';
import 'package:flutter/material.dart';
import '../component/calendar.dart';
import '../component/custom_text_filed.dart';
import '../component/schedule_bottom_sheet.dart';
import '../component/today_banner.dart';
import '../const/color.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime selectedDay = DateTime.utc(
    DateTime.now().year,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
                context: context,
                builder: (_){
                  return ScheduleBottomSheet();
                }
            );
          },
          backgroundColor: primaryColor,
          child:Icon(
            Icons.add,
          )),
        body: SafeArea(
          child: Column(
            children: [
              Calendar(
                focusedDay: DateTime(2025, 6, 1),
                onDaySelected: onDaySelected,
                selectedDayPredicate: selectedDayPredicate,
              ),
              TodayBanner(
                selectedDay: selectedDay,
                taskCount: 0,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(
                  left: 16.0,
                  right: 16.0,
                  top: 16.0,
                ),
                child: ListView(
                  children: [
                    ScheduleCard(
                        startTime: DateTime(2025, 06, 05, 13),
                        endTime: DateTime(2025, 06, 05, 19),
                        content: '앱개발 공부하기',
                        color: Colors.yellow)
                  ],
                ),
              ))
            ],
    )));
  }

  void onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      this.selectedDay = selectedDay;
    });
  }

  bool selectedDayPredicate(DateTime date) {
    if (selectedDay == null) {
      return false;
    }
    return date.isAtSameMomentAs(selectedDay!);
  }
}
