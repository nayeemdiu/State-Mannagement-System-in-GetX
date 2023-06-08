import 'package:get/get.dart';

class Languages extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_Us' : {

      'massage' : 'what is your name',
      'name'    : 'Sk Nayeem Ur Rahman'
    },
    'ur_Arabic' : {

      'massage' : 'هذا اسمك',
      'name'    : 'السيخ نيام حرب الرحمن'
    },
  };
  }