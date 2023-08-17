import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/form_controller.dart';

class FormUi extends StatelessWidget {
  const FormUi({super.key});

  @override
  Widget build(BuildContext context) {
    FormController formController = Get.find();
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              const Text('Gender :- '),
              Obx(
                () => Radio(
                  value: formController.male.value,
                  groupValue: formController.gender.value,
                  onChanged: (value) {
                    formController.gender.value = value.toString();
                  },
                ),
              ),
              const Text('Male'),
              Obx(
                () => Radio(
                  value: formController.female.value,
                  groupValue: formController.gender.value,
                  onChanged: (value) {
                    formController.gender.value = value.toString();
                  },
                ),
              ),
              const Text('Female'),
            ],
          ),
          //   Row(
          //     children: [
          //       const Text('Hobbies :- '),
          //       Checkbox(
          //         value: value,
          //         onChanged: onChanged,
          //       ),
          //     ],
          //   )
        ],
      ),
    );
  }
}
