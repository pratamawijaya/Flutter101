import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui_analog_clock/src/features/clock/clock.dart';
import 'package:flutter_ui_analog_clock/src/features/clock/time_inhour_minute.dart';
import 'package:flutter_ui_analog_clock/src/utils/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text(
            "Yogyakarta, Indonesia | WIB",
            style: Theme.of(context).textTheme.bodyText1,
          ),
          TimeInHourAndMinutes(),
          Spacer(),
          Clock(),
          Spacer(),
          CountryCard()
        ],
      ),
    );
  }
}

class CountryCard extends StatelessWidget {
  const CountryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(233),
      child: AspectRatio(
        aspectRatio: 1.32,
        child: Container(
          padding: EdgeInsets.all(
            getProportionateScreenWidth(20),
          ),
          decoration: BoxDecoration(
            border: Border.all(
                color: Theme.of(context).primaryIconTheme.color ?? Colors.blue),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "New York, USA",
                style: Theme.of(context).textTheme.headline4!.copyWith(
                      fontSize: getProportionateScreenWidth(16),
                    ),
              ),
              SizedBox(
                height: 5,
              ),
              Text("+3 Hrs | EST"),
              Spacer(),
              Row(
                children: [
                  SvgPicture.asset("assets/images/Liberty.svg"),
                  Spacer(),
                  Text(
                    "9:20",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text("AM"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
