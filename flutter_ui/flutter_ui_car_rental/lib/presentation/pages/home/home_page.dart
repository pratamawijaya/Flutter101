import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_ui_car_rental/main.dart';
import 'package:flutter_ui_car_rental/presentation/misc/colors.dart';
import 'package:flutter_ui_car_rental/presentation/providers/location/location_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPosition = ref.watch(positionProvider);

    var size = MediaQuery.of(context).size;

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
                        "Your Location",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: Colors.grey),
                      ),
                      currentPosition.when(
                          data: (data) {
                            logger.i("data -> ${data?.toString()}");
                            return Text(
                                "${data?.locality}, ${data?.subLocality}");
                          },
                          error: (error, stacktrace) {
                            logger.e(
                                "error mendapatkan lokasi ${stacktrace.toString()}");
                            return const Text("Gagal mendapatkan lokasi");
                          },
                          loading: () => const Text("Mencari Lokasi . . .")),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
