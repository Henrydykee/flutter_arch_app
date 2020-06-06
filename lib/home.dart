import 'package:flutter/material.dart';
import 'package:flutterarchapp/Status.dart';
import 'package:flutterarchapp/view_model.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  RickyMorty _viewModel;
  @override
  void initState() {
    super.initState();
    _viewModel = Provider.of<RickyMorty>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_)  {
         _viewModel.getRickCharacters();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Rick and Morty Api",style: TextStyle(
          color: Colors.white
        ),),
        backgroundColor: Colors.red,
      ),
      body: Consumer<RickyMorty>(
        builder: (context,viewModel, child){
           return  ListView.builder(itemBuilder: (context, index){
            return Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 10),
              child:  Container(
                height:  25,
                  width: MediaQuery.of(context).size.width,
                  child: Text( _viewModel.getCharacter().results[index].name)
              ),
            );
          });
        },
      )
    );
  }
}

class Item extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

}