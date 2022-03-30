import 'package:flutter/material.dart';
import 'package:form_floating_action_button/form_floating_action_button.dart';

class NeurologicalExam extends StatefulWidget {
  const NeurologicalExam({Key key}) : super(key: key);

  @override
  _NeurologicalExamState createState() => _NeurologicalExamState();
}

class _NeurologicalExamState extends State<NeurologicalExam> {
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

  double posx = 100.0;
  double posy = 100.0;

  bool isBetween(num from, num to) {
    return from < 176 && 192 < to;
  }

  var paint = Paint()
    ..color = Colors.teal
    ..strokeWidth = 15;

  List sensory = [];
  String pinPick = '';
  void onTapDown(BuildContext context, TapDownDetails details) {
    print('${details.globalPosition}');
    final RenderBox box = context.findRenderObject();
    final Offset localOffset = box.globalToLocal(details.globalPosition);
    setState(() {
      posx = localOffset.dx;
      posy = localOffset.dy;

      if ((176 <= posx && posx <= 254) && (330 <= posy && posy <= 360)) {
        pinPick = 'Pectoralis Major';
        if (sensory.contains(pinPick)) {
          print(pinPick + ' already exist');
        }
        if (!sensory.contains(pinPick)) {
          print('Between');
          sensory.insert(0, pinPick);
          print(sensory);
        }
      } else {
        print('Not between');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF0D1832),
        title: Text(
          'Neurological Examination',
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
                                left: 20, top: 20, right: 20),
                            child: Text(
                              'Higher Functions: Describe state of awareness, orientation in time and place, '
                              'attention and assess for aphasia, neglect',
                              style: TextStyle(
                                fontSize: 13,
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
                                  left: 15, right: 15, top: 70),
                              child: RefreshIndicator(
                                child: ListView(
                                  physics: const ClampingScrollPhysics(
                                      parent: AlwaysScrollableScrollPhysics()),
                                  children: [
                                    GestureDetector(
                                      child: Container(
                                        height: 620,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.9),
                                          image: DecorationImage(
                                            colorFilter: new ColorFilter.mode(
                                                Colors.black.withOpacity(0.6),
                                                BlendMode.dstATop),
                                            image:
                                                AssetImage("assets/front.png"),
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                        child: Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                              padding: const EdgeInsets.all(20),
                                              child: Text(
                                                'Sensory: Pin Pick   [ Front ]',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Color(0xFF0D1832),
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            )),
                                      ),
                                      onTapDown: (TapDownDetails details) =>
                                          onTapDown(context, details),
                                    )
                                  ],
                                ),
                                onRefresh: () async {
                                  await Future.delayed(Duration(seconds: 2));
                                  setState(() {
                                    print('human body - front');
                                    visible1 = !visible1;
                                    visible2 = true;
                                  });
                                },
                              )),
                        ),
                        visible: visible1,
                      ),
                      Visibility(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 15, top: 70),
                              child: RefreshIndicator(
                                child: ListView(
                                  //scrollDirection: Axis.horizontal,
                                  physics: const ClampingScrollPhysics(
                                      parent: AlwaysScrollableScrollPhysics()),
                                  children: [
                                    Container(
                                      height: 620,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.9),
                                        image: DecorationImage(
                                          colorFilter: new ColorFilter.mode(
                                              Colors.black.withOpacity(0.6),
                                              BlendMode.dstATop),
                                          image: AssetImage("assets/back.png"),
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                            padding: const EdgeInsets.all(20),
                                            child: Text(
                                              'Sensory: Pin Pick   [ Back ]',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF0D1832),
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          )),
                                    ),
                                  ],
                                ),
                                onRefresh: () async {
                                  await Future.delayed(Duration(seconds: 2));
                                  setState(() {
                                    print('human body - back');
                                    visible2 = !visible2;
                                    visible1 = true;
                                  });
                                },
                              )),
                        ),
                        visible: visible2,
                      ),
                    ],
                  )),
            ],
          )),
    );
  }
}
