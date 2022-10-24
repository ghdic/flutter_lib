import 'package:flutter/material.dart';

import '../const/colors.dart';

const regions = [
  '서울',
  '경기',
  '대구',
  '충남',
  '인천',
  '전남',
  '부산',
  '경기',
  '대구',
  '충남',
  '인천',
  '전남',
  '부산'
];

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: darkColor,
      child: ListView(
        children: [
          DrawerHeader(
              child: Text(
            '지역 선택',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          )),
          ...regions
              .map((e) => ListTile(
                    onTap: () {},
                    tileColor: Colors.white,
                    selectedTileColor: lightColor,
                    selectedColor: Colors.black,
                    selected: e == '서울',
                    title: Text(e),
                  ))
              .toList()
        ],
      ),
    );
  }
}
