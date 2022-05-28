import 'package:flutter/material.dart';

import '../Widgets/items.dart';
class detailPage extends StatefulWidget {
  final CardItem Item;
  const detailPage({Key? key, required this.Item}) : super(key: key);

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  var num=1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back),

                      ),
                      Text("Details",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                      IconButton(
                         onPressed: () {  },
                        icon: Icon(Icons.format_list_bulleted_outlined),

                      )

                    ],
                  ),),
                  Image(image: AssetImage(widget.Item.Img,),width: 250,height: 250,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                          margin: EdgeInsets.all(2.5),
                            padding: EdgeInsets.all(3.0),
                           height: 24,
                        width: 24,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color:Colors.black),
                    ),
                    child: Container(
                      decoration:BoxDecoration(
                        shape: BoxShape.circle,
                         color: Colors.red,

            ),

          ),
        ),
                    Container(
                      margin: EdgeInsets.all(2.5),
                      padding: EdgeInsets.all(3.0),
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color:Colors.black),
                      ),
                      child: Container(
                        decoration:BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,

                        ),

                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(2.5),
                      padding: EdgeInsets.all(3.0),
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color:Colors.black),
                      ),
                      child: Container(
                        decoration:BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.teal[700],
                        ),

                      ),
                    ),
                  ],
                ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[

                        Text(widget.Item.Place,style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 20,

                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(widget.Item.Name,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30,height: 1.5,
                              ),),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  color: Colors.grey[400],
                                  padding: EdgeInsets.all(10),
                                  child:Center( child:Icon(Icons.shopping_bag,color:Colors.black,size: 25,),),
                                )
                            ),

                          ],
                        ),
                        Row(

                          children: [Icon(Icons.star,color: Colors.yellow[600],),
                            Icon(Icons.star,color: Colors.yellow[600],),Icon(Icons.star,color: Colors.yellow[600],),
                            Icon(Icons.star,color: Colors.yellow[600],),Icon(Icons.star,color: Colors.yellow[600],),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,15,0,10),
                          child: Text(widget.Item.Detailes,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 18,

                            ),textAlign: TextAlign.justify,),
                        ),
                       Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             crossAxisAlignment: CrossAxisAlignment.center,
                             children: <Widget>[
                               Text.rich(
                                 TextSpan(
                         text: "Price:  ",style: TextStyle(
                         fontSize: 16,
                                   color: Colors.grey[600],
                       ),
                         children: <InlineSpan>[
                       TextSpan(
                       text: widget.Item.Price,style: TextStyle(
                         fontSize: 20,
                         fontWeight: FontWeight.bold,
                         color: Colors.black,
                       )
                             ),],),),


                               Row(
                                 children: [
                                  IconButton(
                                     onPressed: (){
                                       setState(() {
                                         if (num!=1){
                                           num=num-1;
                                         }

                                       });
                                     },
                                     icon: Icon(Icons.indeterminate_check_box_outlined),
                                  ),
                                   Text("$num",style: TextStyle(
                                     fontSize: 20,
                                     fontWeight: FontWeight.bold,
                                   ),),
                                   IconButton(
                                     onPressed: (){
                                       setState(() {
                                           num=num+1;
                                       });
                                     },
                                     icon: Icon(Icons.add_box_outlined),
                                   ),
                                 ],
                               ),
                         ],
                       )
                      ]),
                ElevatedButton(

                    onPressed: (){},
                    child: Center(
                      child: Text("Buy now",style: TextStyle(fontSize: 20),),
                    ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                           // side: BorderSide(color: Colors.red)
                        )
                    ),
                  padding:  MaterialStateProperty.resolveWith((states) =>EdgeInsets.all(22)),
                  backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.blueGrey[900],)
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
