import 'package:coffe/ViewPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gerai Coffe',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ViewData(),
    );
  }
}

class ViewData extends StatefulWidget {
  ViewData({Key? key}) : super(key: key);

  @override
  _ViewDataState createState() => _ViewDataState();
}

class _ViewDataState extends State<ViewData> {
  final List<String> imgList = [
    'https://thecafelife.co.uk/images/directory/categories/chocolate-drinks.jpg',
    'https://cookitonce.com/wp-content/uploads/2020/09/KAHLUA-COCOA.jpg',
    'https://www.finedininglovers.com/sites/g/files/xknfdk626/files/styles/open_graph_image/public/Original_9363_hot.chocolate.jpg?itok=pDpifkyh',
    'https://th.bing.com/th/id/OIP.vb8njNpTL9Z6PDU7TO6tggHaE8?w=900&h=600&rs=1&pid=ImgDetMain',
    'https://static.cms.yp.ca/ecms/media/1/caffe-latte-1440875101-600x360.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    // Your widget build logic here
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gerai Coffe',
          style: TextStyle(
            color: Colors.white, // Set the color of the title text
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: 1300.0,
          child: Expanded(
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 1000.0,
                ),
                Container(
                  width: double.infinity,
                  height: 150,
                  color: Colors.green,
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Selamat malam,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        'Chaerul MobDev',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OswaldBold',
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    top: 70,
                    left: 10,
                    right: 10,
                    child: Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    'images/rupiah.png',
                                    width: 30,
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 3),
                                    child: new Text(
                                      'Rp 1.000.000',
                                      style: TextStyle(
                                          fontFamily: 'OswaldBold',
                                          fontSize: 15,
                                          color: Colors.green),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                constraints: BoxConstraints.expand(height: 1),
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                              ),
                              Stack(
                                children: <Widget>[
                                  Container(
                                    margin: EdgeInsets.only(top: 10),
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Tukarkan uang kamu di sini.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    top: 10,
                                    child: Image.asset(
                                      'images/arrow-right.png',
                                      width: 15,
                                      height: 15,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                Positioned(
                  top: 190,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: <Widget>[
                      CarouselSlider(
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 2.0,
                          enlargeCenterPage: true,
                        ),
                        items: imgList
                            .map((item) => Container(
                                  child: Container(
                                    margin: EdgeInsets.all(5.0),
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(5.0)),
                                        child: Stack(
                                          children: <Widget>[
                                            FadeInImage(
                                              image: NetworkImage(item),
                                              placeholder: AssetImage('images/404.png'),
                                                fit: BoxFit.cover,
                                                width: 1000.0),
                                            Positioned(
                                              bottom: 0.0,
                                              left: 0.0,
                                              right: 0.0,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  gradient: LinearGradient(
                                                    colors: [
                                                      Color.fromARGB(
                                                          200, 0, 0, 0),
                                                      Color.fromARGB(0, 0, 0, 0)
                                                    ],
                                                    begin:
                                                        Alignment.bottomCenter,
                                                    end: Alignment.topCenter,
                                                  ),
                                                ),
                                                padding: EdgeInsets.symmetric(
                                                    vertical: 10.0,
                                                    horizontal: 20.0),
                                                child: Text(
                                                  'No. ${imgList.indexOf(item)} image',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )),
                                  ),
                                ))
                            .toList(),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.red,
                              width: 1.2,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/location.png',
                                width: 40,
                                height: 40,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Temukan gerai coffe di sekitar anda.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'OswaldBold',
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Cari sekarang.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      GridViewData(),
                      Container(
                        margin: EdgeInsets.all(10),
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.green,
                              width: 1.2,
                            ),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.all(15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/support.png',
                                width: 40,
                                height: 40,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Mempunyai kendala?',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'OswaldBold',
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Customer Service.',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GridViewData extends StatelessWidget {
  final List<String> imgList = [
    'https://thecafelife.co.uk/images/directory/categories/chocolate-drinks.jpg',
    'https://cookitonce.com/wp-content/uploads/2020/09/KAHLUA-COCOA.jpg',
    'https://www.finedininglovers.com/sites/g/files/xknfdk626/files/styles/open_graph_image/public/Original_9363_hot.chocolate.jpg?itok=pDpifkyh',
    'https://th.bing.com/th/id/OIP.vb8njNpTL9Z6PDU7TO6tggHaE8?w=900&h=600&rs=1&pid=ImgDetMain',
    'https://static.cms.yp.ca/ecms/media/1/caffe-latte-1440875101-600x360.jpg',
    'https://static.cms.yp.ca/ecms/media/1/caffe-latte-1440875101-600x360.jpg',
    'https://static.cms.yp.ca/ecms/media/1/caffe-latte-1440875101-600x360.jpg',
    'https://static.cms.yp.ca/ecms/media/1/caffe-latte-1440875101-600x360.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Mungkin Anda Suka',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OswaldBold',
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 10,
            ),
            itemCount:
                imgList.length, // Change this to the actual number of items
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  // Handle click event here, for example, navigate to a detail page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewPage(
                        imageUrl: imgList[index],
                        coffeeName: 'Coffe Name hshdysihd kdisudis',
                        price: 'Rp 15.000',
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: FadeInImage(
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 100.0,
                          placeholder: AssetImage('images/404.png'),
                          image: NetworkImage(
                            imgList[index],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 50,
                          ),
                          Positioned(
                            left: 5,
                            top: 5,
                            child: new Text(
                              'Coffe Name hshdysihd kdisudis',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: 'OswaldBold',
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          Positioned(
                            left: 5,
                            bottom: 5,
                            child: new Text(
                              'Rp 15.000',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.green,
                                fontSize: 12,
                                fontFamily: 'OswaldBold',
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
