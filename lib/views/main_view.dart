import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rosary_app/widgets/counters_widget.dart';
import 'package:rosary_app/widgets/quran_text_widget.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const QuranTextWidget(),
            SizedBox(height: 50.h),
            const CountersWidget(),
          ],
        ),
      ),
    );
  }
}
