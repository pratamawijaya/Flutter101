import 'package:flutter/material.dart';
import 'package:flutter_ui_online_shop/config/size_config.dart';
import 'package:flutter_ui_online_shop/features/homepage/widget/homepage_card.dart';

class BerandaScreenV2 extends StatefulWidget {
  const BerandaScreenV2({super.key});

  @override
  State<BerandaScreenV2> createState() => _BerandaScreenV2State();
}

class _BerandaScreenV2State extends State<BerandaScreenV2>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(22),
                    bottomRight: Radius.circular(22),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Athletic Shoes Collections",
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.white,
                          fontSize: 42,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TabBar(
                      controller: _tabController,
                      indicatorColor: Colors.transparent,
                      labelPadding: const EdgeInsets.only(left: 0, right: 10),
                      labelColor: Colors.white,
                      labelStyle: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                      tabs: [
                        Text("Men"),
                        Text("Women Shoes"),
                        Text("Kids Shoes")
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.2),
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    CardProduct(),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          color: Colors.amber,
                        )
                      ],
                    ),
                    Text("Tab bar view 3",
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
