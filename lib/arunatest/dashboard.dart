import 'dart:ui';

import 'package:flutter/material.dart';

class dashBoard extends StatelessWidget {
  // this below code have drawer
  Drawer mainDrawer() {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff6efe9),
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          actions: [Icon(Icons.notifications_active)],
          title: Text('')),
      drawer: Drawer(child: mainDrawer()),
      body: SingleChildScrollView(child: mainBody(context)),
    );
  }

  Widget mainBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Hello, swathi ch',
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 192,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("jcb_image.PNG"),
                  fit: BoxFit.fill,
                ),
                color: Color(0xfff6efe9),
                border: Border.all(
                  color: Color(0xfff6efe9),
                ),
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Categories',
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 300,
            // this is static values so i am used this static gridview
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                for (int a = 0; a < 5; a++)
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("jcb_image.PNG"),
                              fit: BoxFit.fill,
                            ),
                            color: Color(0xfff6efe9),
                            border: Border.all(
                              color: Color(0xfff6efe9),
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20))),
                      ),
                      Text(
                        'Hire Machines',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            // if you need to reduce padding, kindly you can
            padding: const EdgeInsets.all(18.0),
            child: Container(
              height: 90,
              width: double.infinity,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 6,
                      child: Text(
                        'Went to rent or sell something?',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Post product'),
                        style: ElevatedButton.styleFrom(
                          // you need to change the color, kindly you can
                            primary: Colors.deepOrange, shape: StadiumBorder()),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
