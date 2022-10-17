import 'package:flutter/material.dart';




     class Alerts {
     static   Alert(context,msg, title) {
         return showDialog(
context: context,
           builder: (ctx) => AlertDialog(
             title: Center(
                 child: Row(
                   children: [

                     SizedBox(
                       width: 10,
                     ),
                     Text(
                       title,
                       style: const TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'Loew-Next-Arabic-ExtraBold'),
                     ),
                   ],
                 )),
             content: Directionality(
               textDirection: TextDirection.rtl,
               child: Text(
                 msg,
                 style: TextStyle(color:  Colors.black, fontSize: 12,fontFamily: 'Loew-Next-Arabic-ExtraBold',height: 1.2),
               ),
             ),
             actions: <Widget>[
               TextButton(

                 onPressed: () {
                   Navigator.of(ctx).pop();
                 },
                 child: Text('ok'),
               ),
             ],
           ),
         );
       }

     static   loading(context,txt) {
       showDialog(
         context: context,
         barrierDismissible: false,
         builder: (BuildContext context) {
           return AlertDialog(
             content: Directionality(
               textDirection: TextDirection.rtl,
               child: new Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   new CircularProgressIndicator(),
                   SizedBox(width: 10,),
                   new Text(txt),
                 ],
               ),
             ),
           );
         },
       );

     }

     }






