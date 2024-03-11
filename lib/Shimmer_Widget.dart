
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Shimmer_widget extends StatefulWidget {
  const Shimmer_widget({Key? key}) : super(key: key);

  @override
  State<Shimmer_widget> createState() => _Shimmer_widgetState();
}

class _Shimmer_widgetState extends State<Shimmer_widget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Shimmer')),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Shimmer.fromColors(
        
                baseColor:
            Colors.black12,
                highlightColor: Colors.white70,
              child:
              Column(
                children: [
                  ListTile(
                    title: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 15,
                        width: 90,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Container(
                        height: 15,
                        width: 90,
                        color: Colors.white,
                      ),
                    ),
                    leading: CircleAvatar(
                      radius: 30,
        
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 15,
                      width: MediaQuery.of(context).size.width*.9,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width*.45,
                            color: Colors.white,

                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(

                            height: 100,
                            width: MediaQuery.of(context).size.width*.45,
                            color: Colors.white,

                          ),
                        ),
        
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(

                            height: 100,
                            width: MediaQuery.of(context).size.width*.45,
                            color: Colors.white,

                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(

                            height: 100,
                            width: MediaQuery.of(context).size.width*.45,
                            color: Colors.white,

                          ),
                        ),
        
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 10,
                        itemBuilder: (context, index){
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          height: 150,
                          width: MediaQuery.of(context).size.width*.9,
                          color: Colors.white,
                        
                        ),
                      );
                    }),
                  )
        
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
