import 'package:flutter/cupertino.dart';
import 'package:dating_app/utils/profile.dart';

class User with ChangeNotifier {
  Profile userProfile;

  ///[userPreference] is of type profile and holds values for the user's ideal match
  Profile userPreference;

  User() {
    userProfile = Profile();
    userPreference = Profile();
  }

  void setFirstName(String text) {
    userProfile.firstname = text;
    notifyListeners();
  }

  String get getFirstname => userProfile.firstname;

  void setLastName(String text) {
    userProfile.lastName = text;
    notifyListeners();
  }

  String get getLastname => userProfile.lastName;

  void setDisplayName(String text) {
    userProfile.displayName = text;
    notifyListeners();
  }

  String get getDisplayName => userProfile.displayName;

  void setGender(String text) {
    userProfile.gender = text;
    notifyListeners();
  }

  String get getUserGender => userProfile.gender;

  void setDOB(int day, int month, int year) {
    userProfile.dob["Day"] = day;
    userProfile.dob["Month"] = month;
    userProfile.dob["Year"] = year;
    notifyListeners();
  }

  Map<String, int> get getUserDOB => userProfile.dob;

  void setCity(String city) {
    userProfile.city = city;
    notifyListeners();
  }

  String get getUserCity => userProfile.city;

  void setCountry(String country) {
    userProfile.country = country;
    notifyListeners();
  }

  String get getUserCountry => userProfile.country;

  void setContact(String text) {
    userProfile.contact = text;
    notifyListeners();
  }

  String get getUserContact => userProfile.contact;

  void setUserEducation(String text) {
    userProfile.education = text;
    notifyListeners();
  }

  String get getUserEducation => userProfile.education;

  void setUserOccupation(String text) {
    userProfile.occupation = text;
    notifyListeners();
  }

  String get getUserOccupation => userProfile.occupation;

  void setUserMaritalStatus(String text) {
    userProfile.maritalStatus = text;
    notifyListeners();
  }

  String get getUserMaritalStatus => userProfile.maritalStatus;

  void setUserNumberOfChildren(int num) {
    userProfile.numChildren = num;
    notifyListeners();
  }

  int get getUserNumChildren => userProfile.numChildren;

  void setUserInterestedIn(String key , String text) {
    userProfile.interestedIn[key] = text;
    notifyListeners();
  }

  Map<String, String> get getUserInterestedIn => userProfile.interestedIn;

  void setUserLookingFor(String key , String text) {
    userProfile.lookingFor[key] = text;
    notifyListeners();
  }

  Map <String,String> get getUserLookingFor => userProfile.lookingFor;

  void setAgePreference(int minAge, int maxAge) {
    userProfile.agePreference["minAge"] = maxAge;
    userProfile.agePreference["maxAge"] = maxAge;
    notifyListeners();
  }

  Map<String, int> get getUserAgePreference => userProfile.agePreference;

  void setDistanceRange(int start, int end) {
    userProfile.agePreference["start"] = start;
    userProfile.agePreference["end"] = end;
    notifyListeners();
  }

  Map<String, int> get getUserDistanceRange => userProfile.distanceRange;

  void setUserLifestyle(String key, String value) {
    //    //TODO: handle more lifestyle settings
    userProfile.lifestyle[key] = value;
    notifyListeners();
  }

  Map<String, String> get getUserLifestyle => userProfile.lifestyle;

  void setPersonality(String text) {
    userProfile.personality = text;
    notifyListeners();
  }

  String get getUserPersonality => userProfile.personality;

  void setMoreAbout(String text) {
    userProfile.moreAbout = text;
    notifyListeners();
  }

  String get getUserMoreAbout => userProfile.moreAbout;

  void setUsername(String text) {
    userProfile.username = text;
    notifyListeners();
  }

  String get getUsername => userProfile.username;

  void setPassword(String text) {
    userProfile.password = text;
    notifyListeners();
  }

  String get getUserPassword => userProfile.password;

  ///  Ideal match profile ...
  ///
  ///
  ///

  void setPreferenceEducation(String text) {
    userPreference.education = text;
    notifyListeners();
  }

  String get getPreferenceEducation => userPreference.education;

  void setPreferenceMaritalStatus(String text) {
    userPreference.maritalStatus = text;
    notifyListeners();
  }

  String get getPreferenceMaritalStatus => userPreference.maritalStatus;

  void setPreferenceNumberOfChildren(int num) {
    userPreference.numChildren = num;
    notifyListeners();
  }

  int get getPreferenceNumChildren => userPreference.numChildren;

  void setPreferenceLookingFor(String key, String text) {
    userPreference.lookingFor[key] = text;
    notifyListeners();
  }

  Map <String, String> get getPreferenceLookingFor => userPreference.lookingFor;

  void setPreferenceLifestyle(String key, String value) {
    //    //TODO: handle more lifestyle settings
    userPreference.lifestyle[key] = value;
    notifyListeners();
  }

  Map<String, String> get getPreferenceLifestyle => userPreference.lifestyle;

  void setPreferencePersonality(String text) {
    userPreference.personality = text;
    notifyListeners();
  }

  String get getPreferencePersonality => userPreference.personality;

  void setPreferenceMoreAbout(String text) {
    userPreference.moreAbout = text;
    notifyListeners();
  }

  String get getPreferenceMoreAbout => userPreference.moreAbout;
}
