import 'package:flutter/material.dart';

import '../../widget/molecule/app_message_bubble.dart';

class MessageBubbleSamplesView extends StatefulWidget {
  const MessageBubbleSamplesView({Key? key}) : super(key: key);

  static const routeName = '/molecule-message-bubble-samples';

  @override
  State<MessageBubbleSamplesView> createState() =>
      _MessageBubbleSamplesViewState();
}

class _MessageBubbleSamplesViewState extends State<MessageBubbleSamplesView> {
  List<Map<String, dynamic>> messages = [
    {
      'is_me': true,
      'is_readed': true,
      'message': 'Kyowa arigato ne',
      'time_stamp': DateTime.now(),
    },
    {
      'is_me': false,
      'user_name': 'Toyama Nao',
      'is_readed': false,
      'message': 'Are, dare desu ka?',
      'time_stamp': DateTime.now(),
    },
    {
      'is_me': true,
      'is_readed': true,
      'message': 'Eurisu desu',
      'time_stamp': DateTime.now(),
    },
    {
      'is_me': false,
      'user_name': 'Toyama Nao',
      'is_readed': false,
      'message': 'Ee, gomen gomen.. ',
      'time_stamp': DateTime.now(),
    },
    {
      'is_me': false,
      'user_name': 'Toyama Nao',
      'is_readed': false,
      'message': 'Kyowa no sora ni kirei da ne',
      'time_stamp': DateTime.now(),
    },
    {
      'is_me': true,
      'is_readed': true,
      'message': 'Sokka?',
      'time_stamp': DateTime.now(),
    },
    {
      'is_me': false,
      'user_name': 'Toyama Nao',
      'is_readed': false,
      'message': 'Mo kieteru yo!',
      'time_stamp': DateTime.now(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Message Bubble Samples')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            ...List.generate(
              messages.length,
              (i) => AppMessageBubble(
                isMe: messages[i]['is_me'],
                userName: messages[i]['user_name'],
                isReaded: messages[i]['is_readed'],
                message: messages[i]['message'],
                timeStamp: messages[i]['time_stamp'],
              ),
            )
          ],
        ),
      ),
    );
  }
}
