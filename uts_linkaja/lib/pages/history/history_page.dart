import 'package:flutter/material.dart';
import 'package:slicing_linkaja/core/textstyle.dart';
import 'package:slicing_linkaja/pages/history/history_done.dart';
import 'package:slicing_linkaja/pages/history/history_pending.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // 2 Tab, Pending and Done
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        // Appbar ('Transaction History' title and 'Pending and Done' tab bar)
        appBar: AppBar(
          title: Text(
            'Transaction History',
            style: mediumTS.copyWith(fontSize: 16),
          ),
          centerTitle: true,
          bottom: TabBar(
            labelStyle: mediumTS.copyWith(color: Colors.black),
            unselectedLabelStyle: regularTS.copyWith(color: Colors.black),
            indicatorColor: Colors.red,
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(text: 'Pending'),
              Tab(text: 'Done'),
            ],
          ),
        ),

        body: const TabBarView(
          children: [
            HistoryPending(),
            HistoryDone(),
          ],
        ),
      ),
    );
  }
}
