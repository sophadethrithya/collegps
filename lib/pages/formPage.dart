import 'package:collegps/pages/getResult.dart';
import 'package:collegps/pages/ratingDecision.dart';
import 'package:flutter/material.dart';
import 'package:collegps/pages/usState.dart';
import 'package:share/share.dart';

enum SingingCharacter { lafayette, jefferson }
enum rating { stronglyDisagree, disagree, neutral, agree, stronglyAgree }

class formPage extends StatefulWidget {
  @override
  _formPageState createState() => _formPageState();
}

class _formPageState extends State<formPage> {
  int _value = 1;
  final WIPValue = TextEditingController();
  final GPAValue = TextEditingController();
  final SATValue = TextEditingController();
  final ACTValue = TextEditingController();
  String stateChosen = "AK - Alaska";
  String dropdownValue2 = "Null";
  var formRating = Map();
  var MBTIChosen = "INTJ";
  var MBTI = [
    "INTJ",
    "INTP",
    "ENTJ",
    "ENTP",
    "INFJ",
    "INFP",
    "ENFJ",
    "ENFP",
    "ISTJ",
    "ISTP",
    "ESFJ",
    "ESTP",
    "ISFJ",
    "ISFP",
    "ESTJ",
    "ESFP"
  ];
  var APScores = {
    'US History': "Null",
    'Biology': "Null",
    'Calculus AB': "Null",
    'Calculus BC': "Null",
    'Chemistry': "Null",
    'Chinese Language and Culture': "Null",
    'Computer Science A': "Null",
    'English Language and Composition': "Null",
    'Environmental Science': "Null",
    'European History': "Null",
    'Physics 1': "Null",
    'Physics 2': "Null",
    'Physics C': "Null",
  };
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for (int i = 1; i <= 5; i++) {
      formRating[i] = new ratingDecision(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 187, 222, 251),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28, right: 28, top: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Scores & GPA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withAlpha(170),
                      fontSize: 32,
                      fontFamily: "Ubuntu-Medium",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Please enter your GPA and the following applicable score.",
                    style: TextStyle(
                      fontFamily: "Roboto-Medium",
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("GPA",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Ubuntu-Medium",
                        fontSize: 20,
                      )),
                  TextField(
                    controller: GPAValue,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Enter GPA ",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("SAT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Ubuntu-Medium",
                        fontSize: 20,
                      )),
                  TextFormField(
                    controller: SATValue,
                    keyboardType: TextInputType.text,
                    validator: (String value) {
                      return value.length > 6
                          ? null
                          : 'Password should be more than 6 character';
                    },
                    decoration: InputDecoration(
                      hintText: "Enter SAT ",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("ACT",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Ubuntu-Medium",
                        fontSize: 20,
                      )),
                  TextFormField(
                    controller: ACTValue,
                    keyboardType: TextInputType.text,
                    validator: (String value) {
                      return value.length > 6
                          ? null
                          : 'Password should be more than 6 character';
                    },
                    decoration: InputDecoration(
                      hintText: "Enter ACT",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "AP Scores",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Ubuntu-Medium",
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Select the AP tests that you've taken",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: "Roboto-Medium",
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("US History"),
                      DropdownButton<String>(
                        value: APScores["US History"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["US History"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Biology"),
                      DropdownButton<String>(
                        value: APScores["Biology"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["Biology"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Calculus AB"),
                      DropdownButton<String>(
                        value: APScores["Calculus AB"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["Calculus AB"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Calculus BC"),
                      DropdownButton<String>(
                        value: APScores["Calculus BC"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["Calculus BC"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Chemistry"),
                      DropdownButton<String>(
                        value: APScores["Chemistry"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["Chemistry"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Chinese Language and Culture"),
                      DropdownButton<String>(
                        value: APScores["Chinese Language and Culture"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["Chinese Language and Culture"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Computer Science A"),
                      DropdownButton<String>(
                        value: APScores["Computer Science A"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["Computer Science A"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("English Language and Composition"),
                      DropdownButton<String>(
                        value: APScores["English Language and Composition"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["English Language and Composition"] =
                                newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Environmental Science"),
                      DropdownButton<String>(
                        value: APScores["Environmental Science"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["Environmental Science"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("European History"),
                      DropdownButton<String>(
                        value: APScores["European History"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["European History"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Physics 1"),
                      DropdownButton<String>(
                        value: APScores["Physics 1"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["Physics 1"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Physics 2"),
                      DropdownButton<String>(
                        value: APScores["Physics 2"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["Physics 2"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Physics C"),
                      DropdownButton<String>(
                        value: APScores["Physics C"],
                        icon: Icon(Icons.unfold_more),
                        iconSize: 24,
                        elevation: 16,
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String newValue) {
                          setState(() {
                            APScores["Physics C"] = newValue;
                          });
                        },
                        items: ["Null", "1", "2", "3", "4", "5"]
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Personality",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withAlpha(170),
                      fontSize: 32,
                      fontFamily: "Ubuntu-Medium",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Please select your MBTI type or take the small questionnaire.",
                    style: TextStyle(
                      fontFamily: "Roboto-Medium",
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("MBTI Type",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Ubuntu-Medium",
                        fontSize: 20,
                      )),
                  DropdownButton<String>(
                    value: MBTIChosen,
                    icon: Icon(Icons.unfold_more),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        MBTIChosen = newValue;
                      });
                    },
                    items: MBTI.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "State of Residence",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withAlpha(170),
                      fontSize: 32,
                      fontFamily: "Ubuntu-Medium",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Please choose of residence",
                    style: TextStyle(
                      fontFamily: "Roboto-Medium",
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DropdownButton<String>(
                    value: stateChosen,
                    icon: Icon(Icons.unfold_more),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        stateChosen = newValue;
                      });
                    },
                    items: usState()
                        .state
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Payment Plan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withAlpha(170),
                      fontSize: 32,
                      fontFamily: "Ubuntu-Medium",
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Please enter your financial payment plan",
                    style: TextStyle(
                      fontFamily: "Roboto-Medium",
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("WIP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Ubuntu-Medium",
                        fontSize: 20,
                      )),
                  TextFormField(
                    controller: WIPValue,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Planned Loan ",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    child: Text("Calculate"),
                    onPressed: () async {
                      List<String> apscore = List();
                      print("GPA: ${GPAValue.value.text.trim()}");
                      print("SAT: ${SATValue.value.text.trim()}");
                      print("ACT: ${ACTValue.value.text.trim()}");
                      print("History: ${APScores["US History"]}");
                      print("Biology: ${APScores["Biology"]}");
                      print("Calculus AB: ${APScores["Calculus AB"]}");
                      print("Calculus BC: ${APScores["Calculus BC"]}");
                      print("Chemistry: ${APScores["Chemistry"]}");
                      print(
                          "Chinese Language and Culture: ${APScores["Chinese Language and Culture"]}");
                      print(
                          "Computer Science A: ${APScores["Computer Science A"]}");
                      print(
                          "English Language and Composition: ${APScores["English Language and Composition"]}");
                      print(
                          "Environmental Science: ${APScores["Environmental Science"]}");
                      print(
                          "European History: ${APScores["European History"]}");
                      print("Physics 1: ${APScores["Physics 1"]}");
                      print("Physics 2: ${APScores["Physics 2"]}");
                      print("Physics C: ${APScores["Physics C"]}");
                      print("State Chosen: ${stateChosen}");
                      print("MBTI: $MBTIChosen");
                      print("WIP: ${WIPValue.value.text.trim()}");
                      String apscorelist = "";
                      APScores.forEach((k, v) {
                        if (v == "Null")
                          apscorelist += "NA,";
                        else
                          apscorelist += "$v,";
                      });
                      apscorelist =
                          apscorelist.substring(0, apscorelist.length - 1);
                      Map result = await collegeGPSHTTP().getResult(
                          GPAValue.value.text.trim(),
                          SATValue.value.text.trim(),
                          ACTValue.value.text.trim(),
                          apscorelist,
                          MBTI.indexOf(MBTIChosen).toString(),
                          stateChosen.substring(0, 2),
                          WIPValue.value.text.trim());
                      print('${result["name"]}');
                      if (result["name"] != null) {
                        await showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text(
                                    "CollegeGPS has recommended ${result["name"]} for you to apply"),
                                content: Image.network("${result["image"]}"),
                                actions: <Widget>[
                                  FlatButton(
                                    child: Text("Share"),
                                    onPressed: () => Share.share(
                                        "CollegeGPS has recommended ${result["name"]} for you to apply"),
                                  ),
                                  FlatButton(
                                    child: Text("Close"),
                                    onPressed: () => Navigator.pop(context),
                                  )
                                ],
                              );
                            });
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.blueAccent)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
