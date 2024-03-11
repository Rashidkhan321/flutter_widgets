
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel_widget extends StatefulWidget {
  const Carousel_widget({Key? key}) : super(key: key);

  @override
  State<Carousel_widget> createState() => _Carousel_widgetState();
}

class _Carousel_widgetState extends State<Carousel_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Carousel')),
      ),
      body: Container(

        child:
        CarouselSlider(items: element.map((element) {
          return Builder(builder: (context){
            return ClipRRect(
                borderRadius: BorderRadius.circular(16),

                child: Container(child: Image.network(element.toString(),
                fit: BoxFit.cover,)));
          }

            );
        }).toList(), options: CarouselOptions(
          height: 500,
          enlargeCenterPage: true,
          autoPlay: true,
          scrollDirection: Axis.vertical,
            reverse: true
        ),),

      ),
    );
  }
  final List element=['https://images.pexels.com/photos/85773/pexels-photo-85773.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/2737656/pexels-photo-2737656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  'https://images.pexels.com/photos/2583890/pexels-photo-2583890.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/85773/pexels-photo-85773.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2737656/pexels-photo-2737656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2583890/pexels-photo-2583890.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/85773/pexels-photo-85773.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2737656/pexels-photo-2737656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2583890/pexels-photo-2583890.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',];
}
