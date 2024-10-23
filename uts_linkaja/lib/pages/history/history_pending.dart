import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:slicing_linkaja/core/textstyle.dart';

class HistoryPending extends StatelessWidget {
  const HistoryPending({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          IconsaxPlusBroken.transaction_minus,
          size: 72,
          color: Colors.redAccent.shade700,
        ),
        const SizedBox(height: 24),
        Text(
          'All transaction is completed!',
          style: semiBoldTS.copyWith(fontSize: 16),
        ),
        const SizedBox(height: 8),
        Text(
          'Any pending transaction will appear in this page',
          style: regularTS.copyWith(fontSize: 12, color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
