import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fluttertest/refactor/button.dart';
import 'package:fluttertest/refactor/refactor.dart';
import 'package:fluttertest/router/router.gr.dart';

class HeroesApp extends StatefulWidget {
  const HeroesApp({super.key});

  @override
  State<HeroesApp> createState() => _HeroesAppState();
}

class _HeroesAppState extends State<HeroesApp> {
  Container container3 = Container();
  Container container2 = Container(
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Heroes',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Container(
            width: 200,
            child: ListView.builder(
              itemBuilder: (c, i) {
                return InkWell(
                  onTap: () {
                    c.router.push(DetailRoute(
                        id: allheroes[i]["id"].toString(),
                        name: allheroes[i]["name"]));
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
                            decoration: BoxDecoration(
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
              },
              itemCount: allheroes.length,
              shrinkWrap: true,
            ),
          )
        ],
      ),
    ),
  );
  Container container1 = Container(
    height: 80,
    child: Column(
      children: [
        Expanded(
          child: SizedBox(
            child: const Text(
              'Top Heroes',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: ListView.builder(
                itemBuilder: (c, i) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Topherobutton(
                        name: topheroes[i]["name"],
                        btncall: () {
                          c.router.push(DetailRoute(
                              id: topheroes[i]["id"].toString(),
                              name: topheroes[i]["name"]));
                        }),
                  );
                },
                itemCount: topheroes.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        )
      ],
    ),
  );
  @override
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
            height: 20,
          ),
          container3
        ],
      ),
    );
  }
}
