import 'package:avataaar_image/avataaar_image.dart';
import 'package:flutter/material.dart';

class avatar extends StatelessWidget{

  Avataaar _avatar;

   avatar(Avataaar avatar){
     this._avatar= avatar;
   }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AvataaarImage(
        avatar: _avatar,
        width: 25,
        placeholder: CircularProgressIndicator(),
        errorImage: Icon(Icons.error),
      ),
    );
  }

}
