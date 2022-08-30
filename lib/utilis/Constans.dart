import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

String url = 'https://git.heroku.com/my-app1900.git';
int success = 200;
TextStyle style1 = const TextStyle(color: Colors.lightBlue, fontSize: 30);
TextStyle style2 = const TextStyle(color: Colors.white, fontSize: 20);
TextStyle style3 = const TextStyle(color: Colors.lightBlue, fontSize: 15);
IconButton icon =
    IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_right));
kdebugCheck(var data) {
  if (kDebugMode) {
    print(data);
  }
}
Map<String,dynamic>toMap( var titleListTile ,var subtitleListTile ,var leadingListTile){
  return  {
      "titleListTile": titleListTile,
      "subtitleListTile": subtitleListTile,
      "leadingListTile": leadingListTile,
    };
    

}


