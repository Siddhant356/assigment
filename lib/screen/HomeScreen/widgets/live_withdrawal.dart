import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LiveWithdrawal extends StatelessWidget {
  const LiveWithdrawal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text('LIVE WITHDRAWAL', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: Colors.orange.shade200, letterSpacing: 0.2))),
        Container(
          margin:  EdgeInsets.symmetric(horizontal: 100, vertical: 10),
          height: 3,
          decoration: const BoxDecoration(color: Colors.amber),
        ),
        Container(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            height: 140,
            decoration:
                BoxDecoration(color: Colors.purple.shade600, borderRadius: BorderRadius.circular(20), border: Border.all(width: 5, color: Colors.amber)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Expanded(
                      child: ListTile(
                        leading: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text(
                          'Rohan',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '3 seconds ago',
                          style: TextStyle(color: Colors.white70),
                        ),
                        dense: true,
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text(
                          'Rohan',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '3 seconds ago',
                          style: TextStyle(color: Colors.white70),
                        ),
                        dense: true,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Expanded(
                      child: ListTile(
                        leading: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text(
                          'Rohan',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '3 seconds ago',
                          style: TextStyle(color: Colors.white70),
                        ),
                        dense: true,
                      ),
                    ),
                    Expanded(
                      child: ListTile(
                        leading: Icon(
                          Icons.account_circle,
                          color: Colors.white,
                          size: 40,
                        ),
                        title: Text(
                          'Rohan',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          '3 seconds ago',
                          style: TextStyle(color: Colors.white70),
                        ),
                        dense: true,
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ],
    );
  }
}
