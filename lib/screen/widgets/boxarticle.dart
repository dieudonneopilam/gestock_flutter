import 'package:flutter/material.dart';
import 'package:stock_manager/styles/style.dart';

class BoxArticle extends StatelessWidget {
  const BoxArticle({super.key, required this.nbarticle, required this.name});

  final int nbarticle;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.blueGrey),
        color: Style.bgBoxColorLight,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(nbarticle.toString(), style: const TextStyle(fontSize: 18),),
        const SizedBox(height: 10,),
        Text(name, style:  TextStyle(fontSize: Style.sizeText3, color: Style.colorTextLight,)),
      ],),
    );
  }
}