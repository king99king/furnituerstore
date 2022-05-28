import 'package:flutter/material.dart';

import 'items.dart';

class BestSellar extends StatelessWidget {
  const BestSellar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
          children:<Widget> [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Best Seller',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),),
                 InkWell(
                   onTap: (){},
                   child:Text("View all" , style: TextStyle(
                     color: Colors.black,
                     fontSize: 18,
                   ),) ,)
                ],
              ),
            ),

             ItemsList(),



          ],
        ),

    );
  }
}
