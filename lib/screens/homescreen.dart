import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> imageUrls = [
    "https://images.unsplash.com/photo-1661956602153-23384936a1d3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://plus.unsplash.com/premium_photo-1684952849219-5a0d76012ed2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyfHx8ZW58MHx8fHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1685107917445-f63abe2012cd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwyNXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1685115755336-c488e27084a3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1685175474145-e8cb170c27f2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0OHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1661956602868-6ae368943878?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw1NXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1685115910523-2516c451101b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1684717417861-9c90fc3a8840?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2N3x8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title in centre
        title: const Text('Gallary App'),
        centerTitle: true,
      ),
      // it will set our view in grid mode we will have 2 photo in each row
      // body:GridView(gridDelegate: 
      // SliverGridDelegateWithFixedCrossAxisCount(
      //   crossAxisCount: 
      //   2),
      //   // it will map out images and make it a list
      //   children: imageUrls.map((String url){
      //     // used to network images 
      //     return Image.network(url);
      //   } ).toList(),
      //   )
    // another way of printing instead of mapping
       body:GridView.builder(gridDelegate: 
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 
        2),
        itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                // image network will help us to convert link to renderabe widget
                return GridTile(
                 
                  child: Image.network(imageUrls[index],fit: BoxFit.cover,),);
              },)
    );
  }
}