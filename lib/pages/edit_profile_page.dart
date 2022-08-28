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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
        actions: [
          GestureDetector(
            onTap: () {
              // SAVE FORM FUNCTION HERE
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Icon(Icons.done),
            ),
          ),
        ],
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
                const SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomFormField(
                      width: 175, 
                      controller: _firstName, 
                      hintText: "First Name",
                      ),
                    const SizedBox(width: 10,),
                    CustomFormField(
                      width: 175, 
                      controller: _lastName, 
                      hintText: "Last Name",
                      ),
                  ],
                ),

                const SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  CustomFormField(
                    width: 200, 
                    controller: _userName, 
                    hintText: "Username",
                    ),
                  const SizedBox(width: 10,),
                  CustomFormField(
                    width: 150, 
                    controller: _bloodType, 
                    hintText: "Blood Type",
                  
                    ),
                ],
                ),
                const SizedBox(height: 15,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  CustomFormField(
                    width: 100, 
                    controller: _height, 
                    hintText: "Height",
                    ),
                  
                  const SizedBox(width: 10,),
                  
                  CustomFormField(
                    width: 100, 
                    controller: _age, 
                    hintText: "Age",
                  
                    ),
                  const SizedBox(width: 10,),

                  CustomFormField(
                    width: 100, 
                    controller: _weight, 
                    hintText: "Weight",
                    ),
                ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
