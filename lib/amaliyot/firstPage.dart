import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageA extends StatelessWidget {
  const HomePageA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Opacity(
                opacity: 0.5,
                child: Image.asset(
                  "assets/images/background_image.png",
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Hi Zesan",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              "assets/images/person.png",
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                      const Text(
                        "What do you want\nfor dinner",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            MealCategory(
                                image: "assets/images/hamburger_image.png"),
                            SizedBox(
                              width: 12,
                            ),
                            MealCategory(image: "assets/images/meat.png"),
                            SizedBox(
                              width: 12,
                            ),
                            MealCategory(image: "assets/images/salad.jpg"),
                            SizedBox(
                              width: 12,
                            ),
                            MealCategory(image: "assets/images/icecream.jpeg"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Recommended",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Wrap(
                        spacing: 35,
                        runSpacing: 50,
                        children: [
                          GetMeals(),
                          GetMeals(),
                          GetMeals(),
                          GetMeals()
                        ],
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MealCategory extends StatelessWidget {
  final String image;

  const MealCategory({required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Image.asset(
          image,
          height: 35,
          width: 35,
        ),
      ),
    );
  }
}

class GetMeals extends StatelessWidget {
  const GetMeals({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print("Bosildi!!!");
      },
      child: Container(
        height: 190,
        width: 167,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.white),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Align(
              alignment: const Alignment(0, -2.7),
              child: Image.asset(
                "assets/images/korean_bibimbap.png",
                height: 140,
                width: 140,
              ),
            ),
            const Column(
              children: [
                Text(
                  "Korean Bibimbap",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
