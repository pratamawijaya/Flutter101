import 'package:flutter/material.dart';
import 'package:flutter_ui_banking_app/configs/colors.dart';

class DashboardHeaderWidget extends StatelessWidget {
  const DashboardHeaderWidget({super.key});

  Column _buildIconHeader(
      BuildContext context, Widget menuIcon, String menuName) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(),
            padding: EdgeInsets.all(8),
            backgroundColor: kPrimaryDarkColor, // <-- Button color
            foregroundColor: Colors.white, // <-- Splash color
          ),
          child: menuIcon,
        ),
        SizedBox(
          height: 4,
        ),
        Text(
          menuName,
          style: Theme.of(context)
              .textTheme
              .caption!
              .copyWith(color: Colors.white),
        )
      ],
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Balance",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "\$2.000.000",
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                // arrow right
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                )
              ],
            ),

            // icon header bawah
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildIconHeader(context, Icon(Icons.send), "Send"),
                _buildIconHeader(context, Icon(Icons.move_to_inbox), "Deposit"),
                _buildIconHeader(context, Icon(Icons.outbox), "Withdraw"),
                _buildIconHeader(
                    context, Icon(Icons.add_shopping_cart), "Pay & Buy"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
