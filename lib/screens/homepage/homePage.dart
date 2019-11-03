import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(),
        ),
        title: Text("Welcome User"),
        actions: <Widget>[
          Center(
            child: FlatButton(
              onPressed: () {},
              child: Text("Module 1"),
            ),
          ),
          Center(
            child: FlatButton(
              onPressed: () {},
              child: Text('Sign Out'),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[ImageCarousel()],
          ),
          Container(
            height: MediaQuery.of(context).size.height / 2.3,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: <Widget>[
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  color: Colors.red,
                  child: Column(
                    children: <Widget>[Text("one")],
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[Text('two')],
                  ),
                )),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  color: Colors.yellow,
                  child: Column(
                    children: <Widget>[Text('three')],
                  ),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width,
      child: Carousel(
        images: [
          new NetworkImage(
              'https://images.unsplash.com/photo-1524721696987-b9527df9e512?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1190&q=80'),
          new NetworkImage(
              'https://images.unsplash.com/photo-1524820326044-49b443ac0750?ixlib=rb-1.2.1&auto=format&fit=crop&w=1119&q=80'),
          new NetworkImage(
              'https://images.unsplash.com/photo-1534488620314-5fa4b54d5c4b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'),
        ],
        dotSize: 5.0,
        dotSpacing: 15.0,
        dotColor: Colors.white,
        borderRadius: true,
        animationCurve: Curves.fastOutSlowIn,
        autoplay: true,
      ),
    );
  }
}
