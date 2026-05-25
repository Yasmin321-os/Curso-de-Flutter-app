import 'package:flutter/material.dart';

class SecondClass extends StatefulWidget {
  const SecondClass({super.key});

  @override
  State<SecondClass> createState() => _SecondClassState();
}

class _SecondClassState extends State<SecondClass> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  int age = 0;
  String password = '';
  String maritalStatus = 'Casada';
  bool termsChecked = true;
  String selectedLocation = 'Oaxaca';

  final List<String> locations = ['Oaxaca', 'Veracruz', 'Chiapas', 'Durango'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(40.0),
        //   child: Text('This is a text in appbar'),
        // ),
      ),
      body: Material(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Ingrese su nombre',
                      hintText: 'nombre',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese su nombre';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        name = value ?? '';
                      });
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Edad',
                      labelText: 'Ingrese su edad',
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor ingrese su edad';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      setState(() {
                        age = int.tryParse(value ?? '') ?? 0;
                      });
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Contraseña',
                      labelText: 'Ingrese su contraseña',
                    ),
                  ),
                  DropdownButton<String>(
                    hint: const Text('Por favor elija la ciudad donde vive'),
                    value: selectedLocation,
                    items: locations.map((location) {
                      return DropdownMenuItem<String>(
                        value: location,
                        child: Text(location),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedLocation = newValue ?? 'Oaxaca';
                      });
                    },
                  ),
                  RadioGroup<String>(
                    groupValue: maritalStatus,
                    onChanged: (String? value) {
                      setState(() {
                        maritalStatus = value ?? 'Single';
                      });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                          child: RadioListTile<String>(
                            title: const Text('Soltera'),
                            value: 'Single',
                          ),
                        ),
                        Expanded(
                          child: RadioListTile<String>(
                            title: const Text('Casada'),
                            value: 'Married',
                          ),
                        ),
                      ],
                    ),
                  ),
                  CheckboxListTile(
                    value: termsChecked,
                    onChanged: (value) {
                      setState(() {
                        termsChecked = value ?? false;
                      });
                    },
                    title: const Text(
                      'Suscribirse al periódico y artículos relacionados',
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    onPressed: () {
                      _submitForm();
                    },
                    child: const Text('Registrar'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      debugPrint('Name: $name');
      debugPrint('Age: $age');
      debugPrint('Password: $password');
      debugPrint('City: ${selectedLocation ?? 'Not selected'}');
      debugPrint('Marital Status: $maritalStatus');
      debugPrint('Terms Checked: $termsChecked');
    }
  }
}
