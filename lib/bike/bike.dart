import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

import 'bikeformfile.dart';

class BikeTypes extends StatefulWidget {
  const BikeTypes({Key? key}) : super(key: key);

  @override
  State<BikeTypes> createState() => _BikeTypesState();
}

class _BikeTypesState extends State<BikeTypes> {
  List<String> listBikeTypes = ["Motorcycles", "Bicycles", "Scooters", "Other"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "Bike",
          style: GoogleFonts.roboto(fontSize: 20,color: Colors.black),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return InkWell(
            splashColor: Colors.grey.shade200,
            onTap: () {
              BikeTypeForm.from(listBikeTypes[index]).launch(context,pageRouteAnimation: PageRouteAnimation.Slide);
            },
            child: Container(
              decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 0.5, color: Colors.grey))),
              height: 50,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(listBikeTypes[index],
                      style: GoogleFonts.roboto(
                          fontSize: 16, color: Colors.black)),
                  const Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black54,
                    size: 20,
                  ).paddingLeft(10)
                ],
              ).paddingLeft(20.0),
            ),
          );
        },
        itemCount: listBikeTypes.length,
      ),
    );
  }
}
