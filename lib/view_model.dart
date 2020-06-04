

import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutterarchapp/Status.dart';
import 'package:flutterarchapp/api.dart';
import 'package:flutterarchapp/model.dart';

class RickyMorty with ChangeNotifier{
  Status _status;
  String _errorMessage="";
  Rick _rick;
  var _api = API();

  Rick getCharacter() => _rick;

 void getRickCharacters(){
   _status = Status.LOADING;
   notifyListeners();
   try{
     _api.getCharacters().then((response){
       if(response.statusCode == 200 && response.statusCode  <300){
         _status = Status.SUCCESSFUL;
         _rick = Rick.fromJson(json.decode(response.body));
         print(response.body);
       }
     });
   }catch(ex){
     _status = Status.FAILED;
   }
 }
}