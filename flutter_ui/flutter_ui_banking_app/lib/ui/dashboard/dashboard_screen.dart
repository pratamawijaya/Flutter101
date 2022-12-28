import 'package:flutter/material.dart';
import 'package:flutter_ui_banking_app/configs/colors.dart';
import 'package:flutter_ui_banking_app/ui/dashboard/widgets/dashboard_header_widget.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  Padding _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("My Bank"),
          Row(
            children: [
              Icon(Icons.notifications),
              Icon(Icons.verified_user),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // appbar
          _buildAppBar(),

          SizedBox(
            height: 32,
          ),
          Text("Good Evening",
              style: Theme.of(context)
                  .textTheme
                  .headline6!
                  .copyWith(fontWeight: FontWeight.w300)),
          SizedBox(
            height: 8,
          ),
          Text(
            "Pratama",
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 16,
          ),
          Stack(
            children: [
              // header
              DashboardHeaderWidget(),

              Positioned(
                top: 110,
                child: Container(
                  height: 300,
                  color: kAccentLightColor,
                  child: Text("Test aja"),
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Promos & Reminders",
              //       style: Theme.of(context)
              //           .textTheme
              //           .subtitle1!
              //           .copyWith(fontWeight: FontWeight.bold),
              //     ),
              //     Icon(
              //       Icons.arrow_forward,
              //       color: Colors.black,
              //     )
              //   ],
              // ),
            ],
          )
        ],
      ),
    );
  }
}
