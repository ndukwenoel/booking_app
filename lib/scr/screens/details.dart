import 'package:flutter/material.dart';
import 'package:booking_app/scr/models/places.dart';

class Details extends StatelessWidget {
  final Place place;

  Details(this.place);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 300,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  child: Image.asset(
                    'images/${place.image}',
                    height: 400,
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(
                  children: [
                    const Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "${place.days} days",
                      style: const TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "${place.place} \n",
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        const TextSpan(
                            text:
                                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available."),
                      ],
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    color: Colors.pink[400],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: RichText(
                          text: const TextSpan(children: [
                            TextSpan(
                                text: "Price\n",
                                style: TextStyle(fontSize: 18)),
                            TextSpan(
                                text: "\$300",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.bold))
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 8,
                                  offset: Offset(1, 1),
                                )
                              ]),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Book a tour", style: TextStyle(color: Colors.pink, fontSize: 20 ),),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: 20,
            left: 10,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: const Align(
                alignment: Alignment.topLeft,
                child: Icon(Icons.arrow_back_ios),
              ),
            ),
          )
        ],
      ),
    );
  }
}
