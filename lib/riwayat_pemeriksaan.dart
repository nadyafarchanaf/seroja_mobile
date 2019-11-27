import 'package:flutter/material.dart';
import 'package:seroja/color.dart';
import 'package:seroja/beranda.dart';

class Riwayat extends StatefulWidget {
  Riwayat({Key key}) : super(key: key);

  _RiwayatState createState() => _RiwayatState();
}

class _RiwayatState extends State<Riwayat> {
  String _date = "28-11-2019";
  String keluhan = "Saya sakit kepala";
  String poli = "Poli Mata";
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Container(
             height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: CustomColor.GreyBackground,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.only(left: 110.0),
            child: Text(
              "Riwayat Pemeriksaan",
              style: TextStyle(
                color: CustomColor.TextHeader, 
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              "Tanggal Pemeriksaan",
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              children: <Widget>[
                new Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                 
                ),
                Container(
                  height: 30.0,
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.5),
                  margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                ),
                new Expanded(
                  child: Text(  
                          "$_date"
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              "Poli",
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              children: <Widget>[
                new Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  
                ),
                Container(
                  height: 30.0,
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.5),
                  margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                ),
                new Expanded(
                  child: Text(
                    "$poli"
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Text(
              "Keluhan Penyakit",
              style: TextStyle(color: Colors.grey, fontSize: 16.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.withOpacity(0.5),
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            margin:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
            child: Row(
              children: <Widget>[
                new Padding(
                  padding:
                  EdgeInsets.symmetric(vertical: 40.0, horizontal: 15.0),
                  
                ),
                Container(
                  height: 40.0,
                  width: 1.0,
                  color: Colors.grey.withOpacity(0.5),
                  margin: const EdgeInsets.only(left: 00.0, right: 10.0),
                ),
                new Expanded(
                  child: Text(
                    "$keluhan"
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: RaisedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Beranda()),
                              );
                              // Navigator.pop(context);
                            },
                            textColor: Colors.white,
                            padding: const EdgeInsets.all(0.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(21.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.0,
                              height: 60,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    CustomColor.BlueLight,
                                    CustomColor.BlueDark,
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(21.0),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: CustomColor.BlueShadow,
                                    blurRadius: 2.0,
                                    spreadRadius: 1.0,
                                    offset: Offset(0.0, 0.0),
                                  ),
                                ],
                              ),
                              padding:
                                  const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child: Center(
                                child: const Text(
                                  'Ok',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                ),
              ],
            ),
          ),
          


        ],
      ),
        ),
      ),
    );
      
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path p = new Path();
    p.lineTo(size.width, 0.0);
    p.lineTo(size.width, size.height * 0.85);
    p.arcToPoint(
      Offset(0.0, size.height * 0.85),
      radius: const Radius.elliptical(50.0, 10.0),
      rotation: 0.0,
    );
    p.lineTo(0.0, 0.0);
    p.close();
    return p;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}