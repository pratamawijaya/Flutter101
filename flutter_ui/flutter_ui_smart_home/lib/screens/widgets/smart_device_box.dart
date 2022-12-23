import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmartDeviceBox extends StatelessWidget {
  SmartDeviceBox(
      {super.key,
      required this.smartDeviceName,
      required this.smartDeviceIcon,
      required this.isPoweredOn,
      required this.onChanged});

  final String smartDeviceName;
  final String smartDeviceIcon;
  final bool isPoweredOn;
  void Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isPoweredOn ? Colors.grey[900] : Colors.grey[200],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              smartDeviceIcon,
              height: 65,
              color: isPoweredOn ? Colors.white : Colors.black,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      smartDeviceName,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontWeight: FontWeight.bold)
                          .copyWith(
                              color: isPoweredOn ? Colors.white : Colors.black),
                    ),
                  ),
                ),
                Transform.rotate(
                  angle: pi / 2,
                  child: CupertinoSwitch(
                    value: isPoweredOn,
                    onChanged: onChanged,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
