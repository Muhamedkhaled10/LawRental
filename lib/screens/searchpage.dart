import 'package:flutter/material.dart';
import 'package:lawrental/model/lawyer_model.dart';
import 'package:lawrental/widgets/custom_button.dart';
import 'package:lawrental/widgets/search_widget.dart';

import 'lawyer_profile_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  static List<LawyerModel> LawerModel_list = [
    LawyerModel('Muhamed Khaled', 'Cassation lawyer', 'assets/Favorite.png'),
    LawyerModel('Ahmed Khaled', 'Cassation lawyer', 'assets/Favorite.png'),
    LawyerModel('Mostafa muhamed', 'Cassation lawyer', 'assets/Favorite.png'),
    LawyerModel('Anas Ibrahim', 'Cassation lawyer', 'assets/Favorite.png'),
    LawyerModel(
        'Abdulrahman ahmed', 'Cassation lawyer', 'assets/Favorite.png'),
    LawyerModel('Mahmoud Khaled', 'Cassation lawyer', 'assets/Favorite.png'),
    LawyerModel('Waled muhamed', 'Cassation lawyer', 'assets/Favorite.png'),
    LawyerModel('Motaz Khaled', 'Cassation lawyer', 'assets/Favorite.png'),
    LawyerModel('Amr Khaled', 'Cassation lawyer', 'assets/Favorite.png'),
  ];
  List<LawyerModel> display_list = List.from(LawerModel_list);
  void updateList(String value) {
    setState(() {
      display_list = LawerModel_list.where((element) =>
          element.title!.toLowerCase().contains(value.toLowerCase())).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 130,
            width: double.infinity,
            color: const Color(0xFF14213D),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(left: 25,right: 25,top: 20,bottom: 13),
                child: TextField(
                  onChanged: (value)=> updateList(value),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFDDE3EB),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide:  BorderSide.none,
                      ),
                      hintStyle: const TextStyle(color: Colors.white),
                      hintText: 'search in Lawrental.',
                      prefixIcon: const Icon(Icons.search),
                      prefixIconColor: const Color(0xFF565E74)
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: display_list.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const LawyerProfilePage()));
                    },
                    child: Text(
                      display_list[index].title!,
                      style: const TextStyle(
                          color: Color(0xFF14213D),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Unigeo64",
                          fontSize: 20),
                    ),
                  ),
                  subtitle: Text(
                    display_list[index].subTitle!,
                    style: const TextStyle(
                        color: Color(0xFF14213D),
                        fontWeight: FontWeight.w300,
                        fontFamily: "Unigeo64",
                        fontSize: 16),
                  ),
                  trailing: CustomButton(
                    text: 'Chat',
                    textcolor: Colors.white,
                    color: const Color(0xFF14213D),
                    height: 46,
                    width: 115,
                  ),
                  leading: CircleAvatar(
                    maxRadius: 35,
                    minRadius: 25,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.person_rounded,
                        size: 32,
                        color: Color(0xFF565E74),
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
