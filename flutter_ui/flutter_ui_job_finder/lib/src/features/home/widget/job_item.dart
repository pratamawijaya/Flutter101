import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_job_finder/src/domain/entity/job.dart';
import 'package:flutter_ui_job_finder/src/utils/constants.dart';
import 'package:flutter_ui_job_finder/src/utils/size_config.dart';

class JobItem extends StatelessWidget {
  final Job job;
  const JobItem(this.job, {Key? key, this.showTime = false}) : super(key: key);

  final bool showTime;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(270),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    height: getProportionateScreenHeight(40),
                    width: getProportionateScreenWidth(40),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.withOpacity(0.1)),
                    child: Image.asset(
                      job.logoUrl,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    job.company,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.w400),
                  )
                ],
              ),
              Icon(job.isMark ? Icons.bookmark : Icons.bookmark_add_outlined),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            job.title,
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.location_city,
                color: kAccentLightColor,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                job.location,
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
