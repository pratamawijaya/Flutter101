import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_job_finder/src/domain/entity/job.dart';
import 'package:flutter_ui_job_finder/src/utils/constants.dart';
import 'package:flutter_ui_job_finder/src/utils/size_config.dart';

class JobDetail extends StatelessWidget {
  const JobDetail(this.job, {Key? key}) : super(key: key);

  final Job job;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: getProportionateScreenHeight(500),
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: _buildRequirementWidget(context),
        ),
      ),
    );
  }

  List<Widget> _buildRequirementWidget(BuildContext context) {
    return [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: getProportionateScreenWidth(60),
            height: 5,
            color: Colors.grey[300],
          ),
        ],
      ),
      SizedBox(
        height: 30,
      ),
      _buildHeaderJobWidget(context),
      SizedBox(
        height: 20,
      ),
      Text(
        job.title,
        style: Theme.of(context)
            .textTheme
            .headline4!
            .copyWith(fontWeight: FontWeight.w500),
      ),
      SizedBox(
        height: 20,
      ),
      // location widget
      _buildLocationWidget(context),
      SizedBox(
        height: 20,
      ),
      Text(
        "Requirement",
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(fontWeight: FontWeight.bold),
      ),
      SizedBox(
        height: 20,
      ),
      ...job.req
          .map(
            (e) => Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                children: [
                  Container(
                    height: 5,
                    width: 5,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                    ),
                  ),
                  Text(e)
                ],
              ),
            ),
          )
          .toList(),
      Container(
        margin: EdgeInsets.symmetric(vertical: 25),
        height: 45,
        width: double.maxFinite,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            primary: Theme.of(context).primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () {},
          child: Text("Apply Now"),
        ),
      ),
    ];
  }

  Row _buildHeaderJobWidget(BuildContext context) {
    return Row(
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
              width: getProportionateScreenWidth(10),
            ),
            Text(
              job.company,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        Row(
          children: [
            Icon(job.isMark ? Icons.bookmark : Icons.bookmark_outline_rounded),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_horiz_outlined)
          ],
        )
      ],
    );
  }

  Row _buildLocationWidget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              Icons.location_on,
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
        ),
        Row(
          children: [
            Icon(
              Icons.schedule,
              color: kAccentLightColor,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              job.time,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(color: Colors.grey),
            )
          ],
        )
      ],
    );
  }
}
