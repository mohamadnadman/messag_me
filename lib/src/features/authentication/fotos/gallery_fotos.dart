import 'package:flutter/material.dart';
import 'package:messagme/src/features/authentication/fotos/images_class.dart';

List<ImagesDetails> _images =[
ImagesDetails(
      imagePath: 'assets/image2.jpg',
      photographer: 'John Doe',
      title: 'Nature Scene',
      details: 'Beautiful nature scene captured during sunrise.',
    ),
    ImagesDetails(
      imagePath: 'assets/image6.jpg',
      photographer: 'Jane Smith',
      title: 'Cityscape',
      details: 'Stunning view of the city skyline at night.',
    ),
    // Hier weitere Bilder hinzufügen
  ];

  @override

class GalleryFotos extends StatelessWidget {
  const GalleryFotos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Color.fromARGB(255, 154, 61, 115),
     body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Text('Gallery',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 40,
            ),
            Expanded(child: 
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
              vertical: 30,),
              decoration: BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30) ,
                  ),
                   ),
            ),
            ),
        ],
      )), 
    );
    
  }
}
