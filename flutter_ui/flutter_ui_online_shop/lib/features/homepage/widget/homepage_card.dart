import 'package:flutter/material.dart';

class CardProduct extends StatelessWidget {
  const CardProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.grey,
                size: 30,
              ),
            ),
            Expanded(
              child: Image.asset(
                "images/nmd_1.webp",
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              "NMD R1",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 40),
            ),
            Text(
              "Men's Running",
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(color: Colors.grey, fontSize: 22),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  "\$180.00",
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ],
            )
          ],
        ),
      ),
    );
    // return Container(
    //   decoration: const BoxDecoration(
    //     borderRadius: BorderRadius.all(
    //       Radius.circular(16),
    //     ),
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       const Icon(
    //         Icons.favorite_border,
    //         color: Colors.black,
    //       ),
    //       Image.asset(
    //         "images/nmd_1.webp",
    //         width: 320,
    //         height: 280,
    //         fit: BoxFit.cover,
    //       ),
    //     ],
    //   ),
    // );
  }
}
