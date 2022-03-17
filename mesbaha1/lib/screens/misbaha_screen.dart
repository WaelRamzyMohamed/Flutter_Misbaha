//*************************************************************
// GDSC Flutter course - session 02 - Thursday, March 13, 2022
// Task 02 - Mesbahaa App
// by\ Wael Ramzy Mohamed, waelramzymohamed@gmail.com
// Misbaha Class dart file
//*************************************************************
import 'package:flutter/material.dart';

class Misbaha extends StatefulWidget {
  const Misbaha({Key? key}) : super(key: key);

  @override
  State<Misbaha> createState() => _MisbahaState();
}

class _MisbahaState extends State<Misbaha> {

  int counter = 0;
  String name = "سبحان الله";
  int roll = 0;

  @override
  Widget build(BuildContext context) {

    if(counter==33){
      name="الحمد لله";
    }if(counter==66){
      name="الله أكبر";
    }if(counter==99){
      name="لا إله إلا الله";
    }if(counter==100){
      counter=0;
      roll++;
      name="سبحان الله";
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("عداد الذكر"),
        centerTitle: true,
        flexibleSpace: Container(
          color: Colors.deepPurple,
        ),
        //backgroundColor: Colors(Colors.lightGreenAccent),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://png.pngtree.com/background/20210712/original/pngtree-golden-texture-islamic-ramadan-background-picture-image_1174790.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.teal,
                      offset: Offset(3, 3),
                      blurRadius: 2.2,
                    )
                  ]),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
                padding:
                    const EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
                decoration: const BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(40),
                    )),
                child: const Text(
                  "عدد الذكر",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            Text(
              "$counter",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.teal,
                      offset: Offset(3, 3),
                      blurRadius: 2.2,
                    )
                  ]),
            ),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  shadowColor: Colors.white,
                  elevation: 7,
                  minimumSize: const Size(150, 150),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                      side: const BorderSide(
                        color: Colors.white,
                        width: 5,
                      )),
                ),
                child: const Text(
                  "+",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  " $rollالدورة رقم ",
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(onPressed: (){
                  setState(() {
                    counter=0;
                    roll=0;
                    name="سبحان الله";
                  });
                }, child:
                const Text(
                  "بدء دورة جديدة",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
