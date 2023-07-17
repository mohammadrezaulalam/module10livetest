import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Orientation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OrientationLayout(),
    );
  }
}

class OrientationLayout extends StatelessWidget {

  var myItems = [
    {"img":"https://www.shutterstock.com/image-vector/breaking-news-template-3d-red-600w-1928997539.jpg",},
    {"img":"https://www.shutterstock.com/image-vector/breaking-news-template-3d-red-600w-1928997539.jpg",},
    {"img":"https://www.shutterstock.com/image-vector/breaking-news-template-3d-red-600w-1928997539.jpg",},
    {"img":"https://www.shutterstock.com/image-vector/breaking-news-template-3d-red-600w-1928997539.jpg",},
    {"img":"https://www.shutterstock.com/image-vector/breaking-news-template-3d-red-600w-1928997539.jpg",},
    {"img":"https://www.shutterstock.com/image-vector/breaking-news-template-3d-red-600w-1928997539.jpg",},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Feed'),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return buildPortraitLayout(constraints);
              } else {
                return buildLandscapeLayout(constraints);
              }
            },
          );
        },
      ),
    );
  }

  Widget buildPortraitLayout(BoxConstraints constraints) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 600,
            child: SizedBox(
              width: 300,
              height: 300,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 0,
                  ),
                  itemCount: myItems.length,
                  itemBuilder: (context, index){
                    return Card(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        //color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            //color: Colors.blue,
                            child: Image.network(myItems[index]['img']!, fit: BoxFit.fill,),
                          ),
                        ),
                        //child: Image.network(myItems[index]['img']!, fit: BoxFit.fill,),
                      ),
                    );
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLandscapeLayout(BoxConstraints constraints) {


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Container(
            width: double.infinity,
            height: 200,
            child: SizedBox(
              width: 300,
              height: 300,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0,
                  ),
                  itemCount: myItems.length,
                  itemBuilder: (context, index){
                    return Card(
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        width: 200,
                        height: 300,
                        //color: Colors.green,
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Container(
                            height: 50,
                            width: 50,
                            //color: Colors.blue,
                            child: Image.network(myItems[index]['img']!, fit: BoxFit.fill,),
                          ),
                        ),
                        //child: Image.network(myItems[index]['img']!, fit: BoxFit.fill,),
                      ),
                    );
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}


