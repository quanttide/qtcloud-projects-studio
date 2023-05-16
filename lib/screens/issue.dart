/// 议题页面

import 'package:flutter/material.dart';
import 'package:markdown_editor_plus/markdown_editor_plus.dart';


class IssueScreen extends StatelessWidget {
  const IssueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return const Scaffold(
        body: Column(
          children: [
            Text('标题'),
            IssueContent(title: '内容'),
            IssueContent(title: '结论'),
          ]
        )
    );
  }
}


class IssueContent extends StatelessWidget {
  final String title;

  const IssueContent({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    return Column(
        children: [
          Text(title),
          MarkdownAutoPreview(
            // editable text with toolbar by default
            controller: controller,
            emojiConvert: true,
          ),
        ]
    );
  }
}