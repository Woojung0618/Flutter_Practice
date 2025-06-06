import 'package:flutter/material.dart';
import '../const/color.dart';

class TodayBanner extends StatelessWidget {
  final selectedDay;
  final taskCount;
  const TodayBanner({super.key, this.selectedDay, this.taskCount});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${selectedDay.year}년 ${selectedDay.month}월 ${selectedDay.day}일',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '${taskCount}개',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        )
    );
  }
}
