import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'features/exercises/screens/exercise_templates_screen.dart';
import 'features/macro_tracking/screens/macros_screen.dart';
import 'features/overview/screens/overview_screen.dart';
import 'features/plan_management/screens/plans_screen.dart';
import 'features/profile/screens/profile_screen.dart';

var indexProvider = StateProvider<int>((ref) => 0);
class NavigationMenu extends ConsumerWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: IndexedStack(
        index: ref.watch(indexProvider),
        children: const [
          // Screens
          OverviewScreen(),
          ExerciseTemplatesScreen(),
          PlansScreen(),
          MacrosScreen(),
          ProfileScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          ref.read(indexProvider.state).state = index;
        },
        currentIndex: ref.watch(indexProvider),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Overview',),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Exercises',),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Plans'),
          BottomNavigationBarItem(icon: Icon(Icons.local_fire_department_sharp), label: 'Macros'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      )
    );
  }
}
