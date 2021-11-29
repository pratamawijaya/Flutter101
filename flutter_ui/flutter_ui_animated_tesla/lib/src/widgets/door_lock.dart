import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoorLock extends StatelessWidget {
  DoorLock({Key? key, required this.press, required this.isLock})
      : super(key: key);

  final VoidCallback press;
  final bool isLock;

  var lockedDoorIcon = SvgPicture.asset(
    "assets/icons/door_lock.svg",
    key: Key("locked"),
  );
  var unlockedDoorIcon = SvgPicture.asset(
    "assets/icons/door_unlock.svg",
    key: Key("unlocked"),
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        switchInCurve: Curves.easeInOutBack,
        transitionBuilder: (child, animation) => ScaleTransition(
          scale: animation,
          child: child,
        ),
        child: isLock ? lockedDoorIcon : unlockedDoorIcon,
      ),
    );
  }
}
