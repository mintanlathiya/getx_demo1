import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo1/gender_hobby/gender_hobby_controller.dart';

class GenderHobbyUiDemo extends StatelessWidget {
  const GenderHobbyUiDemo({super.key});

  @override
  Widget build(BuildContext context) {
    GenderHobbyController genderHobbyController = Get.find();
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Row(
              children: [
                const Text('Gender : '),
                const Text('Male'),
                Radio(
                  value: genderHobbyController.male.value,
                  groupValue: genderHobbyController.gender.value,
                  onChanged: (value) {
                    genderHobbyController.genderMethod(value!);
                  },
                ),
                const Text('FeMale'),
                Radio(
                  value: genderHobbyController.feMale.value,
                  groupValue: genderHobbyController.gender.value,
                  onChanged: (value) {
                    genderHobbyController.genderMethod(value!);
                  },
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Text('Hobby : '),
              const Text('Cricket'),
              Obx(
                () => Checkbox(
                  value: genderHobbyController.isCricket.value,
                  onChanged: (value) {
                    genderHobbyController.cricketMethod(value!);
                  },
                ),
              ),
              const Text('Football'),
              Obx(
                () => Checkbox(
                  value: genderHobbyController.isFootball.value,
                  onChanged: (value) {
                    genderHobbyController.footballMethod(value!);
                  },
                ),
              ),
              const Text('Singing'),
              Obx(
                () => Checkbox(
                  value: genderHobbyController.isSinging.value,
                  onChanged: (value) {
                    genderHobbyController.singingMethod(value!);
                  },
                ),
              ),
            ],
          ),
          MaterialButton(
            onPressed: () {
              genderHobbyController.submitMethod();
              genderHobbyController.clearMethod();
            },
            child: const Text('Submit'),
          ),
          Obx(
            () => genderHobbyController.isSubmit.value == true
                ? Container(
                    height: 100,
                    width: 200,
                    color: Colors.amber,
                    child: Column(
                      children: [
                        Text('Gender : ${genderHobbyController.gender.value}'),
                        Text('Hobby : ${genderHobbyController.selectedHobby}'),
                      ],
                    ),
                  )
                : const SizedBox(),
          )
        ],
      ),
    );
  }
}
