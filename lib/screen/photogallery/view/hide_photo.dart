import 'package:advflutterch1/screen/photogallery/modal/hide_list.dart';
import 'package:flutter/material.dart';

class HideScreen extends StatelessWidget {
  const HideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        shadowColor: Colors.black38,
        leading: const Icon(Icons.menu,color: Colors.black,),
        title: const Text(
          'Hidden',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.black),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10,
          ),
        ],
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Today',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),

              ],
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                childAspectRatio: 5/6,
              ), itemBuilder: (context, index) => hideView(
              HideImageList[index],
            ),
              itemCount: HideImageList.length,
            ),

          ],
        ),
      ),
    );
  }

  Widget hideView(String img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(img),
          ),
        ),
      ),
    );
  }
}
