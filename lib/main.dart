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
        title: const Text('Profile'),
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


    // return Row(
    //   children: [
    //     Padding(
    //       padding: const EdgeInsets.only(top: 8, bottom: 8),
    //       child: SizedBox(
    //         height: 300,
    //         width: constraints.maxWidth * 0.4,
    //         child: const SizedBox(
    //           height: 300,
    //           width: 300,
    //           child: CircleAvatar(
    //             backgroundImage: NetworkImage('https://watermark.lovepik.com/photo/20211121/large/lovepik-camera-picture_500584614.jpg',),
    //             backgroundColor: Colors.white,
    //           ),
    //         ),
    //       ),
    //     ),
    //
    //     SingleChildScrollView(
    //       child: SizedBox(
    //         width: constraints.maxWidth * 0.6,
    //         child: Column(
    //           mainAxisSize: MainAxisSize.min,
    //           children: [
    //             const SizedBox(height: 10,),
    //             const Text('John Doe', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
    //             const Padding(
    //               padding: EdgeInsets.symmetric(horizontal: 29, vertical: 10),
    //               child: Text(
    //                 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore.',
    //                 style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
    //               ),
    //             ),
    //
    //             SizedBox(
    //               width: 400,
    //               height: 300,
    //               child: GridView.builder(
    //                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //                     crossAxisCount: 3,
    //                     crossAxisSpacing: 0,
    //                   ),
    //                   itemCount: myItems.length,
    //                   itemBuilder: (context, index){
    //                     return GestureDetector(
    //                       child: Container(
    //                         margin: const EdgeInsets.all(5),
    //                         width: 400,
    //                         height: 300,
    //                         child: Image.network(myItems[index]['img']!, fit: BoxFit.fill,),
    //                       ),
    //                     );
    //                   }
    //               ),
    //             ),
    //           ],
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}


