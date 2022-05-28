import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../DetailsScreens/detailPage.dart';
class CardItem{
  String Img;
  String Place;
  String Name;
  String Price;
  String Detailes;
  CardItem({required this.Img,required this.Place,required this.Name,required this.Price,required this.Detailes});
}
var ListOfItems=[
    CardItem(
        Img:'assets/chair.png',
        Place: 'Office',
        Name: 'Minimalist Chair',
        Price: '\$120',
        Detailes: 'Amazing stylish in multiple colors choice we have for you..\n'
            'Most selling item of this year...',
    ),
  CardItem(
      Img:'assets/sofa.png',
      Place: 'Living Room',
      Name: 'Minimalist Sofa',
      Price: '\$175',
      Detailes:'Amazing stylish in multiple colors choice we have for you..\n '
          'Most selling item of this year...',),
  CardItem(
      Img:'assets/chair4.png',
      Place: 'Office',
      Name: 'Minimalist Chair',
      Price: '\$140',
      Detailes: 'Amazing stylish in multiple colors choice we have for you..\n '
          'Most selling item of this year...',),
  CardItem(
    Img:'assets/chair3.png',
    Place: 'Office',
    Name: 'Minimalist Chair',
    Price: '\$132',
    Detailes:'Amazing stylish in multiple colors choice we have for you..\n '
        'Most selling item of this year...',),
  CardItem(
    Img:'assets/sofa2.png',
    Place: 'Living Room',
    Name: 'Minimalist Sofa',
    Price: '\$245',
    Detailes:'Amazing stylish in multiple colors choice we have for you..\n '
        'Most selling item of this year...',),
  CardItem(
    Img:'assets/bed.png',
    Place: 'Bed Room',
    Name: 'Minimalist Bed',
    Price: '\$450',
    Detailes:'Amazing stylish in multiple colors choice we have for you..\n '
        'Most selling item of this year...',),
  CardItem(
    Img:'assets/sofa3.png',
    Place: 'Living Room',
    Name: 'Minimalist Sofa',
    Price: '\$199',
    Detailes:'Amazing stylish in multiple colors choice we have for you..\n '
        'Most selling item of this year...',),
  CardItem(
    Img:'assets/cupboard.png',
    Place: 'Bed Room',
    Name: 'Minimalist Cupboard',
    Price: '\$90',
    Detailes:'Amazing stylish in multiple colors choice we have for you..\n '
        'Most selling item of this year...',),

];

class ItemsList extends StatelessWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Expanded(
        child: Container(
          height: 390,
          child: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.all(15),
            scrollDirection: Axis.horizontal,
              itemCount: ListOfItems.length,
              itemBuilder:(BuildContext context, int index){
                return InkWell(
                    onTap: (){Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>detailPage(
                        Item:ListOfItems[index],
                      ),),);},
                  child: Container(
                      padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),

                    child: Column(
                      children: [
                        Image(image: AssetImage(ListOfItems[index].Img,),width: 190,height: 190,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[

                            Text(ListOfItems[index].Place,style: TextStyle(
                          color: Colors.grey[900],
                          fontSize: 16,

                        ),),
                        Text(ListOfItems[index].Name,
                        style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                        ),),
                        Row(
                          children: [Icon(Icons.star,color: Colors.yellow[600],),
                            Icon(Icons.star,color: Colors.yellow[600],),Icon(Icons.star,color: Colors.yellow[600],),
                            Icon(Icons.star,color: Colors.yellow[600],),Icon(Icons.star,color: Colors.yellow[600],),
                          ],
                        ),]),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(ListOfItems[index].Price,style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                            SizedBox(width: 70,),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                  color: Colors.black,
                                   padding: EdgeInsets.all(16),
                                  child:Center( child:Icon(Icons.shopping_bag,color:Colors.white,size: 30,),),
                                  )
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
