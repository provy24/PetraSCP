import 'package:flutter/material.dart';
import 'package:form_floating_action_button/form_floating_action_button.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ClinicalDiagnosis extends StatefulWidget {
  const ClinicalDiagnosis({Key key}) : super(key: key);

  @override
  _ClinicalDiagnosisState createState() => _ClinicalDiagnosisState();
}

class _ClinicalDiagnosisState extends State<ClinicalDiagnosis> {
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
  bool _previousStep = false;
  final List<Map<String, dynamic>> _gender = [
    {
      'value': 'male',
      'label': 'Male',
    },
    {
      'value': 'female',
      'label': 'Female',
    },
  ];
  var _genderName = TextEditingController();
  var _fullName = TextEditingController();
  var _dateOfBirth = TextEditingController();
  var _hospitalNumber = TextEditingController();
  var _admissionDate = TextEditingController();
  var _dateOfStrokeOnset = TextEditingController();
  var _timeOfStrokeOnset = TextEditingController();
  var _timeOfArrival = TextEditingController();
  var _symptoms = TextEditingController();
  String valueChanged = '';
  String valueToValidate = '';
  String valueSaved = '';

  //Stroke Risk Factors
  List<String> clinicalDiagnosisList1 = [
    'TACS ',
    'PACS ',
    'LACS ',
    'POCS ',
    'TIA ',
  ];
  List<String> clinicalDiagnosisList2 = [
    'POCS ',
    'TIA ',
  ];

