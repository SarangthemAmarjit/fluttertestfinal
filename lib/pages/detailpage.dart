import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fluttertest/refactor/refactor.dart';

class DetailPage extends StatefulWidget {
  late String? id;
  late String? name;
  DetailPage({super.key, this.id, this.name});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Container? container3;
  final namecontroller = TextEditingController();
  Container container1 = Container(
    child: Column(
      children: [
        const Text(
          'Top Of Heroes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25, top: 15),
          child: Row(
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.black; //<-- SEE HERE
                          return null; // Defer to the widget's default.
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey)),
                  onPressed: () {},
                  child: const Text(
                    'Tomba',
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.black; //<-- SEE HERE
                          return null; // Defer to the widget's default.
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey)),
                  onPressed: () {},
                  child: const Text(
                    'Chaoba',
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.black; //<-- SEE HERE
                          return null; // Defer to the widget's default.
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey)),
                  onPressed: () {},
                  child: const Text(
                    'Ibohal',
                    style: TextStyle(color: Colors.white),
                  )),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.black; //<-- SEE HERE
                          return null; // Defer to the widget's default.
                        },
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey)),
                  onPressed: () {},
                  child: const Text(
                    'Sanahanbi',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          ),
        ),
      ],
    ),
  );

  Container container2 = Container(
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Heroes',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 200,
            child: ListView.builder(
              itemBuilder: (c, i) {
                return InkWell(
                  onTap: () {
                    Navigator.of(c).push(MaterialPageRoute(
                        builder: (context) => DetailPage(
                            id: allheroes[i]["id"].toString(),
                            name: allheroes[i]["name"])));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: const Color.fromARGB(255, 226, 224, 224),
                      ),
                      height: 30,
                      child: Row(
                        children: [
                          Container(
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(3),
                                  bottomLeft: Radius.circular(3)),
                              color: Colors.blueGrey,
                            ),
                            width: 30,
                            child: Center(
                              child: Text(
                                allheroes[i]["id"].toString(),
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            child: Text(
                              allheroes[i]["name"],
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );

                // ListTile(
                //   horizontalTitleGap: 20,
                //   contentPadding: EdgeInsets.all(5),
                //   tileColor: Color.fromARGB(255, 229, 224, 224),
                //   title: Row(
                //     children: [
                //       Container(
                //         color: Color.fromARGB(255, 181, 184, 185),
                //         child: Text(allheroes[i]["id"].toString()),
                //       ),
                //       Container(
                //         child: Text(allheroes[i]["name"]),
                //       )
                //     ],
                //   ),
                // );
              },
              itemCount: allheroes.length,
              shrinkWrap: true,
            ),
          )
        ],
      ),
    ),
  );
  @override
  initState() {
    namecontroller.text = widget.name!;
    container3 = Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 100,
                  child: TextField(
                      controller: namecontroller,
                      decoration: InputDecoration.collapsed(
                          hintText: widget.name!.toUpperCase())),
                ),
                Text(
                  " Details",
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "id: " + widget.id!,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                const Text(
                  'Hero name: ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 72, 70),
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 200,
                  height: 30,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: TextFormField(
                        controller: namecontroller,
                        decoration:
                            InputDecoration.collapsed(hintText: widget.name)),
                  )),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 206, 204, 204))),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Tour Of Heroes",
              style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 7, 64, 129),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.white;
                          return Colors.black;
                        }),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.blueGrey; //<-- SEE HERE
                            return null; // Defer to the widget's default.
                          },
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 206, 204, 204))),
                    onPressed: () {
                      log("pressed");
                      setState(() {
                        container3 = container1;
                      });
                    },
                    child: const Text(
                      'Dashboard',
                    )),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered))
                            return Colors.white;
                          return Colors.black;
                        }),
                        overlayColor: MaterialStateProperty.resolveWith<Color?>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return Colors.blueGrey; //<-- SEE HERE
                            return null; // Defer to the widget's default.
                          },
                        ),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 206, 204, 204))),
                    onPressed: () {
                      setState(() {
                        container3 = container2;
                      });
                    },
                    child: Text(
                      'Heroes',
                    )),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          container3!
        ],
      ),
    );
  }
}
