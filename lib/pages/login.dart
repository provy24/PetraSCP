import 'package:PetraSCP/pages/nurseDash.dart';
import 'package:flutter/material.dart';
import 'package:grouped_checkbox/grouped_checkbox.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;
  List<String> remember = [
    'Remember me',
  ];
  List<String> checkedItemList = [];

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
          child: Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white.withOpacity(0.5),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Center(
                                    child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 5,
                                            right: 10,
                                            top: 15,
                                            bottom: 20),
                                        child: CircleAvatar(
                                          radius: 65,
                                          backgroundColor: Color(0xFF0D1832),
                                          child: Center(
                                            child: Text(
                                              'PetraSOP',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ))),
                                Center(
                                    child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 5, right: 10, top: 15, bottom: 20),
                                  child: Text(
                                    'Login To Your Petra Account ',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Color(0xFF0D1832),
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 5, left: 40),
                                    child: Text(
                                      'Username',
                                      style: TextStyle(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 3, bottom: 5, left: 30, right: 30),
                                  child: TextFormField(
                                    style: TextStyle(
                                        fontSize: 13, color: Color(0xFF0D1832)),
                                    maxLength: 30,
                                    cursorColor: Color(0xFF0D1832),
                                    decoration: InputDecoration(
                                        hintText: 'Enter your username',
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0xFF0D1832),
                                          ),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.account_circle,
                                          color: Color(0xFF0D1832),
                                        ),
                                        border: OutlineInputBorder()),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 40),
                                    child: Text(
                                      'Password',
                                      style: TextStyle(
                                        color: Color(0xFF0D1832),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 3, bottom: 10, left: 30, right: 30),
                                  child: TextFormField(
                                    style: TextStyle(
                                        fontSize: 13, color: Color(0xFF0D1832)),
                                    maxLength: 30,
                                    cursorColor: Color(0xFF0D1832),
                                    decoration: InputDecoration(
                                      hintText: 'Enter your password',
                                      prefixIcon: Icon(
                                        Icons.security,
                                        color: Color(0xFF0D1832),
                                      ),
                                      suffixIcon: Icon(
                                        Icons.remove_red_eye,
                                        color: Color(0xFF0D1832),
                                      ),
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF0D1832),
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF0D1832),
                                        ),
                                      ),
                                      focusColor: Color(0xFF0D1832),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10, left: 30, right: 30),
                                  child: Container(
                                    height: 52,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF0D1832),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                        child: GestureDetector(
                                      child: Text(
                                        'Login',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orange),
                                      ),
                                      onTap: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (_) => Dashboard()));
                                      },
                                    )),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 5, bottom: 5, left: 20),
                                    child: GroupedCheckbox(
                                        itemList: remember,
                                        checkedItemList: checkedItemList,
                                        disabled: ['Black'],
                                        onChanged: (itemList) {
                                          setState(() {
                                            print(
                                                'SELECTED ITEM LIST $itemList');
                                          });
                                        },
                                        orientation:
                                            CheckboxOrientation.HORIZONTAL,
                                        checkColor: Colors.blue,
                                        activeColor: Colors.red),
                                  ),
                                ),
                                Center(
                                  child: Icon(
                                    Icons.fingerprint_outlined,
                                    size: 80,
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  ),
                ),
              ))),
    );
  }
}
