import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:slicing_linkaja/core/textstyle.dart';

class OverviewYourBalance extends StatelessWidget {
  final int yourBalance;
  const OverviewYourBalance({
    super.key,
    required this.yourBalance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'Your Balance',
            style: regularTS.copyWith(fontSize: 12),
          ),

          const SizedBox(height: 8),

          // Balance
          Row(
            children: [
              Text(
                'Rp $yourBalance',
                style: mediumTS,
              ),
              const SizedBox(width: 6),
              Icon(
                IconsaxPlusBold.arrow_circle_right,
                size: 16,
                color: Colors.red.shade400,
              )
            ],
          )
        ],
      ),
    );
  }
}
