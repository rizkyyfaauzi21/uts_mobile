import 'package:flutter/material.dart';
import 'package:slicing_linkaja/core/textstyle.dart';

class HomeFeatureMenu extends StatelessWidget {
  final IconData icon;
  final String title;
  const HomeFeatureMenu({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      width: 72,
      child: Column(
        children: [
          // Icon
          Icon(
            icon,
            size: 32,
            color: Colors.redAccent.shade700,
          ),

          const SizedBox(height: 16),

          // Title
          Text(
            title,
            style: regularTS.copyWith(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
