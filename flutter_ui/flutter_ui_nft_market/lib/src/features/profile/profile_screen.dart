import 'package:flutter/material.dart';
import 'package:flutter_ui_nft_market/src/domain/entity/profile.dart';
import 'package:flutter_ui_nft_market/src/features/profile/person_info.dart';
import 'package:flutter_ui_nft_market/src/features/profile/widget/custom_grid.dart';
import 'package:flutter_ui_nft_market/src/features/profile/widget/tab_sliver_delegate.dart';
import 'package:flutter_ui_nft_market/src/features/widgets/simple_icon.dart';
import 'package:flutter_ui_nft_market/utils/size_config.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  final profile = Profile.generateProfile();
  final tabs = ["Creations", "Collections"];

  static const routeName = "/profile";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      appBar: _buildAppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool inner) {
            return <Widget>[
              SliverToBoxAdapter(
                child: PersonInfo(
                  profile: profile,
                ),
              ),
              SliverPersistentHeader(
                delegate: TabSliverDelegate(
                  TabBar(
                    tabs: tabs
                        .map((e) => Tab(
                              child: Text(
                                e,
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ))
                        .toList(),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                  ),
                ),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              CustomGrid('creations', profile.creations!),
              CustomGrid('collections', profile.collections!)
            ],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: SimpleIcon(
        Icons.arrow_back_ios_outlined,
      ),
      actions: [
        SimpleIcon(Icons.more_vert_outlined),
      ],
    );
  }
}
