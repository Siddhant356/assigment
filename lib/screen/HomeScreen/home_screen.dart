import 'package:flutter/material.dart';
import 'package:kheelo/screen/HomeScreen/widgets/banner_slider.dart';
import 'package:kheelo/screen/HomeScreen/widgets/games.dart';
import 'package:kheelo/screen/HomeScreen/widgets/live_withdrawal.dart';
import 'package:kheelo/utils/custom_app_bar.dart';
import 'package:kheelo/utils/custom_bottom_navigation_bar.dart';
import 'package:kheelo/utils/dialog.dart';

import '../../utils/assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return popUpDialog(context,'Add');
              });
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.amber,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      backgroundColor: Colors.black,
      appBar: customAppBar(context),
      bottomNavigationBar: customBottomNavigationBar(context),
      body: ListView(
        children: [
          const BannerSlider(),
          Container(
            height: 5,
            decoration: const BoxDecoration(color: Colors.amber),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(color: Colors.purple.shade600),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'English',
                  style: TextStyle(color: Colors.amber),
                ),
                Text(
                  'Hindi',
                  style: TextStyle(color: Colors.amber),
                ),
                Text(
                  'Marathi',
                  style: TextStyle(color: Colors.amber),
                ),
                Text(
                  'Telegu',
                  style: TextStyle(color: Colors.amber),
                ),
                Text(
                  '...',
                  style: TextStyle(color: Colors.amber),
                )
              ],
            ),
          ),
          Container(
            height: 5,
            decoration: const BoxDecoration(color: Colors.amber),
          ),
          const SizedBox(
            height: 30,
          ),
          Image.asset('assets/images/jackpot.jpeg'),
          const SizedBox(
            height: 30,
          ),
          const LiveWithdrawal(),
          Center(child: Text('GAMES', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.orange.shade200, letterSpacing: 0.2))),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
            height: 3,
            decoration: const BoxDecoration(color: Colors.amber),
          ),
          Games(title: 'Most Popular', assets: mostPopular),
          Games(title: 'Live Dealer', assets: liveDealer),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Image.asset(
            'assets/logo/logo.gif',
            height: 60,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'India\'s Best Online Casino Slot & Live Games',
            style: TextStyle(color: Colors.white, fontSize: 12),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                '18+',
                style: TextStyle(color: Colors.orange, fontSize: 12),
                textAlign: TextAlign.center,
              ),
              Text(
                'Be Responsible',
                style: TextStyle(color: Colors.white, fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
