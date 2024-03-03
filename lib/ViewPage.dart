import 'package:flutter/material.dart';

class ViewPage extends StatelessWidget {
  final String imageUrl;
  final String coffeeName;
  final String price;

  ViewPage({
    required this.imageUrl,
    required this.coffeeName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.green,
          title: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              coffeeName,
              style: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),
            ),
          )
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 1000.0,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 10, bottom: 0, right: 10, top: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: FadeInImage(
                    placeholder: AssetImage('images/404.png'),
                    image: NetworkImage(imageUrl),
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        coffeeName,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'OswaldBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 15,
                          fontFamily: 'OswaldBold',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            'images/location.png',
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'JL. pager ayu, desa wanatawang',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Image.asset(
                            'images/time.png',
                            width: 25,
                            height: 25,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '08:00AM - 09:00PM',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
              

              GridViewData(),
            ],
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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Menyediakan',
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
                        child: Image.network(
                          imgList[index],
                          width: double.infinity,
                          height: 100.0,
                          fit: BoxFit.cover,
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
