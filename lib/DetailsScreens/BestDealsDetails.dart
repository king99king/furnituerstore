
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestDetails extends StatelessWidget {
  const BestDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.grey[200],
      body: Container(
        margin: EdgeInsets.all(8),
        color: Colors.grey[200],
              child: Column(
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
                        Text("Offers",style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),),
                        IconButton(
                          onPressed: () {  },
                          icon: Icon(Icons.format_list_bulleted_outlined),

                        )

                      ],
                    ),),
                  Container(
                    height: 90,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[900],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(10),
                    child: Center(
                      child: Text(
                        "Best Deals\n 20% OFF",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.yellowAccent[700],
                        ),
                      ),
                    ),
                  ),
                      Expanded(
                        child: GridView.builder(
                          itemCount: ListOfItemsOFF.length,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children:[
                                    Image(image: AssetImage(ListOfItemsOFF[index].Img,),width: 150,height: 150,),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children:[

                                        Text(ListOfItemsOFF[index].Place,style: TextStyle(
                                          color: Colors.grey[900],
                                          fontSize: 16,

                                        ),),
                                        Text(ListOfItemsOFF[index].Name,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),),
                                      ], ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          Text("before:${ListOfItemsOFF[index].Price}",style: TextStyle(
                                            decoration: TextDecoration.lineThrough,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          Text("now: ${ListOfItemsOFF[index].OffPrice}",style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                        ],
                                      ),
                                    )

                                  ]
                              ),
                            );

                          },
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                          mainAxisSpacing: 15,
                            childAspectRatio: 2/3,
                          crossAxisSpacing: 15,

                          ),

              ),
            ),

        ]),
    ))
    );
  }
}

class ItemOFF{
  String Img;
  String Place;
  String Name;
  String Price;
  String Detailes;
  String OffPrice ;
  ItemOFF({required this.Img,required this.Place,required this.Name,required this.Price,required this.Detailes,required this.OffPrice});
}
var ListOfItemsOFF=[
  ItemOFF(
    Img:'assets/chair.png',
    Place: 'Office',
    Name: 'Minimalist Chair',
    Price: '\$120',
    OffPrice: '\$96',
    Detailes: 'Amazing stylish in multiple colors choice we have for you..\n'
        'Most selling item of this year...',
  ),
  ItemOFF(
    Img:'assets/sofa.png',
    Place: 'Living Room',
    Name: 'Minimalist Sofa',
    Price: '\$175',
    OffPrice: '\$140',
    Detailes:'Amazing stylish in multiple colors choice we have for you..\n '
        'Most selling item of this year...',),
  ItemOFF(
    Img:'assets/chair4.png',
    Place: 'Office',
    Name: 'Minimalist Chair',
    Price: '\$140',
    OffPrice: '\$112',
    Detailes: 'Amazing stylish in multiple colors choice we have for you..\n '
        'Most selling item of this year...',),
  ItemOFF(
    Img:'assets/chair3.png',
    Place: 'Office',
    Name: 'Minimalist Chair',
    Price: '\$132',
    OffPrice: '\$105.6',
    Detailes:'Amazing stylish in multiple colors choice we have for you..\n '
        'Most selling item of this year...',),
  ItemOFF(
    Img:'assets/sofa2.png',
    Place: 'Living Room',
    Name: 'Minimalist Sofa',
    Price: '\$245',
    OffPrice: '\$196',
    Detailes:'Amazing stylish in multiple colors choice we have for you..\n '
        'Most selling item of this year...',),
  ItemOFF(
    Img:'assets/sofa3.png',
    Place: 'Living Room',
    Name: 'Minimalist Sofa',
    Price: '\$199',
    OffPrice: '\$159.2',
    Detailes:'Amazing stylish in multiple colors choice we have for you..\n '
        'Most selling item of this year...',),
];