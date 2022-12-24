import 'package:flutter/material.dart';
import 'package:flutter_23_riverpod/screens/account/account_screen_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: ((context, ref, child) {
        // ref.listen<AsyncValue>(
        //   accountScreenControllerProvider,
        //   (_, state) => state.showSnackbarOnError(context),
        // );

        final state = ref.watch(accountScreenControllerProvider);

        return Scaffold(
          appBar: AppBar(
            title: state.isLoading
                ? const CircularProgressIndicator()
                : const Text('Account'),
            actions: [
              TextButton(
                child: Text(
                  'Logout',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white),
                ),
                onPressed: state.isLoading
                    ? null
                    : () async {
                        ref
                            .read(accountScreenControllerProvider.notifier)
                            .signOut();
                      },
              ),
            ],
          ),
        );
      }),
    );
  }
}
