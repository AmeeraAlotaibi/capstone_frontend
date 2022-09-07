// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'dart:io';
import 'package:capstone_frontend/models/trainee.dart';
import 'package:capstone_frontend/models/user.dart';
import 'package:capstone_frontend/providers/trainee_provider.dart';
import 'package:capstone_frontend/widgets/generic/bio_textfield.dart';
import 'package:capstone_frontend/widgets/generic/gradient_button.dart';
import 'package:capstone_frontend/widgets/generic/input_label.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatefulWidget {
  EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();
  var _image;
  late String profile_image="";
  final _picker = ImagePicker();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _userName = TextEditingController();
  final _bio = TextEditingController();
  final _height = TextEditingController();
  final _weight = TextEditingController();
  final _age = TextEditingController();
  final _gender = TextEditingController();
  late Trainee profile;
   String? selectedItem;
  String? selectedGender;


   void initState() {
    profile = Provider.of<TraineeProvider>(context, listen: false).trainee;
    super.initState();
    // add post frame callback to update the image
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _firstName.text = profile.user?.first_name??"";
      _lastName.text = profile.user?.last_name??"";
      _userName.text = profile.user?.username??"";
      _bio.text = profile.bio??"";
      // selectedItem = profile.blood_type??"";
      // selectedGender = profile.gender??"";
      _height.text = profile.height.toString();
      _weight.text = profile.weight.toString();
      _age.text = profile.age.toString();
      _gender.text = profile.gender??"";
      profile_image = profile.image?? "https://t4.ftcdn.net/jpg/00/64/67/63/240_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg";

    });
  }


  final List<String> genders = [
    "Male",
    "Female",
  ];


  final List<String> bloodTypes = [
    "O+",
    "O-",
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-"
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit Profile"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    final XFile? image =
                        await _picker.pickImage(source: ImageSource.gallery);
                    setState(() {
                      _image = image?.path != null ? File(image!.path) : null;
                    });
                  },
                  child: ClipOval(
                    child: Container(
                      width: 125,
                      height: 125,
                      decoration: BoxDecoration(color: Colors.blue[200]),
                      child: _image != null
                          ? Image.file(
                              _image,
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            )
                          : Image.network(
                             profile.image??                            "https://t4.ftcdn.net/jpg/00/64/67/63/240_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg",

                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
                // end of avatar omage picker
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InputLabel(
                        label: "First Name",
                        widget: TextFormField(
                          controller: _firstName,
                          decoration: const InputDecoration(
                            hintText: "First Name",
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InputLabel(
                        label: "Last Name",
                        widget: TextFormField(
                          controller: _lastName,
                          decoration: const InputDecoration(
                            hintText: "Last Name",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),
                // USERNAME
                InputLabel(
                  label: "Username",
                  widget: TextFormField(
                    controller: _userName,
                    decoration: const InputDecoration(
                      hintText: "Username",
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                //  HEIGHT, WEIGHT AND AGE ROW INPUT FIELDS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InputLabel(
                        label: "Height",
                        widget: TextFormField(
                          controller: _height,
                          decoration: const InputDecoration(
                            hintText: "Height",
                            suffix: Text("CM"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InputLabel(
                        label: "Age",
                        widget: TextFormField(
                          controller: _age,
                          decoration: const InputDecoration(
                            hintText: "Age",
                            suffix: Text("YRS"),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: InputLabel(
                        label: "Weight",
                        widget: TextFormField(
                          controller: _weight,
                          decoration: const InputDecoration(
                            hintText: "Weight",
                            suffix: Text("KG"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),
                // dropdown menu for bloodtype
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Blood Type: ",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          const SizedBox(
                            height: 7.5,
                          ),
                          DropdownButtonFormField<String>(
                            // isExpanded: true,
                            dropdownColor: Theme.of(context).dividerColor,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 0),
                              prefixIcon: Icon(
                                Icons.bloodtype,
                              ),
                            ),
                            value: selectedItem??profile.blood_type,
                            items: bloodTypes
                                .map(
                                  (type) => DropdownMenuItem(
                                    value: type,
                                    child: Text(type),
                                  ),
                                )
                                .toList(),
                            onChanged: (type) =>
                                setState(() => selectedItem = type),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    // gender dropdown
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Gender: ",
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          const SizedBox(
                            height: 7.5,
                          ),
                          DropdownButtonFormField<String>(
                            // isExpanded: true,
                            dropdownColor: Theme.of(context).dividerColor,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 0),
                              prefixIcon: Icon(
                                Icons.person,
                              ),
                            ),
                            value: selectedGender??profile.gender,
                            items: genders
                                .map(
                                  (gender) => DropdownMenuItem(
                                    value: gender,
                                    child: Text(gender),
                                  ),
                                )
                                .toList(),
                            onChanged: (gender) =>
                                setState(() => selectedGender = gender),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // end of dropdown column
                const SizedBox(
                  height: 15,
                ),
                BioField(
                  width: 350,
                  controller: _bio,
                ),
                const SizedBox(
                  height: 20,
                ),
                // save button
                CustomButton(
                  width: 350,
                  buttonText: "Save",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      Provider.of<TraineeProvider>(context, listen: false)
                          .editProfile(
                              trainee: Trainee(
                        user: User(
                            first_name: _firstName.text,
                            last_name: _lastName.text,
                            username: _userName.text),
                        gender: selectedGender,
                        bio: _bio.text,
                        age: int.parse(_age.text),
                        height: int.parse(_height.text),
                        weight: int.parse(_weight.text),
                        blood_type: selectedItem,
                        image: _image?.path ?? "",
                      ));
                      context.pop();
                    }

                    // save profile function here

                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
