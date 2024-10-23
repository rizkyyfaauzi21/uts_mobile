import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:slicing_linkaja/pages/account/account_page.dart';
import 'package:slicing_linkaja/pages/history/history_page.dart';
import 'package:slicing_linkaja/pages/home/home_page.dart';
import 'package:slicing_linkaja/pages/inbox/inbox_page.dart';
import 'package:slicing_linkaja/pages/pay/pay_page.dart';
import '../core/textstyle.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const HistoryPage(),
    const PayPage(),
    const InboxPage(),
    const AccountPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.red,
        selectedLabelStyle: regularTS.copyWith(fontSize: 12),
        unselectedItemColor: Colors.black54,
        unselectedLabelStyle: regularTS.copyWith(fontSize: 12),
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() => currentIndex = newIndex);
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.home_2),
            activeIcon: Icon(IconsaxPlusBold.home_2),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.document_text_1),
            activeIcon: Icon(IconsaxPlusBold.document_text_1),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.scan_barcode),
            activeIcon: Icon(IconsaxPlusBold.scan_barcode),
            label: 'Pay',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.message_text_1),
            activeIcon: Icon(IconsaxPlusBold.message_text_1),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconsaxPlusLinear.profile_circle),
            activeIcon: Icon(IconsaxPlusBold.profile_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
