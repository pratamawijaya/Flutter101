import 'package:flutter/material.dart';
import 'package:flutter_ui_banking_app/routes.dart';
import 'package:flutter_ui_banking_app/ui/dashboard/widgets/dashboard_header_widget.dart';
import 'package:flutter_ui_banking_app/ui/dashboard/widgets/promo_item.dart';
import 'package:flutter_ui_banking_app/utils/size_config.dart';
import 'package:go_router/go_router.dart';

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
    const horizontalPadding = 16.0;

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // appbar
          _buildAppBar(),

          SizedBox(
            height: 32,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Text("Good Evening",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(fontWeight: FontWeight.w300)),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Text(
              "Pratama",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(
            height: 16,
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: DashboardHeaderWidget(),
          ),

          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Promos & Reminders",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () => context.push("/home/promo"),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),

          // carousel
          SizedBox(
            height: getProportionateScreenHeight(160),
            child: Padding(
              padding: const EdgeInsets.only(left: horizontalPadding),
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        debugPrint("promo item click $index");
                      },
                      child: PromoItem(),
                    );
                  }),
                  separatorBuilder: (_, idx) => SizedBox(width: 15),
                  itemCount: 5),
            ),
          ),
        ],
      ),
    );
  }
}
