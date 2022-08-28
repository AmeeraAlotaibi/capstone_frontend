import 'dart:io';
import 'package:capstone_frontend/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatefulWidget {
  EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _formKey = GlobalKey<FormState>();
  var _image;
  final _picker = ImagePicker();
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _userName = TextEditingController();
  final _bio = TextEditingController();
  final _bloodType = TextEditingController();
  final _height = TextEditingController();
  final _weight = TextEditingController();
  final _age = TextEditingController();
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
  String? selectedItem = "O+";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 25),
          width: double.infinity,
          child: Form(
            key: _formKey,
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
                              _image == null
                                  ? "https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg"
                                  : _image,
                              width: 200.0,
                              height: 200.0,
                              fit: BoxFit.cover,
                            ),
                    ),
                  ),
                ),
                // end of avatar omage picker
                const SizedBox(
                  height: 25,
                ),
                // FIRST NAME AND LAST NAME ROWs
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomFormField(
                      label: "First Name: ",
                      width: 170,
                      controller: _firstName,
                      hintText: "First Name",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomFormField(
                      label: "Last Name: ",
                      width: 170,
                      controller: _lastName,
                      hintText: "Last Name",
                    ),
                  ],
                ),

                const SizedBox(
                  height: 15,
                ),

                CustomFormField(
                  label: "Username: ",
                  width: 350,
                  controller: _userName,
                  hintText: "Username",
                ),

                const SizedBox(
                  height: 15,
                ),

                // height, age and weight row details
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomFormField(
                      label: "Height: ",
                      width: 110,
                      controller: _height,
                      hintText: "Height",
                      suffix: const Text("CM"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomFormField(
                      label: "Age: ",
                      width: 110,
                      controller: _age,
                      hintText: "Age",
                      suffix: const Text("YRS"),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    CustomFormField(
                      label: "Weight: ",
                      width: 110,
                      controller: _weight,
                      hintText: "Weight",
                      suffix: const Text("KG"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                // dropdown
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Blood Type: ",
                      style: TextStyle(
                        color: Color(0xFF4c4c4c),
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 7.5,
                    ),
                    SizedBox(
                      width: 350,
                      child: DropdownButtonFormField<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 0),
                          prefixIcon: const Icon(
                            Icons.bloodtype,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: const BorderSide(
                              color: Color(0xFF4c4c4c),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              width: 2,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        ),
                        value: selectedItem,
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
                    ),
                  ],
                ),
                // end of dropdown

                const SizedBox(
                  height: 15,
                ),
                BioField(width: 350, controller: _bio),
                const SizedBox(
                  height: 25,
                ),
                // save button
                CustomButton(
                  width: 350,
                  buttonText: "Save",
                  onPressed: () {
                    // save profile function here
                  },
                ),

                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
