
import 'dart:math';

import 'package:expenses_tracker_app/screens/add_expense/viewa/add_expense.dart';
import 'package:expenses_tracker_app/screens/home/views/main_screen.dart';
import 'package:expenses_tracker_app/screens/stats/stats.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;
  late Color selectedItem = Colors.blue;
  Color unselectedItem = Colors.grey;



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30)
        ),
        child: BottomNavigationBar(
          onTap: (value){
            setState(() {
              index = value;
            });
           
          },
          //selectedItemColor: Colors.red,
          //backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.yellow,
          elevation: 3,

          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: index == 0 ? selectedItem : unselectedItem,
                ),
              label: "Home"
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.grain_sharp,
              color: index == 1 ? selectedItem : unselectedItem,
              ),
              label: "Stat"
              ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
           MaterialPageRoute(
             builder: (BuildContext context) => const AddExpense()
            ),
            );
        },
        shape:  CircleBorder(),
        child: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.tertiary,
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.primary,
              ],
              transform: const GradientRotation(pi / 4)
            )
          ),
          child: Icon(Icons.add)),
        ),
        body: index == 0
           ? MainScreen()
           : StatScreen()

    );
  }
}