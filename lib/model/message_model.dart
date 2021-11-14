class Message {
  final String sender;
  final String imageUrl;
  final String lastMessage;
  final String createdAt;
  final int numberNewMessages;
  final int status;

  Message({
    required this.sender,
    required this.imageUrl,
    required this.lastMessage,
    required this.createdAt,
    this.status = 0,
    this.numberNewMessages = 0,
  });

  static List<Message> get getDummyMessages => [
        Message(
          sender: "Terroni",
          imageUrl: 'https://i.pravatar.cc/100',
          lastMessage: 'Sounds good to me!',
          createdAt: '11:33PM',
          numberNewMessages: 3,
        ),
        Message(
          sender: "Ecstasy",
          imageUrl: 'https://i.pravatar.cc/101',
          lastMessage: 'Sounds good to me!',
          createdAt: '11:33PM',
          numberNewMessages: 10,
        ),
        Message(
          sender: "Stercus",
          imageUrl: 'https://i.pravatar.cc/102',
          lastMessage: 'Hey! How\'s it going?',
          createdAt: '11:33PM',
          numberNewMessages: 2,
        ),
        Message(
          sender: "Duro",
          imageUrl: 'https://i.pravatar.cc/103',
          lastMessage: 'Hi Tina. How\'s your night going?',
          createdAt: '06:33PM',
        ),
        Message(
          sender: "B. Afgano",
          imageUrl: 'https://i.pravatar.cc/104',
          lastMessage: 'What did you do over the weekend?',
          createdAt: '09:43PM',
        ),
        Message(
          sender: "Laudano nero",
          imageUrl: 'https://i.pravatar.cc/105',
          lastMessage: 'Heyyyyyy',
          createdAt: '11:33PM',
        ),
        Message(
          sender: "Layton",
          imageUrl: 'https://i.pravatar.cc/106',
          lastMessage: 'Heyyyyyy',
          createdAt: '11:33PM',
        ),
        Message(
          sender: "Zenne",
          imageUrl: 'https://i.pravatar.cc/108',
          lastMessage: 'Heyyyyyy',
          createdAt: '11:33PM',
        ),
        Message(
          sender: "Hacivat",
          imageUrl: 'https://i.pravatar.cc/109',
          lastMessage: 'Heyyyyyy',
          createdAt: '11:33PM',
        ),
        Message(
          sender: "Absinth",
          imageUrl: 'https://i.pravatar.cc/110',
          lastMessage: 'Heyyyyyy',
          createdAt: '11:33PM',
        ),
      ];
}
