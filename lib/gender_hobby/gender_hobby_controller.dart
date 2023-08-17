import 'package:get/get.dart';

class GenderHobbyController extends GetxController {
  RxString gender = 'gender'.obs;
  RxString male = 'male'.obs;
  RxString feMale = 'feMale'.obs;
  RxBool isCricket = false.obs;
  RxBool isFootball = false.obs;
  RxBool isSinging = false.obs;
  RxBool isSubmit = false.obs;
  RxList selectedHobby = [].obs;

  void genderMethod(String value) {
    isSubmit.value = false;
    gender.value = value;
  }

  void cricketMethod(bool value) {
    isSubmit.value = false;
    isCricket.value = value;
    isCricket.value == true
        ? selectedHobby.add('Cricket')
        : selectedHobby.remove('Cricket');
  }

  void footballMethod(bool value) {
    isSubmit.value = false;
    isFootball.value = value;
    isFootball.value == true
        ? selectedHobby.add('Football')
        : selectedHobby.remove('Football');
  }

  void singingMethod(bool value) {
    isSubmit.value = false;
    isSinging.value = value;
    isSinging.value == true
        ? selectedHobby.add('Singing')
        : selectedHobby.remove('Singing');
  }

  void submitMethod() {
    isSubmit.value = true;
  }

  void clearMethod() {
    isCricket.value = false;
    isFootball.value = false;
    isSinging.value = false;
  }
}
