import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:intl/intl.dart';



class from extends StatefulWidget {
  @override
  CompleteFormState createState() {
    return CompleteFormState();
  }
}

class CompleteFormState extends State<from> {
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final _formKey = GlobalKey<FormBuilderState>();
  bool _ageHasError = false;
  bool _genderHasError = false;

  final ValueChanged _onChanged = (val) => print(val);
  var genderOptions = ['Male', 'Female', 'Other'];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                FormBuilder(
                  key: _formKey,
                  // enabled: false,
                  autovalidateMode: AutovalidateMode.disabled,
                  initialValue: {
                    'movie_rating': 5,
                    'best_language': 'Dart',
                    'age': '13',
                    'gender': 'Male'
                  },
                  skipDisabled: true,
                  child: Column(
                    children: <Widget>[



                      FormBuilderSlider(
                        name: 'slider',
                        validator: FormBuilderValidators.compose([
                          FormBuilderValidators.min(context, 6),
                        ]),
                        onChanged: _onChanged,
                        min: 0.0,
                        max: 10.0,
                        initialValue: 7.0,
                        divisions: 20,
                        activeColor: Colors.teal,
                        inactiveColor: Colors.teal[100],
                        decoration: const InputDecoration(
                          labelText: 'Quantity',
                        ),
                      ),


                      FormBuilderRadioGroup<String>(
                        decoration: const InputDecoration(
                          labelText: 'My chosen language',
                        ),
                        name: 'best_language',
                        onChanged: _onChanged,
                        validator: FormBuilderValidators.compose(
                            [FormBuilderValidators.required(context)]),
                        options: [
                          'Premium service ',
                              'Insurance',
                              'Quality',
                              'Money back',
                              'Warning'

                          // 'Dart', 'Kotlin', 'Java', 'Swift', 'Objective-C'

                        ]
                            .map((lang) => FormBuilderFieldOption(
                          value: lang,
                          child: Text(lang),
                        ))
                            .toList(growable: false),
                        controlAffinity: ControlAffinity.trailing,
                      ),

                      FormBuilderSwitch(
                        title: const Text('I Accept T&C'),
                        name: 'accept_terms_switch',
                        initialValue: true,
                        onChanged: _onChanged,
                      ),

                      FormBuilderRating(
                        filledColor: Colors.teal,
                        decoration:
                        const InputDecoration(labelText: 'Rate'),
                        name: 'rate',
                        iconSize: 30.0,
                        initialValue: 2.0,
                        max: 4,
                        onChanged: _onChanged,
                      ),
                      Container(
                        width: 200,
                        child: FormBuilderCheckboxGroup(
                          decoration: const InputDecoration(
                              labelText: 'Services'),
                          name: 'languages',
                          initialValue: const ['Dart'],
                          options: const [
                            FormBuilderFieldOption(value: 'Premium service '),
                            FormBuilderFieldOption(value: 'Insurance'),
                            FormBuilderFieldOption(value: 'Quality'),
                            FormBuilderFieldOption(value: 'Money back'),
                            FormBuilderFieldOption(value: 'Warning'),
                          ],
                          onChanged: _onChanged,
                          separator: const VerticalDivider(
                            width: 10,
                            thickness: 5,
                            color: Colors.red,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                MaterialButton(
                  color: Theme.of(context).accentColor,
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                 Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}