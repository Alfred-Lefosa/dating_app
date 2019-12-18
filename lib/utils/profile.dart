class Profile {
  //basic information
  String firstname;
  String lastName;
  String displayName;
  String gender;

  Map<String, int> dob = {"Day": 0, "Month": 0, "year": 0};

  String city;
  String country;
  String contact;

  //login
  String username;
  String password;
  //others
  String education;
  String occupation;
  String maritalStatus;
  int numChildren;
  Map <String,String> interestedIn = {
    "Women" : "",
    "Men" : ""
  };
  Map <String,String> lookingFor = {
    "Short-term Dating" : "",
    "Long-term Relationship" : "",
    "Open to Anything" : "",
    "Own Words" : ""
  };

  //search filters
  Map<String, int> agePreference = {"minAge": 18, "maxAge": 100};

  ///[distanceRange] measured in Km
  Map<String, int> distanceRange = {
    "start": 0,
    "end": 50,
  };
  //TODO: Add more search filters

  Map<String, String> lifestyle = {
    "Drinking": "",
    "Smoking": "",
    "Exercise": "",
    "Indoors": "",
    "Outdoors": "",
    //TODO: Add fields for More activities...
  };

  String personality;
  String moreAbout;

  Profile();
}

//TODO: add age preference setting to registration
//TODO: handle user photos and introduction message
