import 'package:collegps/pages/formPage.dart';

class ratingDecision{
  rating ratingChoosen;
  int ratingGroup;
  ratingDecision(int questionNum)
  {
    ratingChoosen = rating.stronglyAgree;
    ratingGroup = questionNum;
  }
}