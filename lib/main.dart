import 'package:flutter/material.dart';
import 'package:teamsmembers/repository/teams_api.dart';

import 'colors.dart';
import 'invite_members.dart';
import 'models/teams_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: MyHomePage(title: 'Teams'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool? isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: hexgrey,
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(left: 17, right: 17, top: 17),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Teams",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                          size: 30,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                servicesPopularList(),
                const SizedBox(
                  height: 14,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, bottom: 15),
                                    child: Container(
                                      height: 57,
                                      width: 58.0,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: Colors.blueAccent,
                                      ),
                                      // alignment: Alignment.centerLeft,
                                      child: const Center(
                                        child: Text(
                                          "KS",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            "Praveen Kumar",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          const SizedBox(
                                            width: 40,
                                          ),
                                          Row(
                                            children: const [
                                              Text(
                                                "Admin",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w200,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "Active",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w200,
                                                color: Colors.grey),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navigator.pop(context);
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => InviteMembers()));
          },
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }

  servicesPopularList() {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("All people",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 19,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.start),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 3.0),
                  child: const Text("See All",
                      style: TextStyle(
                          color: primaryBlue,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                      textAlign: TextAlign.end),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
