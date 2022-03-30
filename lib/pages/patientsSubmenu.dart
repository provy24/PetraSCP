import 'package:PetraSCP/pages/admission.dart';
import 'package:PetraSCP/pages/neurologicalExam.dart';
import 'package:flutter/material.dart';
import 'package:form_floating_action_button/form_floating_action_button.dart';

import 'clincalAssessment.dart';
import 'clinicalDiagnosis.dart';
import 'medication.dart';

class PatientSubMenu extends StatefulWidget {
  const PatientSubMenu({Key key}) : super(key: key);

  @override
  _PatientSubMenuState createState() => _PatientSubMenuState();
}

class _PatientSubMenuState extends State<PatientSubMenu> {
  bool visible1 = true;
  bool visible2 = false;
  bool visible3 = false;
  bool visible4 = false;
  bool visible5 = false;
  bool visible6 = false;
  bool visible7 = false;
  bool visible8 = false;
  bool visible9 = false;
  bool visible10 = false;
  bool visible11 = false;

  String radioButtonItem = 'ONE';

  // Group Value for Radio Button.
  int id = 1;

  int steps = 1;
  int _myAge = 0;
  bool _nextStep = false;

  String valueChanged = '';
  String valueToValidate = '';
  String valueSaved = '';

  final FormFloatingActionButtonController _controller =
      FormFloatingActionButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1832),
        title: Text(
          'Patient SubMenu',
          style: TextStyle(fontSize: 13),
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.9),
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              image: AssetImage("assets/jpd.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: Colors.white.withOpacity(0.5),
                  ),
                  child: Stack(
                    children: [
                      Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 20, top: 60, right: 20),
                            child: Text(
                              'Choose what you would like to do',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF0D1832),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )),
                      Visibility(
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 100),
                              child: Container(
                                height: 550,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.4),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Center(
                                    child: Padding(
                                        padding: const EdgeInsets.all(10),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.vertical,
                                          child: Stack(
                                            children: [
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 10,
                                                          bottom: 10),
                                                  child: GestureDetector(
                                                    child: Container(
                                                      //alignment: Alignment.center,
                                                      margin: EdgeInsets.all(5),
                                                      height: 70,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white
                                                            .withOpacity(0.6),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10), //border corner radius
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5), //color of shadow
                                                            spreadRadius:
                                                                2, //spread radius
                                                            blurRadius:
                                                                7, // blur radius
                                                            offset: Offset(0,
                                                                2), // changes position of shadow
                                                            //first paramerter of offset is left-right
                                                            //second parameter is top to down
                                                          ),
                                                          //you can set more BoxShadow() here
                                                        ],
                                                      ),
                                                      child: Center(
                                                          child: ListTile(
                                                        leading: CircleAvatar(
                                                          radius: 20,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "assets/therapy.png"),
                                                        ),
                                                        title: Text(
                                                          'Patients Admission',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        subtitle: Text(
                                                          'Admit a new patient',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      )),
                                                    ),
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (_) =>
                                                                  Patients()));
                                                    },
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 110),
                                                  child: GestureDetector(
                                                    child: Container(
                                                      //alignment: Alignment.center,
                                                      margin: EdgeInsets.all(5),
                                                      height: 70,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white
                                                            .withOpacity(0.6),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10), //border corner radius
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5), //color of shadow
                                                            spreadRadius:
                                                                2, //spread radius
                                                            blurRadius:
                                                                7, // blur radius
                                                            offset: Offset(0,
                                                                2), // changes position of shadow
                                                            //first paramerter of offset is left-right
                                                            //second parameter is top to down
                                                          ),
                                                          //you can set more BoxShadow() here
                                                        ],
                                                      ),
                                                      child: Center(
                                                          child: ListTile(
                                                        leading: CircleAvatar(
                                                          radius: 20,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "assets/xray.png"),
                                                        ),
                                                        title: Text(
                                                          'Neurological Examination',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        subtitle: Text(
                                                          'Examine the patient',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      )),
                                                    ),
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (_) =>
                                                                  NeurologicalExam()));
                                                    },
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 210),
                                                  child: GestureDetector(
                                                    child: Container(
                                                      //alignment: Alignment.center,
                                                      margin: EdgeInsets.all(5),
                                                      height: 70,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white
                                                            .withOpacity(0.6),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10), //border corner radius
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5), //color of shadow
                                                            spreadRadius:
                                                                2, //spread radius
                                                            blurRadius:
                                                                7, // blur radius
                                                            offset: Offset(0,
                                                                2), // changes position of shadow
                                                            //first paramerter of offset is left-right
                                                            //second parameter is top to down
                                                          ),
                                                          //you can set more BoxShadow() here
                                                        ],
                                                      ),
                                                      child: Center(
                                                          child: ListTile(
                                                        leading: CircleAvatar(
                                                          radius: 20,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "assets/diagno.png"),
                                                        ),
                                                        title: Text(
                                                          'Clinical Diagnosis',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        subtitle: Text(
                                                          'Diagnose the patient',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      )),
                                                    ),
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (_) =>
                                                                  ClinicalDiagnosis()));
                                                    },
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 310),
                                                  child: GestureDetector(
                                                    child: Container(
                                                      //alignment: Alignment.center,
                                                      margin: EdgeInsets.all(5),
                                                      height: 70,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white
                                                            .withOpacity(0.6),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10), //border corner radius
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5), //color of shadow
                                                            spreadRadius:
                                                                2, //spread radius
                                                            blurRadius:
                                                                7, // blur radius
                                                            offset: Offset(0,
                                                                2), // changes position of shadow
                                                            //first paramerter of offset is left-right
                                                            //second parameter is top to down
                                                          ),
                                                          //you can set more BoxShadow() here
                                                        ],
                                                      ),
                                                      child: Center(
                                                          child: ListTile(
                                                        leading: CircleAvatar(
                                                          radius: 20,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "assets/asses.png"),
                                                        ),
                                                        title: Text(
                                                          'Clinical Assessment',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        subtitle: Text(
                                                          'Assess patient\'s condition',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      )),
                                                    ),
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (_) =>
                                                                  ClinicalAssessment()));
                                                    },
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 410),
                                                  child: GestureDetector(
                                                    child: Container(
                                                      //alignment: Alignment.center,
                                                      margin: EdgeInsets.all(5),
                                                      height: 70,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      decoration: BoxDecoration(
                                                        color: Colors.white
                                                            .withOpacity(0.6),
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                10), //border corner radius
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(
                                                                    0.5), //color of shadow
                                                            spreadRadius:
                                                                2, //spread radius
                                                            blurRadius:
                                                                7, // blur radius
                                                            offset: Offset(0,
                                                                2), // changes position of shadow
                                                            //first paramerter of offset is left-right
                                                            //second parameter is top to down
                                                          ),
                                                          //you can set more BoxShadow() here
                                                        ],
                                                      ),
                                                      child: Center(
                                                          child: ListTile(
                                                        leading: CircleAvatar(
                                                          radius: 20,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          backgroundImage:
                                                              AssetImage(
                                                                  "assets/treatment.png"),
                                                        ),
                                                        title: Text(
                                                          'Medication',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                        subtitle: Text(
                                                          'Treatment for the patient',
                                                          style: TextStyle(
                                                            fontSize: 13,
                                                          ),
                                                        ),
                                                      )),
                                                    ),
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (_) =>
                                                                  Medication()));
                                                    },
                                                  )),
                                            ],
                                          ),
                                        ))),
                              ),
                            )),
                        visible: visible1,
                      ),
                    ],
                  )),
            ],
          )),
    );
  }
}
