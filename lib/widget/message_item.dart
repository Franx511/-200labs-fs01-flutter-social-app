import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_training_2/model/message_model.dart';
import 'package:flutter_training_2/widget/avatar_container.dart';

class MessageItem extends StatelessWidget {
  const MessageItem({Key? key, required this.message}) : super(key: key);
  final Message message;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        height: 76,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: AvatarContainer(
                message: message,
                size: 60.0,
                coreSize: 18,
                borderSize: 1,
              ),
            ),
            Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Text(
                                message.sender,
                                maxLines: 1,
                                style: const TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w800,
                                ),
                              )),
                          Expanded(
                            flex: 1,
                            child: Text(
                              message.createdAt,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Color(0xff4E586E),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              message.lastMessage,
                              maxLines: 1,
                              style: const TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                overflow: TextOverflow.ellipsis,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black,
                        width: 1.0,
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}
