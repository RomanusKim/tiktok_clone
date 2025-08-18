import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/feautres/main_navigation/widgets/nav_tab.dart';
import 'package:tiktok_clone/feautres/main_navigation/widgets/stf_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  // final screens = [
  //   // Center(child: Text('Home')),
  //   StfScreen(key: GlobalKey()),
  //   StfScreen(key: GlobalKey()),
  //   // Center(child: Text('Discover')),
  //   Container(),
  //   StfScreen(key: GlobalKey()),
  //   StfScreen(key: GlobalKey()),
  //   // Center(child: Text('Inbox')),
  //   // Center(child: Text('User')),
  // ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
      print(_selectedIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Offstage(offstage: _selectedIndex != 0, child: StfScreen()),
          Offstage(offstage: _selectedIndex != 1, child: StfScreen()),
          Offstage(offstage: _selectedIndex != 3, child: StfScreen()),
          Offstage(offstage: _selectedIndex != 4, child: StfScreen()),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.size12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavTab(
                text: "Home",
                isSelected: _selectedIndex == 0,
                icon: FontAwesomeIcons.house,
                selectedIcon: FontAwesomeIcons.house,
                onTap: () => _onTap(0),
              ),
              NavTab(
                text: "Discover",
                isSelected: _selectedIndex == 1,
                icon: FontAwesomeIcons.compass,
                selectedIcon: FontAwesomeIcons.solidCompass,
                onTap: () => _onTap(1),
              ),
              NavTab(
                text: "Inbox",
                isSelected: _selectedIndex == 3,
                icon: FontAwesomeIcons.message,
                selectedIcon: FontAwesomeIcons.solidMessage,
                onTap: () => _onTap(3),
              ),
              NavTab(
                text: "Profile",
                isSelected: _selectedIndex == 4,
                icon: FontAwesomeIcons.user,
                selectedIcon: FontAwesomeIcons.solidUser,
                onTap: () => _onTap(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// iOS Cupertino
// CupertinoTabScaffold(
//       tabBar: CupertinoTabBar(
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(CupertinoIcons.house),
//             label: "Home",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(CupertinoIcons.search),
//             label: "Search",
//           ),
//         ],
//       ),
//       tabBuilder: (context, index) => screens[index],
//     );





// BottomNavigationBar(
//         type: BottomNavigationBarType
//             .shifting, // :: item이 3개 미만일 때 background컬러 변경하는 법
//         currentIndex: _selectedIndex,
//         onTap: _onTap,
//         // selectedItemColor: Theme.of(context).primaryColor,
//         items: [
//           BottomNavigationBarItem(
//             icon: FaIcon(FontAwesomeIcons.house),
//             label: "Home",
//             tooltip: "What are you?",
//             backgroundColor: Colors.amber,
//           ),
//           BottomNavigationBarItem(
//             icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
//             label: "Search",
//             backgroundColor: Colors.blue,
//           ),
//           // BottomNavigationBarItem(
//           //   icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
//           //   label: "Search",
//           //   backgroundColor: Colors.pink,
//           // ),
//           // BottomNavigationBarItem(
//           //   icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
//           //   label: "Search",
//           //   backgroundColor: Colors.yellow,
//           // ),
//           // BottomNavigationBarItem(
//           //   icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
//           //   label: "Search",
//           //   backgroundColor: Colors.teal,
//           // ),
//         ],
//       ),