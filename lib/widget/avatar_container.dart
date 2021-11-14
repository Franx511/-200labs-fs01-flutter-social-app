import 'package:flutter/material.dart';
import 'package:flutter_training_2/model/message_model.dart';
import 'package:flutter_training_2/widget/download_drawer.dart';
import 'package:flutter_training_2/widget/signal_new_message.dart';

class AvatarContainer extends StatelessWidget {
  final double size;
  final double coreSize;
  final double borderSize;
  final Message message;
  const AvatarContainer({
    Key? key,
    required this.size,
    required this.coreSize,
    required this.borderSize,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [
          SizedBox(
              width: size,
              height: size,
              child: GestureDetector(
                onLongPress: () {
                  showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return DownloadDrawer(url: message.imageUrl);
                      });
                },
                child: CircleAvatar(
                  backgroundImage: NetworkImage(message.imageUrl),
                  minRadius: 20,
                  maxRadius: 50,
                ),
              )),
          message.numberNewMessages > 0
              ? Positioned(
                  bottom: 0,
                  right: 0,
                  child: SignalNewMessage(
                    coreSize: coreSize,
                    borderSize: borderSize,
                    numberNewMessages: message.numberNewMessages,
                  ))
              : Container()
        ],
      ),
    );
  }
}
