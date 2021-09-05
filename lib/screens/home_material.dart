import 'package:flutter/material.dart';
import 'package:hilfe/models/user.dart';
import 'package:hilfe/prediction_core.dart';

class HomeMaterial extends StatefulWidget {
  @override
  _HomeMaterialState createState() => _HomeMaterialState();
}

class _HomeMaterialState extends State<HomeMaterial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Connect To Doctor')),
      body: Container(
          child: CustomView()
        ),
    );
  }

}
class CustomView extends StatefulWidget {

  CustomViewWidget createState() => CustomViewWidget();

}

class CustomViewWidget extends State {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Center(
          child: Builder(
            builder: (context) => Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'First name'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your first name';
                        }
                      },
                      onSaved: (val) => setState(() => _user.firstName = val),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Last name'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your last name.';
                        }
                      },
                      onSaved: (val) => setState(() => _user.lastName = val),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Phone Number'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your phone number';
                        }
                      },
                      onSaved: (val) => setState(() => _user.phonenumber = val as int),
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'City'),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please enter your city';
                        }
                      },
                      onSaved: (val) => setState(() => _user.city = val),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
                      child: Text('Interests'),
                    ),
                    CheckboxListTile(
                        title: const Text('Itching'),
                        value: _user.passions[User.itching],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.itching] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Skin Rash'),
                        value: _user.passions[User.skin_rash],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.skin_rash] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Continous Sneezin'),
                        value: _user.passions[User.continuous_sneezing],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.continuous_sneezing] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Shivering'),
                        value: _user.passions[User.shivering],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.shivering] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Stomach Pain'),
                        value: _user.passions[User.stomach_pain],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.stomach_pain] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Acidity'),
                        value: _user.passions[User.acidity],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.acidity] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Vomiting'),
                        value: _user.passions[User.vomiting],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.vomiting] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Indigestion'),
                        value: _user.passions[User.indigestion],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.indigestion] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Muscle Wasting'),
                        value: _user.passions[User.muscle_wasting],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.muscle_wasting] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Patch in Throat '),
                        value: _user.passions[User.patches_in_throat],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.patches_in_throat] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Fatigue'),
                        value: _user.passions[User.fatigue],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.fatigue] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Weight Loss'),
                        value: _user.passions[User.weight_loss],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.weight_loss] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Sunken Eyes'),
                        value: _user.passions[User.sunken_eyes],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.sunken_eyes] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Cough'),
                        value: _user.passions[User.cough],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.cough] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('HeadAche'),
                        value: _user.passions[User.headache],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.headache] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Chest Pain'),
                        value: _user.passions[User.chest_pain],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.chest_pain] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Back Pain'),
                        value: _user.passions[User.back_pain],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.back_pain] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Weakness in Limbs'),
                        value: _user.passions[User.weakness_in_limbs],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.weakness_in_limbs] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Chills'),
                        value: _user.passions[User.chills],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.chills] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Joint Pain'),
                        value: _user.passions[User.joint_pain],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.joint_pain] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Yellowish Skin'),
                        value: _user.passions[User.yellowish_skin],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.yellowish_skin] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Constipation'),
                        value: _user.passions[User.constipation],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.constipation] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Pain During Bowel Movements'),
                        value: _user.passions[User.pain_during_bowel_movements],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.pain_during_bowel_movements] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Breathlessness'),
                        value: _user.passions[User.breathlessness],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.breathlessness] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Cramps'),
                        value: _user.passions[User.cramps],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.cramps] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Weight Gain'),
                        value: _user.passions[User.weight_gain],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.weight_gain] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Mood Swings'),
                        value: _user.passions[User.mood_swings],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.mood_swings] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Neck Pain'),
                        value: _user.passions[User.neck_pain],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.neck_pain] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Muscle Weakness'),
                        value: _user.passions[User.muscle_weakness],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.muscle_weakness] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Stiff Neck'),
                        value: _user.passions[User.stiff_neck],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.stiff_neck] = val);
                        }),
                    CheckboxListTile(
                        title: const Text('Pus Filled Pimples'),
                        value: _user.passions[User.pus_filled_pimples],
                        onChanged: (val) {
                          setState(
                                  () => _user.passions[User.pus_filled_pimples] = val);
                        }),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 16.0),
                      child: RaisedButton(
                        onPressed: () {
                          final form = _formKey.currentState;
                          if (form.validate()) {
                            form.save();
                            _user.save();
                            _showDialog(context);
                          }
                        },
                        child: Text('Save'),
                      ),
                    ),
                  ]),
            ),
          ),
        )
        )
    );
  }

  _showDialog(BuildContext context) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Submitting form'),
      ),
    );
  }
}