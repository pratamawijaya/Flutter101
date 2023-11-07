import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_car_rental/presentation/misc/colors.dart';
import 'package:flutter_ui_car_rental/presentation/providers/router/router_provider.dart';
import 'package:flutter_ui_car_rental/presentation/widgets/background_image.dart';

class WelcomePage extends ConsumerWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const BackgroundImage(),
          Expanded(
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: size.width,
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.width * 0.22,
                      ),
                      SizedBox(
                        width: size.width * 0.7,
                        child: Text(
                          "We Bring The Best Car for your Needs",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                  color: Colors.white,
                                  letterSpacing: 0.8,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: size.width * 0.9,
                        child: Text(
                          "Rev Up Your Adventures with Affordable and Reliable Car Rentals for Every Journey, Anytime, Anywhere!",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color:
                                      const Color.fromARGB(255, 135, 133, 133),
                                  letterSpacing: 1.2,
                                  height: 1.3),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          ref.read(routerProvider).goNamed('login');
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(size.width, size.height * 0.08),
                          backgroundColor: saffron,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        child: Text(
                          "Getting Started",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  top: -size.height * 0.5 * 0.7,
                  left: -size.height * 0.5 * 0.8,
                  child: SizedBox(
                    child: Image.asset("assets/alphard_new.png"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
