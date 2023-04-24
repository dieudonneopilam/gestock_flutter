import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:stock_manager/styles/style.dart';

AppBar appBarApp = AppBar(
  toolbarHeight: 80,
  elevation: 0,
  backgroundColor: Colors.white,
  title: Text('GESTOCK', style: TextStyle(color: Style.colorTextLight)),
  centerTitle: true,
  actions:[
    IconButton(onPressed: () {}, icon:  Icon(BootstrapIcons.moon, color: Style.colorTextLight)),
    IconButton(onPressed: () {}, icon:  Icon(BootstrapIcons.bell, color: Style.colorTextLight))
  ],
  leading: IconButton(onPressed: () {}, icon:  Icon(BootstrapIcons.list, color: Style.colorTextLight,)),
);

AppBar appBarAppReturn(BuildContext context){
  return AppBar(
  toolbarHeight: 80,
  elevation: 0,
  backgroundColor: Colors.white,
  title: Text('GESTOCK', style: TextStyle(color: Style.colorTextLight)),
  centerTitle: true,
  actions:[
    IconButton(onPressed: () {}, icon:  Icon(BootstrapIcons.moon, color: Style.colorTextLight)),
    IconButton(onPressed: () {}, icon:  Icon(BootstrapIcons.bell, color: Style.colorTextLight))
  ],
  leading: IconButton(onPressed: () { Navigator.pop(context); } , icon:  Icon(BootstrapIcons.arrow_left, color: Style.colorTextLight,)),
);
}