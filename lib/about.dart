import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi.dart';

class About extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => InputBMI()));
            },
          ),
          title: Text("Profil"),
          centerTitle: true,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image(
                    image: NetworkImage(
                        "https://scontent-sin6-1.xx.fbcdn.net/v/t1.0-0/p526x296/120839355_962826510892131_8490492520779238651_o.jpg?_nc_cat=107&_nc_sid=730e14&_nc_ohc=o9gdQotvvRIAX-In0vQ&_nc_ht=scontent-sin6-1.xx&tp=6&oh=dbe4f58790dcdb58b78e202b5468eb16&oe=5FA16487"),
                    width: 150,
                    height: 150,
                  ),
                ),
                Text(
                  "Ni Komang Winda Damayanti",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25,
                    height: 2.0,
                  ),
                ),
                Text(
                  "Winda Damayanti",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  padding: EdgeInsets.only(top: 20, right: 20, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ContainIcon(0, "Karangasem", Icons.home, Colors.deepOrange),
                          ContainIcon(
                              12, "All Genre", Icons.library_music, Colors.deepOrange),
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          ContainIcon(0, "Singing", Icons.star, Colors.deepOrange),
                          ContainIcon(12, "Undiksha", Icons.domain, Colors.deepOrange),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

//container kotak  icon
class ContainIcon extends StatelessWidget {
  final double atas;
  final String isi;
  final IconData icon;
  final Color warna;
  const ContainIcon(this.atas, this.isi, this.icon, this.warna);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, top: atas),
        padding: EdgeInsets.only(top: 20),
        width: 130,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          border: Border.all(
            width: 3,
            color: Colors.deepOrange,
          ),
        ),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 40,
              color: warna,
            ),
            Container(
              color: Colors.deepOrange,
              margin: EdgeInsets.only(top: 24),
              width: 125,
              height: 30,
              child: TextBox(isi),
            ),
          ],
        ));
  }
}

//text di dalam kotak
class TextBox extends StatelessWidget {
  final String isi;
  const TextBox(this.isi);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        isi,
        style: TextStyle(height: 1.3, fontSize: 18, color: Colors.white),
      ),
    );
  }
}