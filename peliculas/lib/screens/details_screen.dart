import 'package:flutter/material.dart';


class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

   
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalles de la pelicula'),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.search_outlined))
        ],
      ),
      body: Container(
        child: const Center(
          child: Text('Details Screen'),
        ),
      ),
    );
  }
}