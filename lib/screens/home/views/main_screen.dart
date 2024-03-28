import 'dart:math';

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:25, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.yellow[700]
                          ),
                        ),
                        Icon(Icons.person,
                        color: Colors.yellow[800],)
                      ],
                    ),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Text("Welcome",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.outline
                        ),
                        ),
                        Text("Damisola",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onBackground
                        ),
                        )
                      ],
                    ),
                    
                  ],
                ),
                IconButton(onPressed: (){}, icon: Icon(Icons.settings))
              ],
            ),
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.width/2,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Theme.of(context).colorScheme.primary,
                      Theme.of(context).colorScheme.secondary,
                      Theme.of(context).colorScheme.tertiary,
                      ],
                    transform: const GradientRotation(pi / 4)
                  ),
                borderRadius: BorderRadius.circular(25)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total Balance",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w600
                  ),
                  ),
                  const SizedBox(height: 12,),
                  Text("\$ 4000.00",
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                color: Colors.white30,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.grey,
                                    offset: Offset(5, 5)
                                  )
                                ]
                              ),
                              child: Center(
                                child:Icon(
                                  Icons.arrow_downward,
                                   size: 12,
                                   color: Colors.greenAccent,)
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text("Income",
                                 style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400
                                    ),
                                    ),
                                 Text("\$2500",
                                 style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: 25,
                              height: 25,
                              decoration: const BoxDecoration(
                                color: Colors.white30,
                                shape: BoxShape.circle
                              ),
                              child: Center(
                                child:Icon(
                                  Icons.arrow_downward,
                                   size: 12,
                                   color: Colors.red,)
                              ),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 Text("Expenses",
                                 style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400
                                    ),
                                    ),
                                 Text("\$800",
                                 style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600
                                  ),
                                  ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    
                  )
                ],
              ),
            ),
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Transactions",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.bold
                  ),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Text(
                    "View All",
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.outline,
                    fontWeight: FontWeight.w400
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder: (context, int i){
                return Padding(
                  padding: const EdgeInsets.only(bottom:16.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Colors.yellow[700],
                                      shape: BoxShape.circle
                                    ),
                                  ),
                                  const Icon(Icons.food_bank,
                                  color: Colors.white,)
                                ],
                              ),
                              SizedBox(width: 12,),
                                  Text(
                                    "Food",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).colorScheme.onBackground,
                                          fontWeight: FontWeight.w500
                                          )
                                          ),
                                  
                               ]
                            ),
                            Column(
                              children: [
                                  Text(
                                    "\$45.00",
                                    style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).colorScheme.onBackground,
                                          fontWeight: FontWeight.w400
                                          )
                                          ),
                                        Text(
                                          "Today",
                                      style: TextStyle(
                                            fontSize: 14,
                                            color: Theme.of(context).colorScheme.outline,
                                            fontWeight: FontWeight.w400
                                            )
                                            ),
                              ],
                                  )
                        ],
                      ),
                    ),
                  ),
                );
              }
              ),
            )
          ],
        ),
      ),
    );
  }
}