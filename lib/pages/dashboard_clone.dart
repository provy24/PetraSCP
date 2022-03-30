import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1),
            color: Colors.white.withOpacity(0.5),
          ),
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 50, right: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      child: Icon(
                        Icons.notifications_none_outlined,
                        color: Colors.orange,
                        size: 30,
                      ),
                    ),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Welcome back , Providence Chikukwa',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D1832),
                      ),
                    ),
                  )),
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextFormField(
                          style:
                              TextStyle(fontSize: 13, color: Color(0xFF0D1832)),
                          cursorColor: Color(0xFF0D1832),
                          decoration: InputDecoration(
                            hintText: 'Search for a patient',
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Color(0xFF0D1832),
                            ),
                            border: InputBorder.none,
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            focusColor: Colors.transparent,
                          ),
                        ),
                      )),
                    ),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Text(
                      'Health Professionals Available',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D1832),
                      ),
                    ),
                  )),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, left: 15),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          //alignment: Alignment.center,
                          margin: EdgeInsets.all(5),
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(
                                10), //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 7, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage("assets/dentist.png"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Doctors',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          //alignment: Alignment.center,
                          margin: EdgeInsets.all(5),
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(
                                10), //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 7, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage("assets/pharmacist.png"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Pharmacists',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          //alignment: Alignment.center,
                          margin: EdgeInsets.all(5),
                          height: 180,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(
                                10), //border corner radius
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), //color of shadow
                                spreadRadius: 2, //spread radius
                                blurRadius: 7, // blur radius
                                offset:
                                    Offset(0, 2), // changes position of shadow
                                //first paramerter of offset is left-right
                                //second parameter is top to down
                              ),
                              //you can set more BoxShadow() here
                            ],
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage:
                                      AssetImage("assets/dentist.png"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Doctors',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Text(
                      'Choose what you would like to do',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF0D1832),
                      ),
                    ),
                  )),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding:
                          const EdgeInsets.only(left: 10, top: 10, right: 10),
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Container(
                              //alignment: Alignment.center,
                              margin: EdgeInsets.all(5),
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(
                                    10), //border corner radius
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 2), // changes position of shadow
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
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage("assets/patient.png"),
                                ),
                                title: Text('Patients'),
                                trailing: Icon(Icons.arrow_forward_ios),
                                subtitle:
                                    Text('There are 100 doctors available'),
                              )),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 90),
                              child: Container(
                                //alignment: Alignment.center,
                                margin: EdgeInsets.all(5),
                                height: 70,
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.6),
                                  borderRadius: BorderRadius.circular(
                                      10), //border corner radius
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey
                                          .withOpacity(0.5), //color of shadow
                                      spreadRadius: 2, //spread radius
                                      blurRadius: 7, // blur radius
                                      offset: Offset(
                                          0, 2), // changes position of shadow
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
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                        AssetImage("assets/statistics.png"),
                                  ),
                                  title: Text('Statistics'),
                                  trailing: Icon(Icons.arrow_forward_ios),
                                  subtitle:
                                      Text('There are 100 doctors available'),
                                )),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(top: 175),
                            child: Container(
                              //alignment: Alignment.center,
                              margin: EdgeInsets.all(5),
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(
                                    10), //border corner radius
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 2), // changes position of shadow
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
                                  backgroundColor: Colors.transparent,
                                  backgroundImage: AssetImage("assets/ecg.png"),
                                ),
                                title: Text('Symptoms'),
                                trailing: Icon(Icons.arrow_forward_ios),
                                subtitle:
                                    Text('There are 100 doctors available'),
                              )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 260),
                            child: Container(
                              //alignment: Alignment.center,
                              margin: EdgeInsets.all(5),
                              height: 70,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.6),
                                borderRadius: BorderRadius.circular(
                                    10), //border corner radius
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.5), //color of shadow
                                    spreadRadius: 2, //spread radius
                                    blurRadius: 7, // blur radius
                                    offset: Offset(
                                        0, 2), // changes position of shadow
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
                                  backgroundColor: Colors.transparent,
                                  backgroundImage:
                                      AssetImage("assets/profile.png"),
                                ),
                                title: Text('My Profile'),
                                trailing: Icon(Icons.arrow_forward_ios),
                                subtitle:
                                    Text('There are 100 doctors available'),
                              )),
                            ),
                          ),
                        ],
                      ))),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Colors.white,
          selectedItemBorderColor: Colors.transparent,
          selectedItemBackgroundColor: Color(0xFF0D1832),
          selectedItemIconColor: Colors.orange,
          selectedItemLabelColor: Color(0xFF0D1832),
        ),
        selectedIndex: selectedIndex,
        onSelectTab: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: Icons.home_outlined,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: Icons.receipt_long_sharp,
            label: 'Patients',
          ),
          FFNavigationBarItem(
            iconData: Icons.pending_actions,
            label: 'Statistics',
          ),
          FFNavigationBarItem(
            iconData: Icons.person_pin_outlined,
            label: 'My Profile',
          ),
          FFNavigationBarItem(
            iconData: Icons.power_settings_new_sharp,
            label: 'Sign Out',
          ),
        ],
      ),
    );
  }
}
