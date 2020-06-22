class Convert {
  static convertDate(String date) {

    var response;

    if(date != null && date.toString()!="null"){
      response = DateTime.parse(date);
    }else{
      response =  DateTime.now();
    }
    return response;
  }

  static deConvertDate(DateTime date) {
    if (date == null)
      return null;
    else
      return date.toString();
  }
}
