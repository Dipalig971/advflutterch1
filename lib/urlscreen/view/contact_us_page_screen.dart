import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class ContactPageScreen extends StatelessWidget {
  const ContactPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.chevron_left_outlined,
          color: Colors.blue,
          size: 35,
        ),
        title: const Text(
          'Contact Us',
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const Center(
            child: Text(
              'if you have any queries,get in touch with \n us. We Will be happy to help you!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: () {
              Uri url = Uri.parse('tel:+91 98766 45876');
              launcher.launchUrl(url);
            },
            child: Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.phone_android_sharp,
                    size: 25,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '+91 98766 45876',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Uri url = Uri.parse('mailto:dipaligunjal@gmail.com');
              launcher.launchUrl(url);
            },
            child: Container(
              height: 80,
              width: 300,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10)),
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.mail_lock_outlined,
                    size: 25,
                    color: Colors.blue,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'info@xyzmail.com',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            height: 380,
            width: 300,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Social Media',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.blue,
                ),
                InkWell(
                  onTap: () {
                    Uri url = Uri.parse('https://github.com/Dipalig971');
                    launcher.launchUrl(url);
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 30),
                        child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset(
                              'assets/image/github.jpeg',
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Github',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Uri url = Uri.parse('https://www.instagram.com/');
                    launcher.launchUrl(url);
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        child: SizedBox(
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              'assets/image/instagram.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Instagram',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 20),
                  child: Divider(
                    color: Colors.blue,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Uri url = Uri.parse('https://www.linkedin.com/feed/');
                    launcher.launchUrl(url);
                  },
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 35),
                        child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image.asset(
                              'assets/image/linkedin.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'linkedin',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
