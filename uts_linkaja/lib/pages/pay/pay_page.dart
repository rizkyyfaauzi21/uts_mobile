import 'package:flutter/material.dart';
import 'package:slicing_linkaja/core/textstyle.dart';

class PayPage extends StatelessWidget {
  const PayPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Pay',
        style: semiBoldTS,
      ),
    );
  }
}
