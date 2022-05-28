import 'package:flutter/material.dart';

import 'Widgets/BestDeals.dart';
import 'Widgets/TypeList.dart';
import 'Widgets/UserDetails.dart';
import 'Widgets/bestSellar.dart';
import 'Widgets/searchbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        body: Container(
          child: ListView(
            children: <Widget>[
              UserInfo(),
              searchBar(),
               BestScreen(),
              ListFurn(),
              BestSellar(),
            ],
          ),
        ),
      ),

    );
  }
}
