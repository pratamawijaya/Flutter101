import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_banking_app/configs/colors.dart';
import 'package:flutter_ui_banking_app/ui/dashboard/dashboard_screen.dart';

final indexProvider = StateProvider<int>((ref) => 0);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void updateTabSelection(WidgetRef ref, int index, String buttonText) {
    ref.read(indexProvider.notifier).state = index;
  }

  updateColorButton(WidgetRef ref, index) {
    var currentIndex = ref.watch(indexProvider);
    return currentIndex == index ? kPrimaryColor : Colors.grey.shade400;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer(
          builder: ((context, ref, child) {
            return IndexedStack(
              index: ref.watch(indexProvider),
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                DashboardScreen(),
                Text("Transactions"),
                Text("Reports"),
                Text("Settings"),
              ],
            );
          }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.white,
        backgroundColor: kPrimaryColor,
        onPressed: () {},
        child: Icon(Icons.qr_code_scanner),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          margin: EdgeInsets.only(left: 12.0, right: 12.0),
          child: Consumer(
            builder: ((context, ref, child) {
              return Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      updateTabSelection(ref, 0, "buttonText");
                    },
                    icon: Icon(Icons.home),
                    color: updateColorButton(ref, 0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 64),
                    child: IconButton(
                      onPressed: () {
                        updateTabSelection(ref, 1, "buttonText");
                      },
                      icon: Icon(Icons.assignment),
                      color: updateColorButton(ref, 1),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      updateTabSelection(ref, 2, "buttonText");
                    },
                    icon: Icon(Icons.report),
                    color: updateColorButton(ref, 2),
                  ),
                  IconButton(
                    onPressed: () {
                      updateTabSelection(ref, 3, "buttonText");
                    },
                    icon: Icon(Icons.settings),
                    color: updateColorButton(ref, 3),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
