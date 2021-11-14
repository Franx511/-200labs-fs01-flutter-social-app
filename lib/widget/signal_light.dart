import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_training_2/util/color_color.dart';

class SignalLight extends StatelessWidget {
  final double coreSize;
  final double borderSize;
  final int status;
  const SignalLight(
      {Key? key, required this.coreSize, this.borderSize = 2, this.status = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: coreSize,
      height: coreSize,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: status == 2 ? ColorConfig.online : ColorConfig.onhold,
        border: Border.all(
          color: Colors.white,
          width: borderSize,
          style: BorderStyle.solid,
        ),
      ),
    );
  }
}
