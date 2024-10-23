import 'package:flutter/material.dart';
import 'package:slicing_linkaja/widgets/history/history_card.dart';

class HistoryDone extends StatelessWidget {
  const HistoryDone({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.all(16),
      children: const [
        HistoryCard(
          title: 'Online Shopping',
          time: '6 Sep 2024, 13:40 WIB',
          amount: 30500,
          isSuccess: true,
          details: 'Fore Coffee - Semeru 2046075572250',
        ),
        HistoryCard(
          title: 'Online Shopping',
          time: '6 Sep 2024, 13:35 WIB',
          amount: 30500,
          isSuccess: false,
          details: 'Fore Coffee - Semeru 2046075572250',
        ),
        HistoryCard(
          title: 'Online Shopping',
          time: '6 Sep 2024, 13:30 WIB',
          amount: 30500,
          isSuccess: false,
          details: 'Fore Coffee - Semeru 2046075572250',
        ),
      ],
    );
  }
}
