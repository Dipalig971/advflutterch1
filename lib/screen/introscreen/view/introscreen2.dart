import 'package:advflutterch1/screen/introscreen/view/introscreen3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
              width: 500,
              child: Image(
                image: AssetImage('assets/image/intro2.png'),
                fit: BoxFit.cover,
              )),
          // Padding(
          //   padding: const EdgeInsets.only(top: 110),
          //   child: Container(
          //     height: 500,
          //     width: 480,
          //     decoration: const BoxDecoration(
          //         // color: Colors.red,
          //         ),
          //     child: const Image(
          //       image: AssetImage('assets/image/intro2.png'),
          //       fit: BoxFit.cover,
          //     ),
          //   ),
          // ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Wound Certification',
            style: TextStyle(
                color: Color(0xff0665A9),
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            'The Care Certificate provides a framework\n to ensure that all support workers have the\n same introductory skills, knowledge and\n behaviours to provide compassionate, safe and\n high-quality care, in their workplace settings.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 180),
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
                padding: const EdgeInsets.only(top: 70, left: 10),
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      // borderRadius: BorderRadius.circular(5)
                      shape: BoxShape.circle),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => IntroScreen3(),
                  ));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 70, left: 10),
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: const BoxDecoration(
                        color: Color(0xff0665A9),
                        // borderRadius: BorderRadius.circular(5)
                        shape: BoxShape.circle),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 70, left: 10),
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
                  builder: (context) => IntroScreen3(),
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
