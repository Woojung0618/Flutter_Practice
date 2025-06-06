import 'package:calendar_scheduler/const/color.dart';
import 'package:flutter/material.dart';

class CustomTextFiled extends StatelessWidget {
  final String label;
  final bool expand; // 확장 여부
  const CustomTextFiled({
    super.key,
    required this.label,
    this.expand = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(label,
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w600,
          )),
      if (!expand) renderTextFormField(),
      if (expand)
        Expanded(
          child: renderTextFormField(),
        ),

    ]);
  }

  renderTextFormField(){
    return TextFormField(
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.grey[200],
      ),
      expands: expand,
      maxLines: expand ? null : 1,
      minLines: expand ? null : 1,
      cursorColor: Colors.grey,
    );
  }
}
