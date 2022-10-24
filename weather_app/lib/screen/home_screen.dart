import 'package:flutter/material.dart';
import 'package:weather_app/component/category_card.dart';
import 'package:weather_app/component/main_appbar.dart';
import 'package:weather_app/component/main_drawer.dart';
import 'package:weather_app/const/colors.dart';

import '../component/main_stat.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        drawer: MainDrawer(),
        body: CustomScrollView(
          slivers: [
            MainAppBar(),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [CategoryCard()],
              ),
            )
          ],
        ));
  }
}
