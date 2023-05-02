import 'package:flutter/material.dart';
import 'package:stock_manager/styles/style.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class BoxArticle extends StatelessWidget {
  const BoxArticle({super.key, required this.nbarticle, required this.name});

  final int nbarticle;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: const Color.fromARGB(255, 206, 206, 206),
          width: 0.6,
        ),
        color: Style.bgBoxColorLight,
      ),
      child: ListTile(
          leading: Icon(
            BootstrapIcons.bag_fill,
            color: Colors.blueGrey,
            size: 40,
          ),
          title: Text(name),
          subtitle: Text('produit'),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.delete,
              size: 30,
            ),
          )),
    );
  }
}
