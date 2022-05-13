import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final CarouselController _controller = CarouselController();
  List<int> lista = [1, 2, 3];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Gabriel Santos")),
      ),
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: lista.length,
                itemBuilder: ((context, index) => Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                          width: 100,
                          height: 80,
                          child: ElevatedButton(
                            onPressed: () => _controller.animateToPage(index),
                            child: Text("Text"),
                          )),
                    )),
              )),
        ),
        Expanded(
          flex: 10,
          child: CarouselSlider(
            items: [Perfil(), Container(color: Colors.black), Text("3")],
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
            ),
            carouselController: _controller,
          ),
        ),
      ]),
    );
  }
}

class Perfil extends StatefulWidget {
  @override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("../images/image1.jpg"),
          Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Meu nome é Gabriel Ribeiro e este aplicativo é desenvolvido em Flutter!",
              style: TextStyle(fontFamily: "Updock", fontSize: 50, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
