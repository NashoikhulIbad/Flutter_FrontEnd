import 'package:flutter/material.dart';
import 'package:submarine/model/tourism_place.dart';

class DetailScreen extends StatelessWidget{
  const DetailScreen({Key? key, required this.place}) : super(key: key);

  final TourismPlace place;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget> [
            Image.asset(place.imageAsset),
            Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: Text( place.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Lobster',
                  ),
                )
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: const <Widget>[
                      Icon(Icons.calendar_today),
                      Text("Open Everyday")
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Text(""
                  "Museum inside a decommissioned Russian war submarine with tour and an adjacent park with cafes. Clean and well maintained car park cost 10k, entrance fee 15K/person you can see KRI Pasopati there,its a russian whiskey class you can also watch video about the indonesian navy at the building beside the submarine",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontFamily:'Oxygen',)

              ),
            ),
            Container(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:Image.network('https://media-cdn.tripadvisor.com/media/photo-m/1280/16/a9/33/43/liburan-di-farmhouse.jpg')
                  ),

                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:Image.asset('lib/asset/images/terminator2.jpg')
                  ),

                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:Image.asset('lib/asset/images/terminator3.jpg')
                  ),

                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child:Image.asset('lib/asset/images/terminator4.jpg')
                  ),


                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
