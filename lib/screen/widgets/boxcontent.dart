import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:stock_manager/screen/article/addarticle.dart';
import 'package:stock_manager/styles/style.dart';
// Import the generated file

class BoxContent extends StatelessWidget {
  const BoxContent(
      {super.key, required this.namearticle, required this.nbarticle});

  final String namearticle;
  final int nbarticle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img/prod.png'),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Icon(
              BootstrapIcons.bag_fill,
              size: 50,
              color: Style.bgColorLight,
            ),
          ),
          ListTile(
            trailing: CircleAvatar(
              backgroundColor: const Color(0XFF284C7F),
              maxRadius: 30,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AddArticle(),
                    ),
                  );
                },
                icon: const Icon(
                  BootstrapIcons.plus,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
