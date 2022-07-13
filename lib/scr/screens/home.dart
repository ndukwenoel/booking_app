import 'package:flutter/material.dart';
import 'package:booking_app/scr/widgets/icons_cards.dart';
import 'package:booking_app/scr/widgets/images_cards.dart';

import '../widgets/image_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed:(){}, icon: const Icon(Icons.menu, color: Colors.black,))
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(text: "Hello, ", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700, color: Colors.pinkAccent)),
                        TextSpan(text: "what are you\nlooking for?")
                      ], style: TextStyle(fontSize: 32, fontWeight: FontWeight.w500, color: Colors.black)),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  IconCard(iconData: Icons.home, text: "Accommodation",),
                  IconCard(iconData: Icons.directions_bike, text: "Experiences",),
                  IconCard(iconData: Icons.directions, text: "Adventure",),
                  IconCard(iconData: Icons.flight, text: "Flights",),
                ],
              ),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 8.0),
                  child: Text("Best experience", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz, color: Colors.black,))
                ],
              ),
              const SizedBox(height: 10,),
              ImageCards(),
              const SizedBox(height: 25,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: (){}, icon: const Icon(Icons.home, color: Colors.pink, size: 30,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.black, size: 30,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border, color: Colors.black, size: 30,)),
                    IconButton(onPressed: (){}, icon: const Icon(Icons.person_outline, color: Colors.black, size: 30,)),

                  ],
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
