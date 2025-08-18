import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainNavigationScreen extends StatefulWidget {
  MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {
  int _selectedIndex = 0;

  final screens = [
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Home')),
    Center(child: Text('Search')),
    Center(child: Text('Home')),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: _selectedIndex,
        onDestinationSelected: _onTap,
        destinations: [
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.house, color: Colors.white),
            label: 'Home',
          ),
          NavigationDestination(
            icon: FaIcon(FontAwesomeIcons.magnifyingGlass, color: Colors.white),
            label: 'Search',
          ),
        ],
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