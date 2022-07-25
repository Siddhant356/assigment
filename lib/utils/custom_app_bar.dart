import 'package:flutter/material.dart';

import 'dialog.dart';

AppBar customAppBar(BuildContext context){
  return AppBar(
    centerTitle: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    title: Image.asset(
      'assets/logo/logo.gif',
      height: 60,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 25, child: Image.asset('assets/images/promotion_icon.png')),
            const Text(
              'Promotions',
              style: TextStyle(fontSize: 10, color: Colors.amber, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
      InkWell(
        onTap: (){
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return popUpDialog(context, 'Login');
              });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          color: Colors.amber,
          child: const Center(
              child: Text(
                'LOGIN',
                style: TextStyle(fontSize: 16),
              )),
        ),
      )
    ],
  );
}