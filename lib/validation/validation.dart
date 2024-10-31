import 'package:get/get.dart';

class Validation {
  //05 52 90 62 57
  String? validateInputNum(String? value) {
    //big
    if (value!.isEmpty) {
      return 'V3'.tr;
    }
    //big
    if (value.length > 10) {
      return 'V1'.tr;
    }
    //less
    if (value.length < 9) {
      return 'V2'.tr;
    }
    if (value.isNum &&
        value.substring(0, 2) != '05' &&
        value.substring(0, 2) != '06' &&
        value.substring(0, 2) != '07' &&
        value.substring(0, 1) != '5' &&
        value.substring(0, 1) != '6' &&
        value.substring(0, 1) != '7') {
      return 'V0'.tr;
    }
    return null;
  }

  //
  String? validateSelect1(String? value) {
    if (value!.length > 2) {
      return 'Please enter some text XX';
    }
    return null;
  }

  //
  String? validateFirName(String? value) {
    //big
    if (value!.isEmpty) {
      return 'V4'.tr;
    }
    //"يجب أن يكون العدد أقل من 11",
    if (value.length > 55) {
      return 'V5'.tr;
    }
    //"V2": "يجب أن يكون العدد أكبر من 9",
    if (value.length < 2) {
      return 'V6'.tr;
    }
    return null;
    //
  }

  String? validateSecName(String? value) {
    //big
    if (value!.isEmpty) {
      return 'V7'.tr;
    }
    //"يجب أن يكون العدد أقل من 11",
    if (value.length > 55) {
      return 'V8'.tr;
    }
    //"V2": "يجب أن يكون العدد أكبر من 9",
    if (value.length < 2) {
      return 'V9'.tr;
    }
    return null;
  }

  //
  String? validateBrand(String? value) {
    //big
    if (value!.isEmpty) {
      return 'V11'.tr;
    }

    return null;
  }

  String? validateModel(String? value) {
    //big
    if (value!.isEmpty) {
      return 'V12'.tr;
    }

    return null;
  }

  String? validatePlate(String? value) {
    //big
    if (value!.isEmpty) {
      return 'V13'.tr;
    }

    return null;
  }

  String? validateYear(String? value) {
    //big
    if (value!.isEmpty) {
      return 'V14'.tr;
    }

    return null;
  }

  //
  String? validateSelectSex(Object? value) {
    if (value == '31'.tr) {
      return 'V10'.tr;
    }
    return null;
  }

  String? validateSelectColor(Object? value) {
    if (value == '44'.tr) {
      return 'V15'.tr;
    }
    return null;
  }
}
