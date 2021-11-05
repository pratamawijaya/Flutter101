import 'package:flutter/cupertino.dart';

class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;

  Job(
      {required this.company,
      required this.location,
      required this.isMark,
      required this.title,
      required this.logoUrl,
      required this.time,
      required this.req});

  static List<Job> generateJobs() {
    return [
      Job(
        company: "Google LLC",
        logoUrl: "assets/images/google_logo.png",
        isMark: false,
        title: "Principal Soft Engineer",
        location: "NY",
        time: "Full Time",
        req: [
          "More than 5+ experience as software engineer",
          "based on NY",
        ],
      ),
      Job(
        company: "AirBnb",
        logoUrl: "assets/images/airbnb_logo.png",
        isMark: false,
        title: "Software Engineer",
        location: "Palo Alto",
        time: "Full Time",
        req: [
          "More than 5+ experience as software engineer",
          "ci/cd experenced",
        ],
      ),
      Job(
        company: "Linkedin",
        logoUrl: "assets/images/linkedin_logo.png",
        isMark: false,
        title: "Engineering Manager",
        location: "Palo Alto",
        time: "Full Time",
        req: [
          "More than 3+ experience in managerial thing",
          "Bachelor information degree",
        ],
      ),
    ];
  }
}
