import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task3_messenger_ui/storySCreen.dart';
import 'components.dart';
import 'constant.dart';

class MessengerScreen extends StatefulWidget {
  @override
  _MessengerScreenState createState() => _MessengerScreenState();
}

class _MessengerScreenState extends State<MessengerScreen> {
  // image picker
  final ImagePicker picker = ImagePicker();

  Future getImage() async {
    var imagePicker = await picker.pickImage(source: ImageSource.camera);
    setState(() {
      image = File(imagePicker!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: image == null
                  ? NetworkImage(
                      imageUrl,
                    )
                  : FileImage(
                      image!,
                    ) as ImageProvider,
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
              'Chat',
              style: TextStyle(color: Colors.black, fontSize: 25.0),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              getImage();
            },
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: commonColor,
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StoryScreen(),
                ),
              );
            },
            icon: CircleAvatar(
              radius: 20.0,
              backgroundColor: commonColor,
              child: Icon(
                Icons.edit,
                color: Colors.white,
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    color: Colors.grey[300],
                  ),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'search',
                      ),
                    ],
                  )),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 110.0,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(
                    width: 20.0,
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildStoryUi(),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => buildChatItems(),
                separatorBuilder: (context, index) => SizedBox(
                  height: 20.0,
                ),
                itemCount: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
