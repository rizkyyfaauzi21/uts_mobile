import 'package:flutter/material.dart';
import 'package:slicing_linkaja/core/textstyle.dart';
import 'package:slicing_linkaja/widgets/home/overview_bonus_balance.dart';
import 'package:slicing_linkaja/widgets/home/overview_your_balance.dart';

class OverviewCard extends StatelessWidget {
  final String name;
  final int yourBalance;
  final int bonusBalance;
  const OverviewCard({
    super.key,
    required this.name,
    required this.yourBalance,
    required this.bonusBalance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [
            Colors.red.shade400,
            Colors.red.shade800,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Name
          Text(
            'Hi, $name',
            style: mediumTS.copyWith(color: Colors.white),
          ),

          const SizedBox(height: 12),

          Row(
            children: [
              // Your Balance
              Expanded(
                flex: 2,
                child: OverviewYourBalance(yourBalance: yourBalance),
              ),

              const SizedBox(width: 12),

              // Bonus Balance
              Expanded(
                flex: 2,
                child: OverviewBonusBalance(bonusBalance: bonusBalance),
              ),

              // Remaining Space
              Expanded(
                flex: 1,
                child: Container(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
