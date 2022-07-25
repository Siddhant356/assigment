import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'dialog.dart';

Widget customBottomNavigationBar(BuildContext context){
  return Container(
    height: 70,
    color: Colors.white,
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return popUpDialog(context, 'Support');
                    });
              },
              child: Container(
                color: Colors.amber,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/promotion_footer.svg',
                      color: Colors.white,
                      height: 32,
                    ),
                    const Text(
                      'Support',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return popUpDialog(context, 'Sports');
                    });
              },
              child: Container(
                color: Colors.black,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/sports-new.png',
                      height: 34,
                    ),
                    const Text(
                      'Sports',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return popUpDialog(context, 'Live Casino');
                    });
              },
              child: Container(
                color: Colors.black,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.storage_outlined,
                      color: Colors.orange,
                      size: 32,
                    ),
                    Text(
                      'Live Casino',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: (){
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return popUpDialog(context, 'Register');
                    });
              },
              child: Container(
                color: Colors.amber,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/register_footer.svg',
                      color: Colors.white,
                      height: 32,
                    ),
                    const Text(
                      'Register',
                      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                    )
                  ],
                ),
              ),
            ))
      ],
    ),
  );
}