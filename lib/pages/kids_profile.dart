import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:login/models/kidmodel.dart';

class KidProfile extends StatefulWidget {
  final Kid kid;

  KidProfile({required this.kid});

  @override
  _KidProfileState createState() => _KidProfileState();
}

class _KidProfileState extends State<KidProfile> {
  final TextEditingController _nameController = TextEditingController();
  File? _image;

  @override
  void initState() {
    super.initState();
    _nameController.text = widget.kid.name;
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await ImagePicker().pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
        widget.kid.profileImage = pickedFile.path;
      });
    }
  }

  void _showImagePickerOptions() {
    showModalBottomSheet(
      context: context,
      builder: (context) => Wrap(
        children: [
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: const Text('Choose from Gallery'),
            onTap: () {
              Navigator.pop(context);
              _pickImage(ImageSource.gallery);
            },
          ),
          ListTile(
            leading: const Icon(Icons.photo_camera),
            title: const Text('Take a Photo'),
            onTap: () {
              Navigator.pop(context);
              _pickImage(ImageSource.camera);
            },
          ),
        ],
      ),
    );
  }

  void _editName() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Name'),
        content: TextField(
          controller: _nameController,
          decoration: const InputDecoration(
            hintText: "Enter your name",
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CANCEL'),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                widget.kid.name = _nameController.text;
              });
              Navigator.pop(context);
            },
            child: const Text('SAVE'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Home2.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 16.0),
            child: Column(
              children: [
                GestureDetector(
                  onTap: _showImagePickerOptions,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: _image != null
                        ? FileImage(_image!)
                        : AssetImage(widget.kid.profileImage) as ImageProvider,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  widget.kid.name,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 245, 245, 245),
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 131, 119, 119).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: TextButton(
                    onPressed: _editName,
                    child: const Text(
                      'EDIT',
                      style: TextStyle(
                        color: Color.fromARGB(255, 245, 245, 245),
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 2),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfffff8ee),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Text("TOTAL READS", style: kTitleStyle),
                              const SizedBox(height: 8),
                              Text("3", style: kSubtitleStyle),
                            ],
                          ),
                          Column(
                            children: [
                              Text("FAVOURITES", style: kTitleStyle),
                              const SizedBox(height: 8),
                              Text("2", style: kSubtitleStyle),
                            ],
                          ),
                          Column(
                            children: [
                              Text("REVIEWS", style: kTitleStyle),
                              const SizedBox(height: 8),
                              Text("1", style: kSubtitleStyle),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        "BookShelf",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 250, 
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.kid.recentBooks.length,
                          itemBuilder: (ctx, index) {
                            return Container(
                              width: 120, 
                              margin: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Column(
                                children: [
                                  Image.asset(
                                    widget.kid.recentBooks[index].albumArtImagePath,
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: 100,
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    widget.kid.recentBooks[index].bookName,
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

final kTitleStyle = const TextStyle(
  fontSize: 16,
  color: Colors.grey,
  fontWeight: FontWeight.w700,
);

final kSubtitleStyle = const TextStyle(
  fontSize: 20,
  color: Colors.black,
  fontWeight: FontWeight.w700,
);
