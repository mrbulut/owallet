
import 'package:shared_preferences/shared_preferences.dart';

class Cache{
  SharedPreferences prefs ;


  getData(String key) async {
    prefs = await SharedPreferences.getInstance();

    return  prefs.getString(key);
  }

  Future<bool> setData(String key,String value) async{
    prefs = await SharedPreferences.getInstance();

    return await prefs.setString(key,value);
  }

  Future<bool> clearData(String key) async{
    prefs = await SharedPreferences.getInstance();
    return await prefs.remove(key);
  }

}