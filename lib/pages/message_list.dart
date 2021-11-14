import 'package:flutter/material.dart';
import 'package:flutter_training_2/model/message_model.dart';
import 'package:flutter_training_2/widget/message_item.dart';

const assetKey = 'assets/json/user_message_data.json';
const assetKey2 = 'assets/json/user_active_data.json';

class MessageListPage extends StatelessWidget {
  const MessageListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Message> _messages = Message.getDummyMessages;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Message List Page'),
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: ListView.builder(
        itemCount: _messages.length,
        itemBuilder: (context, index) {
          final Message item = _messages[index];
          return MessageItem(
            message: item,
          );
        },
      ),
    );
  }
}

// class MessageListPage extends StatefulWidget {
//   const MessageListPage({Key? key}) : super(key: key);

//   @override
//   _MessageListPageState createState() => _MessageListPageState();
// }

// class _MessageListPageState extends State<MessageListPage> {
//   List<UserMessage> _messages = List.empty(growable: true);
//   List itemActive = List.empty(growable: true);

//   Future<void> readJsonMessage() async {
//     final json = await rootBundle.loadString(assetKey);
//     final map = jsonDecode(json);
//     _messages = UserMessage.fromJson(map) as List<UserMessage>;
//   }

//   Future<void> readJsonActive() async {
//     final json = await rootBundle.loadString(assetKey2);
//     final map = jsonDecode(json);
//     itemActive.addAll(map["results"]);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Message List Page'),
//         leading: BackButton(
//           color: Colors.white,
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: ListView.builder(
//         itemCount: _messages.length,
//         itemBuilder: (context, index) {
//           final Message item = _messages[index];
//           return MessageItem(
//             message: item,
//           );
//         },
//       ),
//     );
//   }
// }
