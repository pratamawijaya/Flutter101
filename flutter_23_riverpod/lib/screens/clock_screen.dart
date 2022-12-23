import 'package:flutter/material.dart';
import 'package:flutter_23_riverpod/widgets/clock_component.dart';
import 'package:flutter_23_riverpod/widgets/primary_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final clockProvider = StateNotifierProvider<ClockComponent, DateTime>((ref) {
  return ClockComponent();
});

class ClockScreen extends StatelessWidget {
  const ClockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final currentTime = ref.watch(clockProvider);
        final timeFormatted = DateFormat.Hms().format(currentTime);
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text("time : $currentTime"),
            ),
          ],
        );
      },
    );
  }
}

abstract class CheckoutService {
  Future<void> pay();
}

// final checkoutService = Provider<CheckoutService>(((ref) {

// }),)

class PaymentButton extends StatelessWidget {
  const PaymentButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return PrimaryButton(
          text: "Pay",
          isLoading: false,
          onPressed: () {},
        );
      },
    );
  }
}

class PaymentButtonController extends StateNotifier<AsyncValue<void>> {
  PaymentButtonController(super.state);
}
