import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rosary_app/views/main_view.dart';

void main() {
  runApp(const RosaryApp());
}


class RosaryApp extends StatelessWidget {
  const RosaryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainView(),
      ),
    );
  }
}