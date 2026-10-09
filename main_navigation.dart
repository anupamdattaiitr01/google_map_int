import 'package:flutter/material.dart';
import 'map_discovery_screen.dart';
import 'place_discovery_screen.dart';
import 'active_navigation_screen.dart';
import 'saved_places_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const MapDiscoveryScreen(),
    const PlaceDiscoveryScreen(),
    const ActiveNavigationScreen(),
    const SavedPlacesScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF0D253F), // Dark blue from the UI
        selectedItemColor: Colors.cyanAccent,
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: 'Map'),
          BottomNavigationBarItem(icon: Icon(Icons.explore_outlined), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.navigation_outlined), label: 'Navigate'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark_border), label: 'Saved'),
        ],
      ),
    );
  }
}