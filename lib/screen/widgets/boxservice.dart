import 'package:flutter/material.dart';
import 'package:stock_manager/styles/style.dart';

class NewBoxService extends StatelessWidget {
  const NewBoxService({super.key, required this.colorbox, required this.title, required this.icon});
  final Color colorbox;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: colorbox,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(icon, color: Style.bgColorLight, size: Style.sizeicon1,),
        const SizedBox(height: 20,),
        Text(title, style:  TextStyle(fontSize: Style.sizeText3, color: Style.bgColorLight)),
      ],),
    );
  }
}

class MineBoxService extends StatelessWidget {
  const MineBoxService({super.key, required this.icon, required this.name, required this.colorIcon});

  final IconData icon;
  final String name;
  final Color colorIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Style.borderBoxLight),
        color: Style.bgBoxColorLight,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Icon(icon, color: colorIcon, size: Style.sizeicon2,),
        const SizedBox(height: 10,),
        Text(name, style:  TextStyle(fontSize: Style.sizeText3, color: Style.colorTextLight,)),
      ],
    ),
    );
  }
}
