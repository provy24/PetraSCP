import 'package:flutter/material.dart';
import 'package:flutter_spinbox/flutter_spinbox.dart';
import 'package:form_floating_action_button/form_floating_action_button.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class ClinicalAssessment extends StatefulWidget {
  const ClinicalAssessment({Key key}) : super(key: key);

  @override
  _ClinicalAssessmentState createState() => _ClinicalAssessmentState();
}

class _ClinicalAssessmentState extends State<ClinicalAssessment> {
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

  List<String> admit = [
    'Admit to Stroke unit',
    'Nil per mouth until pass swallow evaluation',
    'Swallow evaluation, if passed start diet with\n patient upright during feeding.',
    'Place nasogastric tube (NGT) if patient fails\n swallow test; all medications to be delivered\n via NGT',
    'q4 hours vital signs and neuro-obs x 24 hours;\n then q8 hours vital signs and neuro-obs',
    'q4 hours glucometer with actrapid sliding scale,\n see stroke protocol for specifics',
    'q4 hour bed turn',
    'Place urinary catheter (Paul’s tubing) if patient\n not ambulant and unable to use urinal.',
    '30 degrees (for hemorrhage)',
    'Physiotherapy daily',
    'Screening	for	depression',
    'If	SPO2	is	less	than	94%,	give	O2',
    'Out of bed to chair TID after 48 hours'
  ];
  List<String> ward = [
    'Admit to Stroke unit',
  ];

  //Stroke Risk Factors
  List<String> firstRow = [
    'Age > 65',
    'Diabetes ',
    'Smoking        ',
  ];
  List<String> secondRow = [
    'Traurma',
    'Known history of hypertension',
  ];
  List<String> thirdRow = [
    'Syphilis ',
    'Connective tissue disease         ',
  ];
  List<String> forthRow = [
    'Prior Stroke',
    'A trial fibrillation                    ',
  ];
  List<String> fifthRow = [
    'Known history of hypertension',
    'Connective tissue disease',
  ];

  List<String> pulseList = [
    'Is pulse regular ?',
    'Corotid Bruits ?',
  ];
  List<String> Anymurmur = [
    'Any murmur',
  ];

