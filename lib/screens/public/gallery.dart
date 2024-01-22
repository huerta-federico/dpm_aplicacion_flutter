import 'package:dpm_aplicacion_flutter/microservices/catalogo/providers/provider_images.dart';
import 'image_details.dart';
import 'package:flutter/material.dart';
import 'package:dpm_aplicacion_flutter/components.ui/navigation.dart';

/*
Basado en un tutorial de YouTube por "Flutter UI Design"
https://www.youtube.com/watch?v=QyN2chXlCFw
https://github.com/kaycobad/gallery_app
*/

class GalleryScreen extends StatelessWidget {
  GalleryScreen({super.key});

  final List<ImageDetails> _images = getImages();
  final String title = ('Galería');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: headerNav(title: title, context: context),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return RawMaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ImageDetailsScreen(
                            imagePath: _images[index].imagePath,
                            title: _images[index].title,
                            photographer: _images[index].photographer,
                            details: _images[index].details,
                            index: index,
                          ),
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'logo$index',
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_images[index].imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _images.length,
              ),
            ),
          )
        ],
      ),
      drawer: drawerHeaderNav(title: title, context: context),
    );
  }
}
