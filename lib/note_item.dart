import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget{
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
     margin: EdgeInsets.only(bottom: 20),
     child: ListTile(
       onTap: (){
         print('Clicked on Note Item.');
       },
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.circular(20),
       ),
       contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
       tileColor: Colors.white,
       leading: Icon(Icons.check_box,color: Colors.blue.shade800,),
       title: Text(
         'Check Mail',
         style: TextStyle(
             fontSize: 16,
             color: Colors.black,
             decoration: TextDecoration.lineThrough,
         ),
       ),
       trailing: Container(
         padding: EdgeInsets.all(0),
         height: 35,
         width: 35,
         decoration: BoxDecoration(
           color: Colors.red,
           borderRadius: BorderRadius.circular(5)
         ),
         child: IconButton(
           color: Colors.white,
           iconSize: 18,
           icon: Icon(Icons.delete),
           onPressed: (){
             print('Clicked on delete icon');
           },
         ),
       ),
     ),
   );
  }
}