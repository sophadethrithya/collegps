import 'package:flutter/material.dart';
import 'package:collegps/pages/usState.dart';
enum SingingCharacter { lafayette, jefferson }
enum rating { stronglyDisagree, disagree, neutral, agree, stronglyAgree }

class formPage extends StatefulWidget {
  @override
  _formPageState createState() => _formPageState();
}

class _formPageState extends State<formPage> {
  int _value = 1;

  rating ratingChoosen = rating.stronglyDisagree;
  String dropdownValue = "AK - Alaska";
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
                  TextFormField(
                    keyboardType: TextInputType.numberWithOptions(
                        signed: false, decimal: true),
                    validator: (String value) {
                      return value.length > 6
                          ? null
                          : 'Password should be more than 6 character';
                    },
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
                    keyboardType: TextInputType.numberWithOptions(
                        signed: false, decimal: true),
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
                    keyboardType: TextInputType.numberWithOptions(
                        signed: false, decimal: true),
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
                  Wrap(
                    spacing: 5,
                    children: <Widget>[
                      ChoiceChip(
                        label: Text("US History"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("Biology"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("Calculus AB"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("Calculus BC"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("Chemistry"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("Chinese Language and Culture"),
                        selected: true,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("Computer Science A"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("English Language and Composition"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("English Literature and Composition"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("Environmental Science"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("European History"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("Physics 1"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("Physics 2"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
                      ),
                      ChoiceChip(
                        label: Text("Physics C"),
                        selected: false,
                        onSelected: (bool selected) {
                          print('$selected');
                        },
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
                    "Please enter your MBTI type or take the small questionnaire.",
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
                  TextFormField(
                    keyboardType: TextInputType.numberWithOptions(
                        signed: false, decimal: true),
                    validator: (String value) {
                      return value.length > 6
                          ? null
                          : 'Password should be more than 6 character';
                    },
                    decoration: InputDecoration(
                      hintText: "Please enter your MBTI Type ",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(" or Questionnaire",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Ubuntu-Medium",
                        fontSize: 20,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You like socializing in public.",
                    style: TextStyle(fontSize: 20),
                  ),
                  Column(
                    children: <Widget>[
                      RadioListTile<rating>(
                        title: const Text('Strongly Disagree'),
                        value: rating.stronglyDisagree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Disagree'),
                        value: rating.disagree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Neutral'),
                        value: rating.neutral,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Agree'),
                        value: rating.agree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Strongly Aagree'),
                        value: rating.stronglyAgree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You are more interested in dealing with numbers than words.",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    children: <Widget>[
                      RadioListTile<rating>(
                        title: const Text('Strongly Disagree'),
                        value: rating.stronglyDisagree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Disagree'),
                        value: rating.disagree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Neutral'),
                        value: rating.neutral,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Agree'),
                        value: rating.agree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Strongly Aagree'),
                        value: rating.stronglyAgree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You are more interested in words than numbers.",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    children: <Widget>[
                      RadioListTile<rating>(
                        title: const Text('Strongly Disagree'),
                        value: rating.stronglyDisagree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Disagree'),
                        value: rating.disagree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Neutral'),
                        value: rating.neutral,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Agree'),
                        value: rating.agree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Strongly Aagree'),
                        value: rating.stronglyAgree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Creativity matters more than hard knowledge in your class.",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    children: <Widget>[
                      RadioListTile<rating>(
                        title: const Text('Strongly Disagree'),
                        value: rating.stronglyDisagree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Disagree'),
                        value: rating.disagree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Neutral'),
                        value: rating.neutral,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Agree'),
                        value: rating.agree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Strongly Aagree'),
                        value: rating.stronglyAgree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "You think a lot before you speak.",
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  Column(
                    children: <Widget>[
                      RadioListTile<rating>(
                        title: const Text('Strongly Disagree'),
                        value: rating.stronglyDisagree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Disagree'),
                        value: rating.disagree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Neutral'),
                        value: rating.neutral,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Agree'),
                        value: rating.agree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                      RadioListTile<rating>(
                        title: const Text('Strongly Aagree'),
                        value: rating.stronglyAgree,
                        groupValue: ratingChoosen,
                        onChanged: (rating value) {
                          setState(() {
                            ratingChoosen = value;
                          });
                        },
                      ),
                    ],
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
                    value: dropdownValue,
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
                        dropdownValue = newValue;
                      });
                    },
                    items: usState().state
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    })
                        .toList(),
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
                    keyboardType: TextInputType.numberWithOptions(
                        signed: false, decimal: true),
                    validator: (String value) {
                      return value.length > 6
                          ? null
                          : 'Password should be more than 6 character';
                    },
                    decoration: InputDecoration(
                      hintText: "Planned Loan ",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    child: Text("Calculate"),
                    onPressed: (){},
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
