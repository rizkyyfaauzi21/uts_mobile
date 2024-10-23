import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:slicing_linkaja/widgets/home/carousel_content.dart';
import 'package:slicing_linkaja/widgets/home/home_action_menu.dart';
import 'package:slicing_linkaja/widgets/home/home_appbar_icon.dart';
import 'package:slicing_linkaja/widgets/home/home_feature_menu.dart';
import 'package:slicing_linkaja/widgets/home/overview_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          // Appbar
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                // Logo LinkAja
                Image.asset(
                  'assets/LinkAja.png',
                  height: 40,
                  width: 40,
                ),

                const Spacer(),

                // Icon Heart
                const HomeAppbarIcon(
                  icon: IconsaxPlusLinear.heart,
                ),

                const SizedBox(width: 8),

                // Icon FAQ
                const HomeAppbarIcon(
                  icon: IconsaxPlusLinear.message,
                ),
              ],
            ),
          ),

          // Overview Card
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: OverviewCard(
              name: 'Rizky Fauzi',
              yourBalance: 1000000,
              bonusBalance: 100,
            ),
          ),

          const SizedBox(height: 16),

          // Action Menu
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeActionMenu(
                  icon: IconsaxPlusLinear.card_add,
                  title: 'Top Up',
                ),
                HomeActionMenu(
                  icon: IconsaxPlusLinear.card_receive,
                  title: 'Cash Out',
                ),
                HomeActionMenu(
                  icon: IconsaxPlusLinear.document_forward,
                  title: 'Send Money',
                ),
                HomeActionMenu(
                  icon: IconsaxPlusLinear.category,
                  title: 'See All',
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // Feature Menu
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.call,
                  title: 'Pulsa/Data',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.electricity,
                  title: 'Electricity',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.wifi_square,
                  title: 'Cable TV & Internet',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.card,
                  title: 'Kartu Uang Elektronik',
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.teacher,
                  title: 'School',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.card_pos,
                  title: 'Infaq',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.money_send,
                  title: 'Other Donations',
                ),
                HomeFeatureMenu(
                  icon: IconsaxPlusBold.more,
                  title: 'More',
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          // Article
          CarouselSlider(
            items: const [
              CarouselContent(
                image: 'assets/campaign1.jpg',
              ),
              CarouselContent(
                image: 'assets/campaign2.jpg',
              ),
              CarouselContent(
                image: 'assets/campaign3.jpg',
              ),
            ],
            options: CarouselOptions(
              height: 150,
              autoPlay: true,
            ),
          ),
        ],
      ),
    );
  }
}
