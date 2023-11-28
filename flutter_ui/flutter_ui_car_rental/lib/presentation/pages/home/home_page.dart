import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_car_rental/main.dart';
import 'package:flutter_ui_car_rental/presentation/misc/colors.dart';
import 'package:flutter_ui_car_rental/presentation/misc/utils.dart';
import 'package:flutter_ui_car_rental/presentation/providers/location/location_provider.dart';
import 'package:flutter_ui_car_rental/presentation/providers/router/router_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPosition = ref.watch(positionProvider);

    var size = MediaQuery.of(context).size;

    final images = [
      "assets/daihatsu_logo_remove.png",
      "assets/toyota_logo.png",
      "assets/daihatsu_logo_remove.png",
      "assets/toyota_logo.png",
      "assets/daihatsu_logo_remove.png",
      "assets/toyota_logo.png"
    ];

    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: saffron,
                    size: 30,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lokasimu",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.grey),
                      ),
                      currentPosition.when(
                          data: (data) {
                            logger.i("data -> ${data?.toString()}");
                            return Text(
                                "${data?.subLocality}, ${data?.administrativeArea}");
                          },
                          error: (error, stacktrace) {
                            logger.e(
                                "error mendapatkan lokasi ${stacktrace.toString()}");
                            return const Text("Gagal mendapatkan lokasi");
                          },
                          loading: () => const Text("Mencari Lokasi . . .")),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Cari mobil sesuai preferensimu',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GestureDetector(
                onTap: () {
                  ref.read(routerProvider).goNamed('search');
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  height: size.height * 0.08,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cari. . . "),
                      Icon(CupertinoIcons.search),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Container(
                width: size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 227, 227, 227),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Top Brand",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    color: const Color(0xFF000000),
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "More",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(color: const Color(0xFF000000)),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: (size.width - 16 * 4) / 3,
                        child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  context.showSnackBar("click button ${index}");
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  width: (size.width - 16 * 4) / 3,
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 195, 195, 195),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Image.asset(
                                    images[index],
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) =>
                                const SizedBox(width: 16),
                            itemCount: images.length),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
