import 'package:flutter/material.dart';
import 'package:flutter_training_2/util/color_color.dart';

class SignalNewMessage extends StatelessWidget {
  const SignalNewMessage(
      {Key? key,
      required this.coreSize,
      this.borderSize = 0,
      required this.numberNewMessages})
      : super(key: key);
  final double coreSize;
  final double borderSize;
  final int numberNewMessages;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: coreSize,
      height: coreSize,
      child: Center(
          child: numberNewMessages < 10
              ? Text(
                  numberNewMessages.toString(),
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                )
              : const Text(
                  '9+',
                  style: TextStyle(
                    fontSize: 11,
                    color: Colors.white,
                  ),
                )),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: const Alignment(
              0.6, 3.0), // 10% of the width, so there are ten blinds.
          colors: ColorConfig.offline, // red to yellow
          tileMode: TileMode.repeated, // repeats the gradient over the canvas
        ),
        border: Border.all(
          color: Colors.white,
          width: borderSize,
          style: BorderStyle.solid,
        ),
      ),
    );
  }
}
