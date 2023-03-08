import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import '../bike/bike.dart';

class SellFragmnet extends StatefulWidget {
  const SellFragmnet({Key? key}) : super(key: key);

  @override
  State<SellFragmnet> createState() => _SellFragmnetState();
}

class _SellFragmnetState extends State<SellFragmnet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        padding: EdgeInsets.only(top: 5,left: 20,right: 20),
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: [
          Material(

            elevation: 5,
            child: InkWell(
              splashColor: Colors.grey,
                onTap: () {

                },
                child: Center(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Icon(
                     Icons.car_rental_outlined,
                     color: Colors.blue.shade400,
                     size: 40,
                   ),
                   Text(
                     "Car",
                     style: GoogleFonts.roboto(
                         fontSize: 16,
                         color: Colors.blue.shade400,
                         fontWeight: FontWeight.w400),
                   )
                 ],
               ),
              ),
            ),
          ),
          Material(
            elevation: 5,
            child: InkWell(
              splashColor: Colors.grey,
              onTap: () {

              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(
                      Icons.home_work_outlined,
                      color: Colors.blue.shade400,
                      size: 30,
                    ),
                    Text(
                      "Properties",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.blue.shade400,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ),
          Material(
            elevation: 5,
            child: InkWell(
              splashColor: Colors.grey,
              onTap: () {
                BikeTypes().launch(context,pageRouteAnimation: PageRouteAnimation.Slide);
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(
                      Icons.electric_bike_outlined,
                      color: Colors.blue.shade400,
                      size: 30,
                    ),
                    Text(
                      "Bike",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.blue.shade400,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ),
          Material(
            elevation: 5,
            child: InkWell(
              splashColor: Colors.grey,
              onTap: () {

              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(
                      Icons.electrical_services_outlined,
                      color: Colors.blue.shade400,
                      size: 30,
                    ),
                    Text(
                      "Electronics",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.blue.shade400,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ),
          Material(
            elevation: 5,
            child: InkWell(
              splashColor: Colors.grey,
              onTap: () {

              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(
                      Icons.sensor_door_outlined,
                      color: Colors.blue.shade400,
                      size: 30,
                    ),
                    Text(
                      "Spares",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.blue.shade400,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ),
          Material(
            elevation: 5,
            child: InkWell(
              splashColor: Colors.grey,
              onTap: () {

              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(
                      Icons.work_outline,
                      color: Colors.blue.shade400,
                      size: 30,
                    ),
                    Text(
                      "Job",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.blue.shade400,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ),
          Material(
            elevation: 5,
            child: InkWell(
              splashColor: Colors.grey,
              onTap: () {

              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Icon(
                      Icons.dashboard_outlined,
                      color: Colors.blue.shade400,
                      size: 30,
                    ),
                    Text(
                      "More",
                      style: GoogleFonts.roboto(
                          fontSize: 16,
                          color: Colors.blue.shade400,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
