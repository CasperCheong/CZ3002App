import 'package:flutter/material.dart';

import 'components/settings_list.dart';



class SettingsScreen extends StatelessWidget{
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return WillPopScope(
      onWillPop: () async => false,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading: IconButton(onPressed:() {Navigator.pop(context);}, icon: Icon(Icons.keyboard_arrow_left),color: Colors.black,iconSize: 40),
            shadowColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 100,
            backgroundColor: Color(0xFF61E4D5),
            flexibleSpace: Image(
                image:AssetImage('assets/images/NTUMarketLogo.png'),
                fit:BoxFit.cover)
            ,
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SettingsList(),
          )
        ),
      ),
    );
  }
}