import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rosary_app/widgets/control_button_widget.dart';

class CountersWidget extends StatefulWidget {
  const CountersWidget({super.key});

  @override
  State<CountersWidget> createState() => _CountersWidgetState();
}

class _CountersWidgetState extends State<CountersWidget> {
  int a = 0;
  int b = 0;
  int c = 0;
  int d = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("$d",
                style: const TextStyle(color: Colors.white, fontSize: 100)),
            SizedBox(width: 20.w),
            Text("$c",
                style: const TextStyle(color: Colors.white, fontSize: 100)),
            SizedBox(width: 20.w),
            Text("$b",
                style: const TextStyle(color: Colors.white, fontSize: 100)),
            SizedBox(width: 20.w),
            Text("$a",
                style: const TextStyle(color: Colors.white, fontSize: 100)),
          ],
        ),
        SizedBox(height: 50.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ControlButtonWidget(
                onPressed: () {
                  setState(() {
                    a++;
                    if (a == 10) {
                      a = 0;
                      b++;
                      if (b == 10) {
                        b = 0;
                        c++;
                        if (c == 10) {
                          c = 0;
                          d++;
                        }
                        if (d == 10) {
                          d = 0;
                          c = 0;
                          b = 0;
                          a = 0;
                        }
                      }
                    }
                  });
                },
                text: "start"),
            SizedBox(width: 70.w),
            ControlButtonWidget(
                onPressed: () {
                  setState(() {
                    a = 0;
                    b = 0;
                    c = 0;
                    d = 0;
                  });
                },
                text: "reset"),
          ],
        ),
      ],
    );
  }
}
