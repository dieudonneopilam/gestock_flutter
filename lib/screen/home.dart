import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:stock_manager/screen/article/allarticle.dart';
import 'package:stock_manager/screen/widgets/appbar.dart';
import 'package:stock_manager/screen/widgets/boxservice.dart';
import 'package:stock_manager/styles/style.dart';

class Accueil extends StatefulWidget {
  const Accueil({super.key});

  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      // ignore: prefer_const_constructors
      appBar: appBarApp,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('New Services', style: Style.styleTextSize1Light),
                  const SizedBox(height: 20,),
                  Row(children: const [
                    NewBoxService(colorbox: Color(0xFF20A7C5), title: 'Fournisseur', icon: BootstrapIcons.basket3_fill,),
                    SizedBox(width: 20,),
                    NewBoxService(colorbox: Color(0xFFFF4307), title: 'Report Clear', icon: BootstrapIcons.graph_up,)
                  ],)
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Mes Services', style: Style.styleTextSize1Light,),
                  IconButton(onPressed: () {
                  }, icon: const Icon(BootstrapIcons.grid))
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const  AllArticle(),));
                              },
                              child: const MineBoxService(
                                icon: BootstrapIcons.bag_fill,
                                name: 'produits',
                                colorIcon: Colors.blueGrey,
                              )
                            ),
                            TextButton(
                              onPressed: (){},
                              child: const MineBoxService(
                                icon: BootstrapIcons.cart4,
                                name: 'ventes',
                                colorIcon: Colors.red,
                              ),
                            ),
                            TextButton(
                              onPressed: (){},
                              child: const MineBoxService(
                                icon: BootstrapIcons.bandaid,
                                name: 'achats',
                                colorIcon: Colors.blue,
                              ),
                            ),
                        ],),
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                          TextButton(
                            onPressed: (){},
                            child: const MineBoxService(
                              icon: BootstrapIcons.graph_up_arrow,
                              name: 'analyses',
                              colorIcon: Color(0xFF38D700),
                            ),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: const MineBoxService(
                              icon: BootstrapIcons.clipboard2_pulse,
                              name: 'rapport',
                              colorIcon: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: (){},
                            child: const MineBoxService(
                              icon: BootstrapIcons.infinity,
                              name: 'dettes',
                              colorIcon: Colors.red,
                            ),
                          ),
                        ],),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}