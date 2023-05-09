import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_online_shop/config/size_config.dart';
import 'package:flutter_ui_online_shop/features/homepage/beranda_screen.dart';
import 'package:flutter_ui_online_shop/features/cart/cart_screen.dart';
import 'package:flutter_ui_online_shop/features/homepage/beranda_screen_v2.dart';
import 'package:flutter_ui_online_shop/features/homepage/controller/mainscreen_provider.dart';
import 'package:flutter_ui_online_shop/features/inbox/inbox_screen.dart';
import 'package:flutter_ui_online_shop/features/profile/profile_screen.dart';
import 'package:flutter_ui_online_shop/widgets/bottom_nav_widget.dart';
import 'package:ionicons/ionicons.dart';

class MainScreen extends ConsumerWidget {
  MainScreen({super.key});

  List<Widget> pageList = const [
    BerandaScreenV2(),
    InboxScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SizeConfig().init(context);
    return Scaffold(
      body: pageList[ref.watch(mainScreenProviderProvider)],
      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomNavWidget(
                onTap: () {
                  setCurrentPage(ref, 0);
                },
                icon: ref.read(mainScreenProviderProvider.notifier).state == 0
                    ? Ionicons.home
                    : Ionicons.home_outline,
              ),
              BottomNavWidget(
                onTap: () {
                  setCurrentPage(ref, 1);
                },
                icon: ref.read(mainScreenProviderProvider.notifier).state == 1
                    ? Ionicons.mail
                    : Ionicons.mail_outline,
              ),
              BottomNavWidget(
                onTap: () {
                  setCurrentPage(ref, 2);
                },
                icon: ref.read(mainScreenProviderProvider.notifier).state == 2
                    ? Ionicons.cart
                    : Ionicons.cart_outline,
              ),
              BottomNavWidget(
                onTap: () {
                  setCurrentPage(ref, 3);
                },
                icon: ref.read(mainScreenProviderProvider.notifier).state == 3
                    ? Ionicons.person
                    : Ionicons.person_outline,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setCurrentPage(WidgetRef ref, int position) {
    ref.read(mainScreenProviderProvider.notifier).setPage(position);
  }
}
