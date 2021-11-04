import 'package:flutter/material.dart';
import 'package:flutter_ui_nft_market/src/domain/entity/art.dart';
import 'package:flutter_ui_nft_market/src/features/detail/widget/art_info.dart';
import 'package:flutter_ui_nft_market/src/features/detail/widget/buy_button.dart';
import 'package:flutter_ui_nft_market/src/features/detail/widget/detail_banner.dart';
import 'package:flutter_ui_nft_market/src/features/widgets/simple_icon.dart';
import 'package:flutter_ui_nft_market/utils/constants.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen(this.art, {Key? key}) : super(key: key);
  static const String routeName = "/detail";
  Art art;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScroll) {
            return [
              SliverAppBar(
                elevation: 0,
                expandedHeight: 330,
                backgroundColor: kButtonColor,
                leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.black,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_vert_outlined,
                      color: Colors.black,
                    ),
                  )
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: DetailBanner(art),
                ),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: ArtInfo(art),
              )
            ];
          },
          body: Container(),
        ),
      ),
      floatingActionButton: BuyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
