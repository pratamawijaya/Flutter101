import 'package:flutter/material.dart';

class PrimaryButton extends CustomRaisedButton {
  PrimaryButton({
    Key? key,
    required String text,
    bool isLoading = false,
    required VoidCallback onPressed,
  }) : super(
          key: key,
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          height: 44.0,
          color: Colors.indigo,
          textColor: Colors.black87,
          loading: isLoading,
          onPressed: onPressed,
        );
}

@immutable
class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton({
    Key? key,
    required this.child,
    this.color,
    this.textColor,
    this.height = 50.0,
    this.borderRadius = 4.0,
    this.loading = false,
    this.onPressed,
  }) : super(key: key);
  final Widget child;
  final Color? color;
  final Color? textColor;
  final double height;
  final double borderRadius;
  final bool loading;
  final VoidCallback? onPressed;

  Widget buildSpinner(BuildContext context) {
    final ThemeData data = Theme.of(context);
    return Theme(
      data: data.copyWith(accentColor: Colors.white70),
      child: const SizedBox(
        width: 28,
        height: 28,
        child: CircularProgressIndicator(
          strokeWidth: 3.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          textStyle: TextStyle(color: textColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
        ),
        child: loading ? buildSpinner(context) : child,
      ),
    );
  }
}
