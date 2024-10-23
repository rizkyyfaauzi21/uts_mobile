import 'package:flutter/material.dart';
import 'package:slicing_linkaja/core/textstyle.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Inbox',
        style: semiBoldTS,
      ),
    );
  }
}
