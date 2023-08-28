import 'package:alvamind_library/app/theme/app_sizes.dart';

import 'package:alvamind_library/view/samples/sample_wrapper.dart';

import 'package:flutter/material.dart';

import '../../widget/organism/chat_form/chat_form.dart';

class ChatFormSamplesView extends StatefulWidget {
  const ChatFormSamplesView({Key? key}) : super(key: key);

  static const routeName = '/organism-chat-form-samples';

  @override
  State<ChatFormSamplesView> createState() => _ChatFormSamplesViewState();
}

class _ChatFormSamplesViewState extends State<ChatFormSamplesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ChatForm Samples')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(AppSizes.padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            chatForm(),
          ],
        ),
      ),
    );
  }

  Widget chatForm() {
    return SampleWrapper(
      title: 'Chat Form',
      widget: ChatForm(
        textPlaceholder: 'Type a message ....',
        onTapAddButton: () {
          // TODO
        },
        onTapCameraButton: () {
          // TODO
        },
        onTapSendButton: () {
          // TODO
        },
      ),
    );
  }
}
