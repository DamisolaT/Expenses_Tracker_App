
import 'package:expenses_tracker_app/screens/stats/chart.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatScreen extends StatelessWidget {
  const StatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child:  Padding(
        padding: const EdgeInsets.symmetric(horizontal:25, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Transactions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12)
                ),
                //color: Colors.red,
                child: const Padding(
                  padding:  EdgeInsets.fromLTRB(12, 20, 12, 12),
                  child: MyChart(
                    
                  ),
                ),
              )
            
          ],
        
        ),
      ),
    );
  }
}