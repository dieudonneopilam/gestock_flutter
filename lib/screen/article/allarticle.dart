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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const BoxContent(namearticle: 'PRIMUS', nbarticle: 52),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
              child: Text('all articles', style: Style.styleTextSize1Light,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: TextButton(onPressed: (){}, child: const BoxArticle(nbarticle: 40, name: 'PRIMUS'))),
                      const SizedBox(width: 0,),
                      Expanded(child: TextButton(onPressed: (){}, child: const BoxArticle(nbarticle: 40, name: 'AFIA'))),
                      const SizedBox(width: 0,),
                      Expanded(child: TextButton(onPressed: (){}, child: const BoxArticle(nbarticle: 40, name: 'ORANGE'))),
                      const SizedBox(width: 0,),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}