  List<String> checkedItemList = [];
  final FormFloatingActionButtonController _controller =
      FormFloatingActionButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1832),
        title: Text(
          'Clinical Diagnosis',
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
                              padding: const EdgeInsets.only(left: 20, top: 60),
                              child: Text.rich(TextSpan(children: [
                                TextSpan(
                                    text:
                                        'The diagnosis is according to modified Bamford Classification.\n',
                                    style: TextStyle(fontSize: 13)),
                                TextSpan(
                                  text:
                                      'Click here to read about Bamford Classification',
                                  style: TextStyle(
                                    fontSize: 13,
                                    decoration: TextDecoration.underline,
                                    color: Colors.red,
                                  ),
                                )
                              ])))),
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
                                                  child: Text(
                                                    'Customer Full Name',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF0D1832),
                                                    ),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 40),
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      GroupedCheckbox(
                                                          itemList:
                                                              clinicalDiagnosisList1,
                                                          checkedItemList:
                                                              checkedItemList,
                                                          disabled: ['Black'],
                                                          onChanged:
                                                              (itemList) {
                                                            setState(() {
                                                              print(
                                                                  'SELECTED ITEM LIST $itemList');
                                                            });
                                                          },
                                                          orientation:
                                                              CheckboxOrientation
                                                                  .HORIZONTAL,
                                                          checkColor:
                                                              Colors.blue,
                                                          activeColor:
                                                              Colors.red),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 100),
                                                  child: Text(
                                                    'Definition of terms',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 130),
                                                  child: Text(
                                                    'TACS:',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30,
                                                          right: 5,
                                                          top: 150),
                                                  child: Text(
                                                    'Total anterior circulation syndrome',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 180),
                                                  child: Text(
                                                    'PACS:',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30,
                                                          right: 5,
                                                          top: 200),
                                                  child: Text(
                                                    'Partial anterior circulation syndrome.',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 230),
                                                  child: Text(
                                                    'LACS:',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30,
                                                          right: 5,
                                                          top: 250),
                                                  child: Text(
                                                    'Lacunar syndrome.',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 280),
                                                  child: Text(
                                                    'POCS:',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30,
                                                          right: 5,
                                                          top: 300),
                                                  child: Text(
                                                    'Posterior circulation syndrome.',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 330),
                                                  child: Text(
                                                    'TIA:',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 30,
                                                          right: 5,
                                                          top: 350),
                                                  child: Text(
                                                    'Transient ischemic attack.',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 380),
                                                  child: Text(
                                                    'NB: After imaging add a I (for infarct) or H (for hemorrhage) to replace the S e.g., TACI instead of TACS.',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.black,
                                                        fontStyle:
                                                            FontStyle.normal),
                                                    textAlign: TextAlign.center,
                                                  )),
                                            ],
                                          ),
                                        ))),
                              ),
                            )),
                        visible: visible1,
                      ),
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
                                                  child: Text(
                                                    'Patient Admission Date & Time',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Color(0xFF0D1832),
                                                    ),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 40),
                                                  child: StepProgressIndicator(
                                                    totalSteps: 10,
                                                    currentStep: steps,
                                                    selectedColor:
                                                        Colors.orange,
                                                    unselectedColor:
                                                        Color(0xFF0D1832),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 60),
                                                  child: Text(
                                                    'Date of admission',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 80),
                                                child: TextFormField(
                                                  readOnly: true,
                                                  maxLength: 15,
                                                  controller: _admissionDate,
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xFF0D1832),
                                                  ),
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Pick admission date',
                                                    prefixIcon: Icon(
                                                      Icons
                                                          .calendar_today_outlined,
                                                      color: Color(0xFF0D1832),
                                                    ),
                                                    hintStyle: TextStyle(
                                                        color:
                                                            Color(0xFF0D1832),
                                                        fontSize: 13),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            1.0)),
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF0D1832),
                                                            )),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                  onTap: () async {
                                                    var date =
                                                        await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                DateTime.now(),
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime(2100));
                                                    _admissionDate.text = date
                                                        .toString()
                                                        .substring(0, 10);
                                                    print(DateTime.now().year -
                                                        date.year);
                                                    setState(() {
                                                      _myAge =
                                                          DateTime.now().year -
                                                              date.year;
                                                      print(
                                                          'This is customer\'s age :' +
                                                              _myAge
                                                                  .toString());
                                                    });
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 160),
                                                  child: Text(
                                                    'Premorbid modified rankin score ',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 180),
                                                child: Container(
                                                    //height: 60,
                                                    child: Center(
                                                        child: Column(
                                                  children: [
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          Radio(
                                                            value: 0,
                                                            groupValue: id,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                radioButtonItem =
                                                                    '0';
                                                                id = 0;
                                                              });
                                                            },
                                                          ),
                                                          Text(
                                                            '0',
                                                            style:
                                                                new TextStyle(
                                                                    fontSize:
                                                                        17.0),
                                                          ),
                                                          Radio(
                                                            value: 1,
                                                            groupValue: id,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                radioButtonItem =
                                                                    '1';
                                                                id = 1;
                                                              });
                                                            },
                                                          ),
                                                          Text(
                                                            '1',
                                                            style:
                                                                new TextStyle(
                                                              fontSize: 17.0,
                                                            ),
                                                          ),
                                                          Radio(
                                                            value: 2,
                                                            groupValue: id,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                radioButtonItem =
                                                                    '2';
                                                                id = 2;
                                                              });
                                                            },
                                                          ),
                                                          Text(
                                                            '2',
                                                            style:
                                                                new TextStyle(
                                                              fontSize: 17.0,
                                                            ),
                                                          ),
                                                        ]),
                                                    Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: <Widget>[
                                                          Radio(
                                                            value: 3,
                                                            groupValue: id,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                radioButtonItem =
                                                                    '3';
                                                                id = 3;
                                                              });
                                                            },
                                                          ),
                                                          Text(
                                                            '3',
                                                            style:
                                                                new TextStyle(
                                                                    fontSize:
                                                                        17.0),
                                                          ),
                                                          Radio(
                                                            value: 4,
                                                            groupValue: id,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                radioButtonItem =
                                                                    '4';
                                                                id = 4;
                                                              });
                                                            },
                                                          ),
                                                          Text(
                                                            '4',
                                                            style:
                                                                new TextStyle(
                                                              fontSize: 17.0,
                                                            ),
                                                          ),
                                                          Radio(
                                                            value: 5,
                                                            groupValue: id,
                                                            onChanged: (val) {
                                                              setState(() {
                                                                radioButtonItem =
                                                                    '5';
                                                                id = 5;
                                                              });
                                                            },
                                                          ),
                                                          Text(
                                                            '5',
                                                            style:
                                                                new TextStyle(
                                                              fontSize: 17.0,
                                                            ),
                                                          ),
                                                        ]),
                                                  ],
                                                ))),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 270),
                                                  child: Text(
                                                    'Date of stroke onset',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 290),
                                                child: TextFormField(
                                                  readOnly: true,
                                                  maxLength: 15,
                                                  controller:
                                                      _dateOfStrokeOnset,
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xFF0D1832),
                                                  ),
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Pick date of stroke onset',
                                                    prefixIcon: Icon(
                                                      Icons
                                                          .calendar_today_outlined,
                                                      color: Color(0xFF0D1832),
                                                    ),
                                                    hintStyle: TextStyle(
                                                        color:
                                                            Color(0xFF0D1832),
                                                        fontSize: 13),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            1.0)),
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF0D1832),
                                                            )),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                  onTap: () async {
                                                    var date =
                                                        await showDatePicker(
                                                            context: context,
                                                            initialDate:
                                                                DateTime.now(),
                                                            firstDate:
                                                                DateTime(1900),
                                                            lastDate:
                                                                DateTime(2100));
                                                    _dateOfStrokeOnset.text =
                                                        date
                                                            .toString()
                                                            .substring(0, 10);
                                                    print(DateTime.now().year -
                                                        date.year);
                                                    setState(() {
                                                      _myAge =
                                                          DateTime.now().year -
                                                              date.year;
                                                      print(
                                                          'This is customer\'s age :' +
                                                              _myAge
                                                                  .toString());
                                                    });
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 370),
                                                  child: Text(
                                                    'Time of stroke onset',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 390),
                                                child: TextFormField(
                                                  readOnly: true,
                                                  maxLength: 20,
                                                  controller:
                                                      _timeOfStrokeOnset,
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xFF0D1832),
                                                  ),
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Pick admission date',
                                                    prefixIcon: Icon(
                                                      Icons.access_time,
                                                      color: Color(0xFF0D1832),
                                                    ),
                                                    hintStyle: TextStyle(
                                                        color:
                                                            Color(0xFF0D1832),
                                                        fontSize: 13),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .all(Radius
                                                                        .circular(
                                                                            1.0)),
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF0D1832),
                                                            )),
                                                    border:
                                                        OutlineInputBorder(),
                                                  ),
                                                  onTap: () async {
                                                    var date =
                                                        await showTimePicker(
                                                      context: context,
                                                      initialTime:
                                                          TimeOfDay.now(),
                                                    );
                                                    _timeOfStrokeOnset.text =
                                                        date.toString();
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 470),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Colors.orange,
                                                      radius: 25,
                                                      child:
                                                          FormFloatingActionButton(
                                                        color: Colors.orange,
                                                        icon:
                                                            Icons.arrow_forward,
                                                        controller: _controller,
                                                        loading: _nextStep,
                                                        onSubmit: () {
                                                          setState(() =>
                                                              _nextStep = true);
                                                          Future.delayed(
                                                                  Duration(
                                                                      seconds:
                                                                          5))
                                                              .then((_) {
                                                            if (mounted) {
                                                              setState(() {
                                                                _nextStep =
                                                                    false;
                                                                visible2 =
                                                                    !visible2;
                                                                visible3 = true;
                                                                steps =
                                                                    steps + 1;
                                                                //validateFirstStep();
                                                              });
                                                            }
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 470),
                                                  child: Align(
                                                    alignment:
                                                        Alignment.bottomLeft,
                                                    child: CircleAvatar(
                                                      backgroundColor:
                                                          Color(0xFF0D1832),
                                                      radius: 25,
                                                      child:
                                                          FormFloatingActionButton(
                                                        color:
                                                            Color(0xFF0D1832),
                                                        icon: Icons.arrow_back,
                                                        controller: _controller,
                                                        loading: _previousStep,
                                                        onSubmit: () {
                                                          setState(() =>
                                                              _previousStep =
                                                                  true);
                                                          Future.delayed(
                                                                  Duration(
                                                                      seconds:
                                                                          5))
                                                              .then((_) {
                                                            if (mounted) {
                                                              setState(() {
                                                                _previousStep =
                                                                    false;
                                                                visible2 =
                                                                    !visible2;
                                                                visible1 = true;
                                                                steps =
                                                                    steps - 1;
                                                                //validateFirstStep();
                                                              });
                                                            }
                                                          });
                                                        },
                                                      ),
                                                    ),
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 520),
                                                  child: SizedBox(
                                                    height: 10,
                                                  )),
                                            ],
                                          ),
                                        ))),
                              ),
                            )),
                        visible: visible2,
                      ),
                    ],
                  )),
            ],
          )),
    );
  }
}
