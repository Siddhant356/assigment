import 'package:flutter/material.dart';

Dialog popUpDialog(BuildContext context, String title) {
  return Dialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)), //this right here
    child: Container(
      height: (MediaQuery.of(context).size.height * 2) / 3,
      width: 300.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(width: 3, color: Colors.amber), color: const Color(0XFF260638).withGreen(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.close, color:  Colors.white, size: 30,),
            ),
          ),
          SizedBox(height: 60, child: Image.asset('assets/logo/logo.gif')),
          const SizedBox(height: 20,),
          Text('$title button clicked', style: const TextStyle(color: Colors.white, fontSize: 20),)

        ],
      ),
    ),
  );
}
