import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  List<String> tabBar = ['Family', 'civil', 'criminal','women'];
  int current = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: tabBar.length,
        itemBuilder: (ctx, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                current = index;
              });
            },
            child: AnimatedContainer(
              margin: const EdgeInsets.all(5),
              width: 138,
              height: 40,
              decoration: BoxDecoration(
                color: current == index ? const Color(0xFF14213D) : Colors.white,
                borderRadius: BorderRadius.circular(60),
                border: Border.all(
                  color: const Color(0xFF14213D),
                  style: BorderStyle.solid,
                  width: 1.0,
                ),
              ),
              duration: const Duration(milliseconds: 300),
              child: Center(
                child: Text(
                  tabBar[index],
                  style: TextStyle(
                    fontFamily: "Unigeo64",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color:
                    current == index ? Colors.white : const Color(0xFF14213D),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}