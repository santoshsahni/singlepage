

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:singlepage/aboutus.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> navBarItem = [
    "Home",
    "About Us",
    "Services",
    "Portfolio",
    "Team",
    "Project",
    "Contact",
    "Blog",
    "Career"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/krash it.png',
          height: 30,
        ),
        actions: [
          // Navigate to the Search Screen
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.design_services,
              )),
          IconButton(
              onPressed: () {}, icon: Icon(Icons.home_repair_service_rounded)),
          IconButton(onPressed: () {}, icon: Icon(Icons.contact_mail_rounded)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Santosh Sahni"),
              accountEmail: Text("santoshsahni532@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
            ListTile(
              title: Text(
                "About us",
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(
                Icons.info_outline,
                size: 26,
                color: Colors.blue,
              ),
              onTap: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs(Query:navBarItem[0])));
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs(Query: navBarItem[0],)));

              },
            ),
            ListTile(
              title: Text(
                "Contact us",
                style: TextStyle(fontSize: 16),
              ),
              trailing: Icon(
                Icons.contact_mail_rounded,
                size: 26,
                color: Colors.blue,
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 43,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ListView.builder(
                  itemCount: navBarItem.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => AboutUs(Query:navBarItem[index])));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Text(navBarItem[index],style: TextStyle(
                            color: Colors.white
                          ),)
                      ),
                    );
                  }),
            ),
            Container(       // carousel slider
              margin: EdgeInsets.symmetric(vertical: 15),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                ),
                items: [

                  //1st Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("images/image 1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("images/image 2.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("images/image 4.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("images/image 3.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage("images/image 4.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                ],

              ),
            ),  //carousel slider
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      height: 20,
                      thickness: 3,
                      indent: 30,
                      endIndent: 20,
                      color: Colors.black,
                    ),
                  ),
                 Text("Our Products",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Expanded(
                    child: Divider(
                      height: 20,
                      thickness: 3,
                      indent: 20,
                      endIndent: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),   //our product text

          ],
        ),
      ),
    );
  }
}
