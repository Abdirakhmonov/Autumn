import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lesson_34/homework/widgets.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    List texts = ["Wedding", "Birthdays", "Party", "Wedding"];
    List times = ["03:50 Time", "06:35 Time", "10:25 Time", "12:05 Time"];

    return Scaffold(
      backgroundColor: const Color(0xffFAF0E1),
      body: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(top: 60, right: 40, left: 40, bottom: 40),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSzwKyyA4-7mFBQf41P4sffvjRB03F7k6JEUveOBLNb6_e6Xmt5",
                    height: 120,
                  ),
                ),
                const Gap(30),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jack",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          height: 1.5),
                    ),
                    Text(
                      "Party organizer",
                      style:
                          TextStyle(fontWeight: FontWeight.w300, fontSize: 18),
                    ),
                    Gap(5),
                    Card(
                      color: Color(0xffE17855),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 8),
                        child: Text(
                          "Read more",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30, left: 30),
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 260,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(34),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: "October ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            TextSpan(
                              text: "Holidays",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 30),
                            ),
                          ]),
                        ),
                        const Gap(20),
                        Padding(
                          padding: EdgeInsets.only(right: 40),
                          child: Column(
                            children: [
                              for (int i = 0; i < 3; i++) GetHolidays(i: i),
                            ],
                          ),
                        ),
                        const Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: "Party ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 35),
                            ),
                            TextSpan(
                              text: "planning",
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 35),
                            ),
                          ]),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Expanded(
                            child: Wrap(
                              spacing: 15,
                              children: [
                                for (int i = 0; i < 4; i++)
                                  GetSchedules(
                                    i: i,
                                    boolean: false,
                                    imagesize: 150,
                                    text: texts[i],
                                    time: times[i],
                                  )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GetHolidays extends StatelessWidget {
  List titles = ["Thanksgiving", "Halloween", "Holiday"];
  List dollar = ["174.99", "326.00", "51.00"];
  List images = [
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSL6qfh5M7eVaugIour-0sGCF92YRzyI1AzopSYwKUXGKSu7oAK",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTZFTBuJGNMSz5t32X-qsM3z4TLtEZ2pxd1B3eIg6zpt2XDh9TW",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJRPK_GVlujKuv3v1KE-nhy2S-dqR5wWV9aLybyfbSvC0aHyZ-",
  ];
  int i;
  GetHolidays({required this.i, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      images[i],
                      cacheHeight: 60,
                      cacheWidth: 60,
                    ),
                  ),
                  const Gap(40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        titles[i],
                        style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                            height: 1.5),
                      ),
                      Text(
                        "\$ ${dollar[i]}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 21),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  const Gap(30),
                  Card(
                    color: i == 2
                        ? const Color(0xffE17855)
                        : const Color(0xffD7E1C8),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2, horizontal: 15),
                      child: Text(
                        "View",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 0.4,
        )
      ],
    );
  }
}
