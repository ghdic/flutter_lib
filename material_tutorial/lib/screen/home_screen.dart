import 'package:flutter/material.dart';
import 'package:material_tutorial/screen/about_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Home',
            style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: Theme.of(context).colorScheme.primary,
                fontWeight: FontWeight.w700),
          ),
          ElevatedButton(
              onPressed: () {
                /*Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutScreen()));*/
                Navigator.pushNamed(context, '/about');
              },
              child: Text('To About Page'))
        ],
      )),
    );
  }
}
