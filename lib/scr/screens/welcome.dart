import 'package:flutter/material.dart';

import 'home.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  // const Welcome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/green valley.jpg',
            fit: BoxFit.fill,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                  // we are using this box decoration to apply a gradient
                  gradient: LinearGradient(
                      // our linear gradient begins here
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      // increasing opacity  between 0 to 1
                      // we want to achieve a fine gradient transition as it fades to the top
                      colors: [
                    Colors.black.withOpacity(1),
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.3),
                    Colors.black.withOpacity(0.2),
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.05),
                    Colors.black.withOpacity(0.025),
                  ])),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Text(
                "Let's help you enjoy the world",
                textScaleFactor: 1,
                style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Let's help oyu find the best \n experiences and adventures",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Home()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.pink,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              )
            ],
          )
        ],
      ),
    );
  }
}
