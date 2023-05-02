import 'package:flutter/material.dart';
import 'package:stock_manager/screen/widgets/appbar.dart';
import 'package:stock_manager/screen/widgets/boxarticle.dart';
import 'package:stock_manager/screen/widgets/boxcontent.dart';
import 'package:stock_manager/styles/style.dart';

class AllArticle extends StatelessWidget {
  const AllArticle({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgBoxColorLight,
      appBar: appBarAppReturn(context),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BoxContent(namearticle: 'PRIMUS', nbarticle: 52),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        decoration: const BoxDecoration(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 20),
                              child: Text('ALL ARTICLES',
                                  style: Style.styleTextSize1Light),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                  height: 400,
                  child: ListView(
                    children: [
                      BoxArticle(nbarticle: 2, name: 'PRIMUS'),
                      BoxArticle(nbarticle: 2, name: 'PRIMUS'),
                      BoxArticle(nbarticle: 2, name: 'PRIMUS'),
                      BoxArticle(nbarticle: 2, name: 'PRIMUS'),
                      BoxArticle(nbarticle: 2, name: 'PRIMUS'),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
