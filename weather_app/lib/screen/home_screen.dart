import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/component/card_title.dart';
import 'package:weather_app/component/category_card.dart';
import 'package:weather_app/component/hourly_card.dart';
import 'package:weather_app/component/main_appbar.dart';
import 'package:weather_app/component/main_card.dart';
import 'package:weather_app/component/main_drawer.dart';
import 'package:weather_app/const/colors.dart';
import 'package:weather_app/const/data.dart';
import 'package:weather_app/model/stat_model.dart';
import 'package:weather_app/repository/stat_repository.dart';

import '../component/main_stat.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    final statModels = await StatRepository.fetchData();
  }

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
                children: [
                  CategoryCard(),
                  const SizedBox(
                    height: 16.0,
                  ),
                  HourlyCard()
                ],
              ),
            )
          ],
        ));
  }
}
