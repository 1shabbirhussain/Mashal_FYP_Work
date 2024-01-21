import 'package:flutter/material.dart';

import '../Resource/resource.dart';
import '../Task/task.dart';
import '../leave/leave.dart';
import '../Performance/performance.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  Color customColor = const Color(0xFF29BD89);

  @override
  Widget build(BuildContext context) {
    Color customColor = const Color(0xFF29BD89);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: 250,
            child: Container(
              decoration: BoxDecoration(
                color: customColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(120),
                  bottomRight: Radius.circular(120),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Dashboard",
                      style: TextStyle(color: Colors.white, fontSize: 40),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 0,
            right: 0,
            bottom: 0,
            child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              children: [
                //-------Task Container---------------
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TaskScreen()));
                  },
                  child: Container(
                    //------------decor-----------------
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: const Color.fromARGB(255, 231, 226, 226)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20)),
                    height: 100,
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),

                    //-------decor---------
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: customColor.withOpacity(0.8),
                          child: const Icon(Icons.task),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Task",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),

                ////-------Task Container---------------
                ///
                ///
                /////-------Leave Container---------------
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const leaveScreen()));
                  },
                  child: Container(
                    //------------decor-----------------
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: const Color.fromARGB(255, 231, 226, 226)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20)),
                    height: 100,
                    margin: const EdgeInsets.only(
                      right: 20,
                    ),

                    //-------decor---------
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: customColor.withOpacity(0.8),
                          child: const Icon(Icons.app_registration_rounded),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Leave",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),

                //------------------Leave Screen-----------------------

                //------------------Performnce cntainer----------------------

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PerformanceScreen()));
                  },
                  child: Container(
                    //------------decor-----------------
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: const Color.fromARGB(255, 231, 226, 226)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20)),
                    height: 100,
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),

                    //-------decor---------
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: customColor.withOpacity(0.8),
                          child: const Icon(Icons.speed),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Performance",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),

                //-----------Perfrmnce COntainer ----------

                //-----------RESOURCE COntainer ----------

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ResourceScreen()));
                  },
                  child: Container(
                    //------------decor-----------------
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: const Color.fromARGB(255, 231, 226, 226)
                            .withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20)),
                    height: 100,
                    margin: const EdgeInsets.only(
                      right: 20,
                    ),

                    //-------decor---------
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: customColor.withOpacity(0.8),
                          child: const Icon(Icons.read_more),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Resurce",
                          style: TextStyle(fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
                //--------resrce container----------
              ],
            ),
          ),
        ],
      ),
    );
  }
}
