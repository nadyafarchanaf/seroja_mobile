import 'package:flutter/material.dart';
import 'package:seroja/color.dart';
import 'package:seroja/guidline.dart';
import 'package:seroja/login.dart';


class WelcomePage3 extends StatefulWidget {
  WelcomePage3({Key key}) : super(key: key);

  _WelcomePage3State createState() => _WelcomePage3State();
}

class _WelcomePage3State extends State<WelcomePage3> {
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
                flex: 9,
                child: Hero(
                  tag: 'antri',
                  child: Image.asset('assets/logo seroja dengan nama.png', height: 230, width: 230,),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      MaterialPageRoute(builder: (context) => Guideline()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: CustomColor.GreenDark,
                      borderRadius: BorderRadius.all(
                        Radius.circular(28.0),
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
                        'Petunjuk',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
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
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  textColor: Colors.white,
                  padding: const EdgeInsets.all(0.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.4,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: CustomColor.GreenDark,
                      borderRadius: BorderRadius.all(
                        Radius.circular(28.0),
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
                        'Masuk',
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
