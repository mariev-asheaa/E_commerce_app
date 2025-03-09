import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:e_commerce_screen/core/constants.dart';
import 'package:e_commerce_screen/features/presentation/views/Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}
enum SelectedTab { home, favorite, search, person }
class _BottomnavbarState extends State<Bottomnavbar> {
  var selectedTab=SelectedTab.home;
  void _handleIndexChanged(int index) {
    setState(() {
      selectedTab = SelectedTab.values[index];
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.sizeOf(context).height*.5,
      child: DotNavigationBar(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        currentIndex: SelectedTab.values.indexOf(selectedTab),
        onTap: _handleIndexChanged,

        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
            selectedColor: ksecondary
          ),
      
          /// Likes
          DotNavigationBarItem(
            icon: const Icon(Icons.favorite_border),
            selectedColor: ksecondary,
          ),
      
          /// Search
          DotNavigationBarItem(
            icon: const Icon(Icons.search),
            selectedColor: ksecondary,
          ),
      
          /// Profile

          DotNavigationBarItem(
            icon: InkWell(
                onTap: (){
                  Navigator.pushNamed(context, Profile.id);
                },
                child: const Icon(Icons.person)),
            selectedColor:ksecondary,
          ),
      
        ],
      ),
    );
  }
}
