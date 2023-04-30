import 'package:flutter/material.dart';
import 'package:flutter_ui_online_shop/features/homepage/widget/homepage_card.dart';
import 'package:flutter_ui_online_shop/widgets/circle_tab_indicator.dart';

class BerandaScreen extends StatefulWidget {
  const BerandaScreen({super.key});

  @override
  State<BerandaScreen> createState() => _BerandaScreenState();
}

class _BerandaScreenState extends State<BerandaScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(32),
                      bottomRight: Radius.circular(32),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 10, top: 20),
                      child: Text(
                        "Athletic Shoes Collections",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 50,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    // create tabbar
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: TabBar(
                        // indicator:
                        indicatorColor: Colors.transparent,
                        labelPadding: const EdgeInsets.only(left: 0, right: 20),
                        labelColor: Colors.white,
                        labelStyle: const TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                        isScrollable: true,
                        controller: _tabController,
                        tabs: const [
                          Tab(
                            text: "Men Shoes",
                          ),
                          Tab(
                            text: "Women Shoes",
                          ),
                          Tab(
                            text: "Kids",
                          ),
                        ],
                      ),
                    ),

                    //create tabview
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: SizedBox(
                        height: 400,
                        child: TabBarView(
                          controller: _tabController,
                          children: const [
                            CardProduct(),
                            Text(
                              "Women Shoes",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text(
                              "Kids Shoes",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
