import 'package:flutter/material.dart';

import '../../../utils/dialog.dart';

class Games extends StatelessWidget {
  final String title;
  final List<String> assets;
  const Games({Key? key, required this.title, required this.assets}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: IntrinsicHeight(
            child: Row(
              children: [
                const VerticalDivider(
                  thickness: 3,
                  color: Colors.amber,
                ),
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
                ),
                const Spacer(),
                Padding(
                  padding:const EdgeInsets.only(right: 10),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return popUpDialog(context, 'Show more');
                          });
                    },
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.amber),
                        child: const Text(
                          'Show more',
                          style: TextStyle(color: Colors.white),
                          softWrap: true,
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
        for (var i = 0; i < assets.length; i = i + 2)
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [tile(context, assets[i]), tile(context, assets[i + 1])],
            ),
          ),
      ],
    );
  }

  Widget tile(BuildContext context, String asset) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return popUpDialog(context, 'Game tile');
              });
        },
        child: Container(
          height: 170,
          width: 170,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.amber),
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(asset),
              fit: BoxFit.cover,
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                width: MediaQuery.of(context).size.width,
                color: Colors.purple.shade800,
                child: const Text(
                  'Min.\u{20B9}100 | Max.\u{20B9}100k',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
