
import 'package:flutter/material.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({Key key}) : super(key: key);

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return   Row(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 45,
          width: 55,
          child: Column(crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Image.asset(
                  'images/Line 9.png',
                  height: 7.0,
                  width: 35.0,
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Image.asset(
                  'images/Line 9.png',
                  height: 7.0,
                  width: 20.0,
                  // fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Image.asset(
                  'images/Line 9.png',
                  height: 7.0,
                  width: 35.0,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
