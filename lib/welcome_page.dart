import 'package:flutter/material.dart';
import 'package:seroja/color.dart';
import 'package:seroja/welcome_page2.dart';


class WelcomePage extends StatefulWidget {
  WelcomePage({Key key}) : super(key: key);

  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
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
                  tag: 'logo',
                  child: Image.asset('assets/helpImage.png', height: 230, width: 230,),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Proses pengobatan lebih mudah dengan Seroja',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: CustomColor.BlueDark),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'Seroja membantu anda dalam proses pendaftaran, antrian dokter, pengambilan obat. Waktu yang anda perlukan menjadi lebih hemat',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: CustomColor.TextBody,
                          fontFamily: 'opensans'),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Expanded(
                child : Container(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: RaisedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => WelcomePage2()),
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
                                  'MULAI',
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
