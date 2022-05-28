import 'package:flutter/material.dart';

final List<String> Types=[
  'chair','Lamb','Table','Sofa','Cupboard'
];


class ListFurn extends StatelessWidget {
  const ListFurn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Expanded(
        child: Container(
          height: 90,
          child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(10),
                  itemCount: Types.length,
                  itemBuilder: (BuildContext context, int index) {
                   return InkWell(
                     onTap: (){},
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:(index==0) ? Colors.yellowAccent[700] :  Colors.blueGrey[50],
                          ),
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.all(10),
                          child: Text(Types[index],
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),),
                        ),

                    );
                  },
                ),
        ),
      ),
    );
  }
}
