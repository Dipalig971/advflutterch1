import 'package:flutter/material.dart';

import 'introscreen2.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 110, left: 60),
            child: Container(
              height: 480,
              width: 480,
              decoration: const BoxDecoration(
                  // color: Colors.red,
                  ),
              child: const Image(
                image: AssetImage('assets/image/intro1.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Welcome!',
            style: TextStyle(
                color: Color(0xff0665A9),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            'Taking care of your health has \n become easier learn more, \n how to do it.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 19,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 180),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: Color(0xff0665A9),
                      // borderRadius: BorderRadius.circular(5)
                      shape: BoxShape.circle),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => IntroScreen2(),
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 100, left: 10),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        // borderRadius: BorderRadius.circular(5)
                        shape: BoxShape.circle),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 10),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      // borderRadius: BorderRadius.circular(5)
                      shape: BoxShape.circle),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 10),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: Colors.grey, shape: BoxShape.circle),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Skip',
            style: TextStyle(
                color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w700),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => IntroScreen2(),
                ),
              );
            },
            child: const Text(
              'Next',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            ),
          )
        ],
      ),
    );
  }
}
