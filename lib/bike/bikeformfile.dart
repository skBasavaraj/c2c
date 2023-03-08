import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nb_utils/nb_utils.dart';

class BikeTypeForm extends StatefulWidget {
  String? type;

  BikeTypeForm.from(this.type, {super.key});

  BikeTypeForm({Key? key}) : super(key: key);

  @override
  State<BikeTypeForm> createState() => _BikeTypeFormState();
}

class _BikeTypeFormState extends State<BikeTypeForm> {
  var brnadModelName;
 List<String> MBMList =[];
  TextEditingController brandName = TextEditingController();
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.type=="Motorcycles") {
      MBMList = [
        "Bajaj/Avenger",
        "Bajaj/CT 100",
        "Bajaj/Discover",
        "Bajaj/Platina",
        "Bajaj/Pulsar",
        "Bajaj/Others",
        "Hero/Achiever",
        "Hero/Ambition",
        "Hero/CBZ",
        "Hero/CD 100",
        "Hero/CD Dawn",
        "Hero/CD Deluxe",
        "Hero/Dawn",
        "Hero/Glamour",
        "Hero/Hunk",
        "HX 250 R",
        "Hero/Ignitor",
        "Hero/Impulse",
        "Hero/Joy",
        "Hero/Karizma",
        "Hero/Passion",
        "Hero/Sleek",
        "Hero/Splendor",
        "Hero/Street",
        "Hero/Super Splendor",
        "Hero/Others",
        "Hero Honda/Achiever",
        "Hero Honda/Ambition",
        "Hero Honda/CBZ",
        "Hero Honda/CD 100",
        "Hero Honda/CD Dawn",
        "Hero Honda/CD Deluxe",
        "Hero Honda/Dawn",
        "Hero Honda/Deluxe",
        "Hero Honda/Glamour",
        "Hero Honda/Hunk",
        "Hero Honda/HX 250 R",
        "Hero Honda/Ignitor",
        "Hero Honda/Impulse",
        "Hero Honda/Joy",
        "Hero Honda/Karizma",
        "Hero Honda/Passion",
        "Hero Honda/Sleek",
        "Hero Honda/Splendor",
        "Hero Honda/Street",
        "Hero Honda/Super Splendor",
        "Hero Honda/Others",
        "Honda/CB",
        "Honda/CBF Stunner",
        "Honda/CBR",
        "Honda/CD 110 Dream",
        "Honda/Dream",
        "Honda/Dream Yuga",
        "Honda/Goldwing GL 1800",
        "Honda/VFR 1200 F",
        "Honda/VT 1300 CX",
        "Honda/Others",
        "KTM/390 Duke ABS",
        "KTM/Duke 200",
        "KTM/RC",
        "KTM/Others",
        "Royal Enfield/Bullet",
        "Royal Enfield/Classic",
        "Royal Enfield/Continental GT",
        "Royal Enfield/Thunderbird",
        "Royal Enfield/Others",
        "Suzuki/Bandit",
        "Suzuki/Gixxer",
        "Suzuki/Gs",
        "Suzuki/GSX",
        "Suzuki/Hayabusa",
        "Suzuki/Hayate",
        "Suzuki/Inazuma",
        "Suzuki/M1800 R",
        "Suzuki/M800",
        "Suzuki/Slingshot",
        "Suzuki/V Storm",
        "Suzuki/Others",
        "TVS/Apache RTR",
        "TVS/Heavy Duty Super XL",
        "TVS/Phoenix",
        "TVS/Star City Plus",
        "TVS/Star Sport",
        "TVS/Others",
        "Yamaha/Crux",
        "Yamaha/Fazer",
        "Yamaha/FZ",
        "Yamaha/FZS",
        "Yamaha/Saluto",
        "Yamaha/SS 125",
        "Yamaha/SZ",
        "Yamaha/Vmax",
        "Yamaha/YZF R",
        "Yamaha/Others",
        "Other Brands"
      ];
    }else if(widget.type=="Scooters"){
      MBMList = [
        "Bajaj/Other",
        "Hero/Maestro",
        "Hero/Pleasure",
        "Hero/Others",
        "Honda/Kinetic",
        "Honda/Activa",
        "Honda/Aviator",
        "Honda/Dio",
        "Honda/Others",
        "Mahindra/Duro",
        "Mahindra/Gusto",
        "Mahindra/Kine",
        "Mahindra/Rodeo",
        "Mahindra/Sym Flyte",
        "Mahindra/Others",
        "Suzuki/Access",
        "Suzuki/Let's",
        "Suzuki/Swish",
        "Suzuki/Others",
        "TVS/Scooty ES",
        "TVS/Jupiter",
        "TVS/Scooty",
        "TVS/Wego",
        "TVS/Others",
        "Others Brands",
      ];
    }else if(widget.type=="Bicycles"){
      MBMList =["Hero","Hercules","Others"];
    }
  }
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
          widget.type!,
          style: GoogleFonts.roboto(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              20.height,
              TextField(
                onTap: () {
                  _showMyDialog(context);

                },
                controller: brandName,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, right: 10),
                    labelText: "Brand/model *"),
                style: GoogleFonts.roboto(
                  fontSize: 16,
                ),
              ),
              20.height,
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, right: 10),
                    labelText: "Year*"),
              ).validate(),
              20.height,
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, right: 10),
                    labelText: "KM driven *"),
              ).validate(),
              20.height,
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, right: 10),
                    labelText: "Ad title *"),
              ).validate(),
              20.height,
              TextField(
                maxLines: 1,
                decoration: InputDecoration(
                    labelText: "Describe what you are selling *",
                    contentPadding: EdgeInsets.only(left: 10, right: 10)),
              ),
            ],
          ).paddingOnly(left: 10,right: 10,top: 10),
          Positioned(
            bottom: 0,
            child: MaterialButton(
              onPressed: () {},
              child: Text("Submit"),
            ),
          )
        ],

      ).paddingAll(10),
    );
  }

  _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select'),
          content: Container(
            height: 500,
            width: 300,
            child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      brandName.text = MBMList[index].toString();
                      setState(() {
                        Navigator.pop(context);
                        FocusScope.of(context).unfocus();

                      });
                    },
                    child: Container(
                      height: 50,
                      child: Text(
                        MBMList[index],
                        style: GoogleFonts.roboto(
                            fontSize: 20, color: Colors.black),
                      ),
                    ),
                  );
                },
                itemCount: MBMList.length),
          ),
        );
      },
    );
  }
}
