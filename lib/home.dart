import 'package:flutter/material.dart';
import 'package:flutterarchapp/view_model.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RickyMorty _rickyMorty;
  @override
  void initState() {
    super.initState();
    _rickyMorty = Provider.of<RickyMorty>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_){
      _rickyMorty.getRickCharacters();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Rick and Morty",style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.red,
      ),
    );
  }
}

class Item extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

}