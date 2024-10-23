import 'package:flutter/material.dart';
import 'package:slicing_linkaja/core/textstyle.dart';

class HistoryCard extends StatelessWidget {
  final String title;
  final String time;
  final int amount;
  final bool isSuccess;
  final String details;
  const HistoryCard({
    super.key,
    required this.title,
    required this.time,
    required this.amount,
    this.isSuccess = true,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Transaction title and Amount
                Row(
                  children: [
                    Text(
                      title,
                      style: mediumTS.copyWith(fontSize: 15),
                    ),
                    const SizedBox(width: 6),
                    const Spacer(),
                    Text(
                      'Rp$amount',
                      style: mediumTS.copyWith(fontSize: 15),
                    ),
                  ],
                ),

                const SizedBox(height: 6),

                // Transaction time and status
                Row(
                  children: [
                    Text(
                      time,
                      style: regularTS.copyWith(color: Colors.grey.shade400),
                    ),
                    const SizedBox(width: 6),
                    const Spacer(),
                    Text(
                      isSuccess ? 'Success' : 'Failed',
                      style: mediumTS.copyWith(
                        color: isSuccess ? Colors.green : Colors.redAccent.shade700,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),

          // Line
          const Divider(
            thickness: 0.5,
            height: 12,
          ),

          // Transaction details
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              details,
              style: regularTS,
            ),
          )
        ],
      ),
    );
  }
}