  List<String> checkedItemList = ['Green', 'Yellow'];
  List<String> _status = ["Pending", "Released", "Blocked"];
  final FormFloatingActionButtonController _controller =
      FormFloatingActionButtonController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1832),
        title: Text(
          'Clinical Assessment',
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
                      Visibility(
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 5, top: 5),
                              child: Container(
                                height: MediaQuery.of(context).size.height,
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
                                                          top: 10),
                                                  child: Text(
                                                    'Stroke Unit Order Set Check all that apply',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                    textAlign: TextAlign.center,
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 30),
                                                child: GroupedCheckbox(
                                                    itemList: admit,
                                                    checkedItemList:
                                                        checkedItemList,
                                                    disabled: ['Black'],
                                                    onChanged: (itemList) {
                                                      setState(() {
                                                        print(
                                                            'SELECTED ITEM LIST $itemList');
                                                      });
                                                    },
                                                    orientation:
                                                        CheckboxOrientation
                                                            .VERTICAL,
                                                    checkColor: Colors.blue,
                                                    activeColor: Colors.red),
                                              ),
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
                                                    'Identified symptoms and medication',
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
                                                    'Time of arrival at unit',
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
                                                  maxLength: 20,
                                                  controller: _timeOfArrival,
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color(0xFF0D1832),
                                                  ),
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Pick time of arrival at unit',
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
                                                    _timeOfArrival.text =
                                                        date.toString();
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
                                                    'Symptoms and mode of onset ',
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
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  maxLength: 200,
                                                  maxLines: 5,
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText: 'Symptoms',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 310),
                                                  child: Text(
                                                    'Past medical and current medication',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 340),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  maxLines: 5,
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Past medical and current medication',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
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
                                                                visible3 =
                                                                    !visible3;
                                                                visible4 = true;
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
                                                                visible3 =
                                                                    !visible3;
                                                                visible2 = true;
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
                        visible: visible3,
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
                                                    'Stroke Rick Factors',
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
                                                    'Tick the box that apply',
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
                                                          top: 80),
                                                  child: Container(
                                                      color: Colors.white,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      child: Column(
                                                        children: [
                                                          SingleChildScrollView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                GroupedCheckbox(
                                                                    itemList:
                                                                        firstRow,
                                                                    checkedItemList:
                                                                        checkedItemList,
                                                                    disabled: [
                                                                      'Black'
                                                                    ],
                                                                    onChanged:
                                                                        (itemList) {
                                                                      setState(
                                                                          () {
                                                                        print(
                                                                            'SELECTED ITEM LIST $itemList');
                                                                      });
                                                                    },
                                                                    orientation:
                                                                        CheckboxOrientation
                                                                            .HORIZONTAL,
                                                                    checkColor:
                                                                        Colors
                                                                            .blue,
                                                                    activeColor:
                                                                        Colors
                                                                            .red),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          SingleChildScrollView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                GroupedCheckbox(
                                                                    itemList:
                                                                        secondRow,
                                                                    checkedItemList:
                                                                        checkedItemList,
                                                                    disabled: [
                                                                      'Black'
                                                                    ],
                                                                    onChanged:
                                                                        (itemList) {
                                                                      setState(
                                                                          () {
                                                                        print(
                                                                            'SELECTED ITEM LIST $itemList');
                                                                      });
                                                                    },
                                                                    orientation:
                                                                        CheckboxOrientation
                                                                            .HORIZONTAL,
                                                                    checkColor:
                                                                        Colors
                                                                            .blue,
                                                                    activeColor:
                                                                        Colors
                                                                            .red),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          SingleChildScrollView(
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                GroupedCheckbox(
                                                                    itemList:
                                                                        thirdRow,
                                                                    checkedItemList:
                                                                        checkedItemList,
                                                                    disabled: [
                                                                      'Black'
                                                                    ],
                                                                    onChanged:
                                                                        (itemList) {
                                                                      setState(
                                                                          () {
                                                                        print(
                                                                            'SELECTED ITEM LIST $itemList');
                                                                      });
                                                                    },
                                                                    orientation:
                                                                        CheckboxOrientation
                                                                            .HORIZONTAL,
                                                                    checkColor:
                                                                        Colors
                                                                            .blue,
                                                                    activeColor:
                                                                        Colors
                                                                            .red),
                                                              ],
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            12,
                                                                        top: 5),
                                                                child: Text(
                                                                  'Alcohol consumption (unit)',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      color: Color(
                                                                          0xFF0D1832),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              )),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            12,
                                                                        top: 5,
                                                                        right:
                                                                            12),
                                                                child: SpinBox(
                                                                  max: 10.0,
                                                                  value: 5.0,
                                                                  decimals: 1,
                                                                  step: 1,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    hintText:
                                                                        'Enter patient full name',
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFF0D1832),
                                                                      ),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFF0D1832),
                                                                      ),
                                                                    ),
                                                                    focusColor:
                                                                        Color(
                                                                            0xFF0D1832),
                                                                  ),
                                                                ),
                                                              )),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            12,
                                                                        top: 5),
                                                                child: Text(
                                                                  'Smoking packs per year',
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      color: Color(
                                                                          0xFF0D1832),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              )),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .only(
                                                                        left:
                                                                            12,
                                                                        top: 5,
                                                                        right:
                                                                            12),
                                                                child: SpinBox(
                                                                  max: 10.0,
                                                                  value: 5.0,
                                                                  decimals: 1,
                                                                  step: 1,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    hintText:
                                                                        'Enter patient full name',
                                                                    border:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFF0D1832),
                                                                      ),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Color(
                                                                            0xFF0D1832),
                                                                      ),
                                                                    ),
                                                                    focusColor:
                                                                        Color(
                                                                            0xFF0D1832),
                                                                  ),
                                                                ),
                                                              )),
                                                          Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      left: 12,
                                                                      top: 5,
                                                                      right:
                                                                          12),
                                                                  child:
                                                                      SizedBox(
                                                                    height: 20,
                                                                  )))
                                                        ],
                                                      ))),
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
                                                                visible4 =
                                                                    !visible4;
                                                                visible5 = true;
                                                                steps = steps++;
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
                                                                visible4 =
                                                                    !visible4;
                                                                visible3 = true;
                                                                steps = steps--;
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
                        visible: visible4,
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
                                                    'Past Medication History',
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
                                                    'Past Medication History & Current Medication',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 80),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  maxLines: 3,
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Past Medication History & Current Medication',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 170),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text('HR (min)'),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            width: 160,
                                                            child: SpinBox(
                                                              max: 10.0,
                                                              value: 5.0,
                                                              decimals: 1,
                                                              step: 1,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    'Enter patient full name',
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0xFF0D1832),
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0xFF0D1832),
                                                                  ),
                                                                ),
                                                                focusColor: Color(
                                                                    0xFF0D1832),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text(
                                                              'Temperature (deg)'),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            width: 160,
                                                            child: SpinBox(
                                                              max: 10.0,
                                                              value: 5.0,
                                                              decimals: 1,
                                                              step: 1,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    'Enter patient full name',
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0xFF0D1832),
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0xFF0D1832),
                                                                  ),
                                                                ),
                                                                focusColor: Color(
                                                                    0xFF0D1832),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 270),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Column(
                                                        children: [
                                                          Text(
                                                              'Respiratory Rate'),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            width: 160,
                                                            child: SpinBox(
                                                              max: 10.0,
                                                              value: 5.0,
                                                              decimals: 1,
                                                              step: 1,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    'Enter patient full name',
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0xFF0D1832),
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0xFF0D1832),
                                                                  ),
                                                                ),
                                                                focusColor: Color(
                                                                    0xFF0D1832),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Column(
                                                        children: [
                                                          Text('02 Saturation'),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Container(
                                                            width: 160,
                                                            child: SpinBox(
                                                              max: 10.0,
                                                              value: 5.0,
                                                              decimals: 1,
                                                              step: 1,
                                                              decoration:
                                                                  InputDecoration(
                                                                hintText:
                                                                    'Enter patient full name',
                                                                border:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0xFF0D1832),
                                                                  ),
                                                                ),
                                                                focusedBorder:
                                                                    OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Color(
                                                                        0xFF0D1832),
                                                                  ),
                                                                ),
                                                                focusColor: Color(
                                                                    0xFF0D1832),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 370),
                                                child: Column(
                                                  children: [
                                                    Text('Glucometer (mmol/L)'),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    Container(
                                                      child: SpinBox(
                                                        max: 10.0,
                                                        value: 5.0,
                                                        decimals: 1,
                                                        step: 1,
                                                        decoration:
                                                            InputDecoration(
                                                          hintText:
                                                              'Enter patient full name',
                                                          border:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF0D1832),
                                                            ),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: Color(
                                                                  0xFF0D1832),
                                                            ),
                                                          ),
                                                          focusColor:
                                                              Color(0xFF0D1832),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
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
                                                                visible5 =
                                                                    !visible5;
                                                                visible6 = true;
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
                                                                visible3 =
                                                                    !visible3;
                                                                visible2 = true;
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
                        visible: visible5,
                      ),
                      Visibility(
                        child: Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 100),
                              child: Container(
                                //height: 550,
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
                                                    'Stroke General Exam',
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
                                                    'General Exam',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 80),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  maxLines: 3,
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Patient General Exam',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 170),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: GroupedCheckbox(
                                                            itemList: pulseList,
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
                                                                Colors.white),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: GroupedCheckbox(
                                                            itemList: Anymurmur,
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
                                                                    .VERTICAL,
                                                            checkColor:
                                                                Colors.blue,
                                                            activeColor:
                                                                Colors.red),
                                                      )
                                                    ],
                                                  )),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 260),
                                                  child: Text('Heart Sounds')),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 280),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Patient General Exam',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 350),
                                                  child: Text('Character')),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 370),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Patient General Exam',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 450),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText: 'Appex positioon',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 520),
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
                                                                visible6 =
                                                                    !visible6;
                                                                visible7 = true;
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
                                                          top: 520),
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
                                                                visible6 =
                                                                    !visible6;
                                                                visible5 = true;
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
                                            ],
                                          ),
                                        ))),
                              ),
                            )),
                        visible: visible6,
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
                                                    'Respiratory System Detailed',
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
                                                    'Respiratory System',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5, right: 5, top: 80),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  maxLength: 200,
                                                  maxLines: 3,
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Write your findings about the patient\'s respiratory system',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 180),
                                                  child: Text(
                                                    'Abdomen ',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 200),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  maxLength: 200,
                                                  maxLines: 3,
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText: 'Abdomen',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 300),
                                                  child: Text(
                                                    'Neck stiffness',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 320),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        'Past medical and current medication',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 5,
                                                          right: 5,
                                                          top: 390),
                                                  child: Text(
                                                    'Kernig\'s Sign',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color:
                                                            Color(0xFF0D1832)),
                                                  )),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5,
                                                    right: 5,
                                                    top: 410),
                                                child: TextFormField(
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      color: Color(0xFF0D1832)),
                                                  controller: _symptoms,
                                                  cursorColor:
                                                      Color(0xFF0D1832),
                                                  decoration: InputDecoration(
                                                    hintText: 'Kernig\'s Sign',
                                                    border: OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            Color(0xFF0D1832),
                                                      ),
                                                    ),
                                                    focusColor:
                                                        Color(0xFF0D1832),
                                                  ),
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
                                                                visible3 =
                                                                    !visible3;
                                                                visible4 = true;
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
                                                                visible7 =
                                                                    !visible7;
                                                                visible6 = true;
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
                        visible: visible7,
                      ),
                    ],
                  )),
            ],
          )),
    );
  }
}
