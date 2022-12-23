import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_smart_home/screens/widgets/smart_device_box.dart';

final switchOnOfProvider = StateProvider((ref) => false);

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  List myDevices = [
    ["Smart Light", "assets/icon/light-bulb.png", true],
    ["Air Conditioner", "assets/icon/air-conditioner.png", false],
    ["Fan", "assets/icon/fan.png", false],
    ["Smart TV", "assets/icon/smart-tv.png", true],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // custom appbar
              SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/icon/menu.png",
                    height: 45,
                    color: Colors.grey[800],
                  ),
                  Icon(
                    Icons.person,
                    size: 45,
                    color: Colors.grey[800],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Home",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  Text(
                    "Pratama",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Smart Devices",
                style: Theme.of(context).textTheme.subtitle1,
              ),

              SizedBox(
                height: 10,
              ),
              // grid
              Expanded(
                child: GridView.builder(
                  itemCount: myDevices.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1 / 1.2,
                  ),
                  itemBuilder: (context, index) {
                    return Consumer(
                      builder:
                          (BuildContext context, WidgetRef ref, Widget? child) {
                        return Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SmartDeviceBox(
                            smartDeviceName: myDevices[index][0],
                            smartDeviceIcon: myDevices[index][1],
                            isPoweredOn: myDevices[index][2],
                            onChanged: (value) {
                              debugPrint("before  ${myDevices[index][2]}");
                              myDevices[index][2] = value;
                              debugPrint("after ${myDevices[index][2]}");
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
