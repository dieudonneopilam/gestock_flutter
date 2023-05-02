import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:stock_manager/styles/style.dart';

class BoxContentAdd extends StatelessWidget {
  const BoxContentAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Style.colorTextLight,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Icon(
                BootstrapIcons.bag_fill,
                size: 50,
                color: Style.bgColorLight,
              ),
            ),
          ),
          const Expanded(
            child: ListTile(
              title: Text(
                "New Articles",
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
