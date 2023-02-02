import 'package:flutter/material.dart';

enum SingingCharacter { female, male }

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  SingingCharacter? _character = SingingCharacter.male;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: RadioListTile<SingingCharacter>(
                title: const Text('Laki - laki'),
                value: SingingCharacter.male,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
            Expanded(
              child: RadioListTile<SingingCharacter>(
                title: const Text('Perempuan'),
                value: SingingCharacter.female,
                groupValue: _character,
                onChanged: (SingingCharacter? value) {
                  setState(() {
                    _character = value;
                  });
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}
