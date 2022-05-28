import 'package:flutter/material.dart';

class searchBar extends StatelessWidget {
  const searchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius:BorderRadius.circular(10),
      ),
        margin: EdgeInsets.all(15),
      child: TextFormField(
        decoration: InputDecoration(
          border: InputBorder.none,
         icon: Icon(Icons.search_rounded),
          hintText: 'Search furniture..',
          hintStyle: TextStyle(
            color: Colors.grey[400],
          ),
          suffixIcon: Icon(Icons.filter_list_alt,color: Colors.black,),
          iconColor: Colors.grey[300],
        ),

        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
        ),
      ),
    );
  }
}
