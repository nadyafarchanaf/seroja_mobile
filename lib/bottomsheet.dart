import 'package:flutter/material.dart';
import 'package:seroja/beranda.dart';
import 'color.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class Modal{
  String _date = "Pilih tanggal";
  Future<File> imageFile;
 
  pickImageFromGallery(ImageSource source) {
    return 
      imageFile = ImagePicker.pickImage(source: source);
    
  }
  Widget showImage() {
    return FutureBuilder<File>(
      future: imageFile,
      builder: (BuildContext context, AsyncSnapshot<File> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Image.file(
            snapshot.data,
            width: 300,
            height: 300,
          );
        } else if (snapshot.error != null) {
          return const Text(
            'Error Picking Image',
            textAlign: TextAlign.center,
          );
        } else {
          return const Text(
            'No Image Selected',
            textAlign: TextAlign.center,
          );
        }
      },
    );
  }
  mainBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height - 80,
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: <Widget>[
              Positioned(
                top: MediaQuery.of(context).size.height / 25,
                left: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(175, 30),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2 - 340,
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 50,
                          height: 50,
                          child: Image.asset('assets/fab-delete.png'),
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                CustomColor.PurpleLight,
                                CustomColor.PurpleDark,
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(50.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: CustomColor.PurpleShadow,
                                blurRadius: 10.0,
                                spreadRadius: 5.0,
                                offset: Offset(0.0, 0.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(height: 10),
                          Text(
                            'Formulir Pendaftaran',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 73,
                            padding: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  width: 1.0,
                                  color: CustomColor.GreyBorder,
                                ),
                                bottom: BorderSide(
                                  width: 1.0,
                                  color: CustomColor.GreyBorder,
                                ),
                              ),
                            ),
                            child : Column(
                                    children: <Widget>[
                                      Container(
                                        width: MediaQuery.of(context).size.width / 1.2,
                                        child: Text(
                                          'Keluhan penyakit',
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: CustomColor.TextHeader,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      
                                      Container(
                                          width: MediaQuery.of(context).size.width /1,
                                          child: TextFormField(
                                            autofocus: true,
                                            style: TextStyle(
                                                fontSize: 15, fontStyle: FontStyle.normal),
                                            decoration:
                                                InputDecoration(border: InputBorder.none),
                                          ),
                                        ),
                                    ]
                                        )
                                  
                          ),
                          
                          SizedBox(height: 5),
                          Container (
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Text(
                              'Poli yang akan dituju',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: CustomColor.TextHeader,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                           Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 40,
                           child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[
                                Center(
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                         color: Colors.white,
                                        child : Container (
                                        child: Text('Poli Anak'),
                                      ),
                                      onPressed: (){},
                                      )
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                         color: Colors.white,
                                        child : Container (
                                        child: Text('Poli THT'),
                                      ),
                                      onPressed: (){},
                                      )
                                    ],
                                  ),
                                ),
                               Center(
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                         color: Colors.white,
                                        child : Container (
                                        child: Text('Poli Dalam'),
                                      ),
                                      onPressed: (){},
                                      )
                                    ],
                                  ),
                                ),
                                
                              ],
                            ),
                            
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 40,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[
                                Center(
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                         color: Colors.white,
                                        child : Container (
                                        child: Text('Poli Kandungan'),
                                      ),
                                      onPressed: (){},
                                      )
                                    ],
                                  ),
                                ),
                                
                               Center(
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                         color: Colors.white,
                                        child : Container (
                                        child: Text('Poli Jantung'),
                                      ),
                                      onPressed: (){},
                                      )
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                         color: Colors.white,
                                        child : Container (
                                        child: Text('Poli Anak'),
                                      ),
                                      onPressed: (){},
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 40,
                            decoration: BoxDecoration(
                              border: Border(
                                
                                bottom: BorderSide(
                                  width: 1.0,
                                  color: CustomColor.GreyBorder,
                                ),
                              ),
                            ),
                            
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              children: <Widget>[ 
                               Center(
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                         color: Colors.white,
                                        child : Container (
                                        child: Text('Poli Gigi'),
                                      ),
                                      onPressed: (){},
                                      )
                                    ],
                                  ),
                                ),
                               Center(
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                         color: Colors.white,
                                        child : Container (
                                        child: Text('Poli Saraf'),
                                      ),
                                      onPressed: (){},
                                      )
                                    ],
                                  ),
                                ),
                                Center(
                                  child: Row(
                                    children: <Widget>[
                                      FlatButton(
                                         color: Colors.white,
                                        child : Container (
                                        child: Text('Poli Kulit'),
                                      ),
                                      onPressed: (){},
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Text(
                              'Tanggal Pemeriksaan',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 15,
                                color: CustomColor.TextHeader,
                                fontWeight: FontWeight.w600,
                                      ),
                            ),
                          ),
                          
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: FlatButton(
                            onPressed: () {
                                DatePicker.showDatePicker(context,
                                                      showTitleActions: true,
                                                      minTime: DateTime(2019, 3, 5),
                                                      maxTime: DateTime(2219, 6, 7), onConfirm: (date) {
                            print('confirm $date');
                            _date = '${date.year} - ${date.month} - ${date.day}';
                            return _date;
                            }, currentTime: DateTime.now(), locale: LocaleType.id);
                             },
                            child: Text(
                              '$_date',
                              textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15, ),
                            ),
                          ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: 90,
                            padding: EdgeInsets.only(top: 5),
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  width: 1.0,
                                  color: CustomColor.GreyBorder,
                                ),
                                
                              ),
                            ),
                          child : Column(
                            children : <Widget> [
                            Container (
                            width: MediaQuery.of(context).size.width / 1.2,
                            child: Text(
                              'Upload Foto Kartu BPJS',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: CustomColor.TextHeader,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
          
        showImage(),
            RaisedButton(
              shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28.0),
                            ),
              child: Text("Pilih gambar dari galeri"),
              onPressed: () {
                pickImageFromGallery(ImageSource.gallery);
              },
            ),
        
          ],
        ),
                    
          
                          ),
                          SizedBox(height: 10),
                          RaisedButton(
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
                              borderRadius: BorderRadius.circular(28.0),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 1.2,
                              height: 50,
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  colors: <Color>[
                                    CustomColor.BlueLight,
                                    CustomColor.BlueDark,
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(28.0),
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
                                  'DAFTAR',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
