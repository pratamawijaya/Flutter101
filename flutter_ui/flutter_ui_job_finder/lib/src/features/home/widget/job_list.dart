import 'package:flutter/material.dart';
import 'package:flutter_ui_job_finder/src/domain/entity/job.dart';
import 'package:flutter_ui_job_finder/src/features/home/widget/job_detail.dart';
import 'package:flutter_ui_job_finder/src/features/home/widget/job_item.dart';
import 'package:flutter_ui_job_finder/src/utils/size_config.dart';

class JobList extends StatelessWidget {
  JobList({Key? key}) : super(key: key);

  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: getProportionateScreenHeight(160),
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, idx) => GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (ctx) => JobDetail(jobList[idx]),
                  );
                },
                child: JobItem(jobList[idx]),
              ),
          separatorBuilder: (_, idx) => SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}
