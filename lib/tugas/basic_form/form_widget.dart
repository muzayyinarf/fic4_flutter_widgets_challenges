import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  bool isOn = false;
  var selected = 'Flutter';
  final dropdownList = ['Flutter', 'Dart', 'Java', 'Scala', 'Python'];

  var sex = 'Male';
  var gender = 'Female';
  var isChecked = false;
  TextEditingController textController = TextEditingController(text: 'Sabrina');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JagoFlutter - Form"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                maxLength: 20,
                controller: textController,
                decoration: const InputDecoration(
                    labelText: 'Name',
                    labelStyle: TextStyle(
                      color: Colors.grey,
                    ),
                    helperText: "What's your name?"),
                onChanged: (value) {},
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text("Your Favorite Language:"),
                  const SizedBox(
                    width: 8,
                  ),
                  DropdownButton(
                    value: selected,
                    icon: const Icon(Icons.arrow_downward),
                    items: dropdownList
                        .map(
                          (e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ),
                        )
                        .toList(),
                    onChanged: (value) {
                      setState(() {
                        if (value != null) selected = value;
                      });
                    },
                  ),
                ],
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  List<String> itemStringList = ["Female", "Male"];

                  return FormField(
                    initialValue: false,
                    enabled: true,
                    builder: (field) {
                      return InputDecorator(
                        decoration: InputDecoration(
                          labelText: "Gender",
                          errorText: field.errorText,
                          helperText: "Your gender",
                        ),
                        child: DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(
                              isExpanded: true,
                              value: gender,
                              icon: Icon(
                                Icons.arrow_drop_down_circle_outlined,
                                size: 24,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .color,
                              ),
                              iconSize: 16,
                              elevation: 16,
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontSize,
                                fontFamily: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .fontFamily,
                                color: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .color,
                              ),
                              underline: Container(
                                height: 0,
                                color: Colors.grey[300],
                              ),
                              items: itemStringList.map((e) {
                                return DropdownMenuItem(
                                    value: e,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(e),
                                    ));
                              }).toList(),
                              onChanged: (value) {
                                gender = value!;
                                setState(() {});
                              },
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              Row(
                children: [
                  const Text('Connect Instagram'),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Switch(
                    value: isOn,
                    onChanged: (value) {
                      setState(() {
                        isOn = value;
                      });
                    },
                  )
                ],
              ),
              Row(
                children: [
                  const Text('Gender : '),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'male',
                        groupValue: sex,
                        onChanged: (value) {
                          setState(() {
                            sex = value.toString();
                          });
                        },
                      ),
                      const Text('Male')
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                        value: 'female',
                        groupValue: sex,
                        onChanged: (value) {
                          setState(() {
                            sex = value.toString();
                          });
                        },
                      ),
                      const Text('Female')
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: isChecked,
                    activeColor: Colors.blue,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  const Text(
                    'Agree Term & Conditions',
                    style: TextStyle(decoration: TextDecoration.underline),
                  )
                ],
              ),
              InkWell(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  debugPrint('pickedDate: $pickedDate');
                },
                child: TextFormField(
                  initialValue: '2022-08-01',
                  maxLength: 20,
                  enabled: false,
                  decoration: const InputDecoration(
                      labelText: 'Birth Date',
                      labelStyle: TextStyle(
                        color: Colors.blueGrey,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueGrey),
                      ),
                      suffixIcon: Icon(Icons.date_range),
                      helperText: "What's your birth date?"),
                  onChanged: (value) {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
