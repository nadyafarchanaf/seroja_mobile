import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:seroja/riwayat_pemeriksaan.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:seroja/appBar.dart';
import 'package:seroja/bottom_navigation.dart';
import 'package:seroja/fab.dart';
import 'package:seroja/color.dart';

class Beranda extends StatefulWidget {
  Beranda({Key key}) : super(key: key);
 
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  final bottomNavigationBarIndex = 0;
  String _date = "28-11-2019";
  String keluhan = "Saya sakit kepala";
  String poli = "Poli Mata";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: belumdaftarAppbar(context),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 15, left: 20, bottom: 15),
              child: Text(
                'Riwayat Pemeriksaan',
                style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.TextSubHeader),
              ),
            ),
            
            Slidable(
              actionPane: SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
                padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('assets/checked.png'),
                    Text(
                      '$_date',
                      style: TextStyle(color: CustomColor.TextGrey),
                    ),
                    Container(
                      width: 180,
                      child: Text(
                        '$poli',
                        style: TextStyle(
                            color: CustomColor.TextHeader,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.015, 0.015],
                    colors: [CustomColor.GreenIcon, Colors.white],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColor.GreyBorder,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                ),
              ),
              secondaryActions: <Widget>[
                SlideAction(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: CustomColor.TrashRedBackground),
                      child: Image.asset('assets/trash.png'),
                    ),
                  ),
                  onTap: () => print('Delete'),
                ),
                SlideAction(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          ),
                      child: Text('Lihat'),
                    ),
                  ),
                  onTap: () {
                    Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Riwayat()),
                              );
                  },
                ),
              ],
            ),
            Slidable(
              actionPane: SlidableDrawerActionPane(),
              actionExtentRatio: 0.25,
              child: Container(
                margin: EdgeInsets.fromLTRB(20, 0, 20, 15),
                padding: EdgeInsets.fromLTRB(5, 13, 5, 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Image.asset('assets/checked.png'),
                    Text(
                      '$_date',
                      style: TextStyle(color: CustomColor.TextGrey),
                    ),
                    Container(
                      width: 180,
                      child: Text(
                        '$poli',
                        style: TextStyle(
                            color: CustomColor.TextHeader,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  
                  ],
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    stops: [0.015, 0.015],
                    colors: [CustomColor.GreenIcon, Colors.white],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: CustomColor.GreyBorder,
                      blurRadius: 10.0,
                      spreadRadius: 5.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                ),
              ),
              secondaryActions: <Widget>[
                SlideAction(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: CustomColor.TrashRedBackground),
                      child: Image.asset('assets/trash.png'),
                    ),
                  ),
                  onTap: () => print('Delete'),
                ),
              ],
            ),
            SizedBox(height: 15)
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: customFab(context),
      bottomNavigationBar:
          BottomNavigationBarApp(context, bottomNavigationBarIndex),
    );
  }
}
