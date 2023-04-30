import 'package:flutter/material.dart';
import 'package:flutter_ui_magicbook/configs/colors.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 32, right: 16),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome to MagicBook",
                                style:
                                    Theme.of(context).textTheme.headlineLarge),
                            const SizedBox(
                              height: 16,
                            ),
                            Text(
                              "Biggest collection of 300+ layouts for iOS prototyping.",
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                      Image.asset("assets/icon/onboarding_logo.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kFormColor,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: kPrimaryColor),
                      ),
                      label: Text(
                        "Email",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: kBodyTextColorLight),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kFormColor,
                      suffixIcon: const Icon(
                        Icons.visibility,
                        color: kPrimaryColor,
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: kFormColor),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: kFormColor),
                      ),
                      label: Text(
                        "Password",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(color: kBodyTextColorLight),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kPrimaryColor),
                      minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 48),
                      ),
                    ),
                    child: Text(
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      "Login",
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: () {
                        // todo set click listener
                      },
                      child: Text(
                        "Forgot password?",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: kPrimaryColor, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        alignment: Alignment.centerLeft,
                        minimumSize: MaterialStateProperty.all(
                          const Size(double.infinity, 48),
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: kBodyTextColorLight,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
