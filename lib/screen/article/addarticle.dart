import 'package:flutter/material.dart';
import 'package:stock_manager/screen/widgets/appbar.dart';
import 'package:stock_manager/screen/widgets/boxaddarticle.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';

class AddArticle extends StatefulWidget {
  const AddArticle({super.key});

  @override
  State<AddArticle> createState() => _AddArticleState();
}

class _AddArticleState extends State<AddArticle> {
  final _categories = ["categorie1", "categorie2", "categorie3"];
  String? _selectedVal = "categorie1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarAppReturn(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/img/addprod.png'),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Name article',
                        prefixIcon: Icon(
                          BootstrapIcons.bag_fill,
                          color: Colors.blueGrey,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'Quantite initiale',
                        prefixIcon: Icon(
                          BootstrapIcons.question,
                          color: Colors.blueGrey,
                        ),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DropdownButtonFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          BootstrapIcons.card_text,
                          color: Colors.blueGrey,
                        ),
                        border: OutlineInputBorder(),
                      ),
                      value: _selectedVal,
                      items: _categories
                          .map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(e),
                            ),
                          )
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          _selectedVal = value as String;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0XFF284C7F),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.all(0),
                              child: Text(
                                'Enregistrer',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
