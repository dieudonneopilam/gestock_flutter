import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:stock_manager/styles/style.dart';

class BoxContent extends StatelessWidget {
  const BoxContent({super.key, required this.namearticle, required this.nbarticle});

  final String namearticle;
  final int nbarticle;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(10),
      height: 160,
      width: double.infinity,
      decoration:  BoxDecoration(
        color: Style.colorTextLight,
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children:   [
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child:  Icon(BootstrapIcons.bag_fill, size: 40, color: Style.bgColorLight,),
          ),
          ListTile(
            title: Text("$nbarticle Articles", style: const TextStyle(fontSize: 30, color: Colors.white),),
            subtitle: const Text('now', style: TextStyle(color: Colors.white, fontSize: 20),),
            trailing: CircleAvatar(
              backgroundColor: Style.bgBoxColorLight,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(BootstrapIcons.plus,)
              ),
            ),
          )
        ],
      ),
    );
  }
}