import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuranTextWidget extends StatelessWidget {
  const QuranTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "وَاذْكُرْ رَبَّكَ كَثِيرًا",
      style: TextStyle(
        fontSize: 45.sp,
        color: Colors.white,
        fontFamily: "ScheherazadeNew",
      ),
    );
  }
}
