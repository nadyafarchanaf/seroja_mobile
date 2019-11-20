import 'package:flutter/material.dart';
import 'package:seroja/color.dart';
import 'package:seroja/welcome_page3.dart';


class Guideline extends StatefulWidget {
  Guideline({Key key}) : super(key: key);

  _GuidelineState createState() => _GuidelineState();
}

class _GuidelineState extends State<Guideline> {
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
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.2,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 13,
                child: Hero(
                  tag: 'antri',
                  child: Image.asset('assets/guideline.png', height: 1000, width: 869,),
                ),
              ),
              Expanded(
                flex: 0,
                child: Column(
                  children: <Widget>[
                  RaisedButton(
                  onPressed: () {
                    // HERO-ANIMATION: https://github.com/flutter/flutter/issues/28041
                    // Navigator.of(context).pushReplacement(
                    //   PageRouteBuilder(
                    //     transitionDuration: Duration(seconds: 1),
                    //     pageBuilder: (_, __, ___) => Empty(),
                    //   ),
                    // );
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomePage3()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: CustomColor.GreenDark,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 6.0,
                          spreadRadius: 3.0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    child: Center(
                      child: const Text(
                        'Ok, Mengerti',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                ]
              ),
              ),
              Expanded(
                flex: 1,
                child: Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
