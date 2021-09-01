import 'package:flutter/material.dart';
import 'package:task3_messenger_ui/constant.dart';

Widget buildStoryUi() => Container(
    width: 65.0,
    child: Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: image == null
                  ? NetworkImage(
                      imageUrl,
                    )
                  : FileImage(
                      image!,
                    ) as ImageProvider,
            ),
            CircleAvatar(
              radius: 8.0,
              backgroundColor: commonColor,
            )
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'mohamed ibrahim belal',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    ));

Widget buildChatItems() => Row(
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: image == null
                  ? NetworkImage(
                      imageUrl,
                    )
                  : FileImage(
                      image!,
                    ) as ImageProvider,
            ),
            CircleAvatar(
              radius: 8.0,
              backgroundColor: commonColor,
            )
          ],
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'mohamed belal',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'mohamed belal &19 years & faculty of engineering TU',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: CircleAvatar(
                      radius: 5.0,
                      backgroundColor: commonColor,
                    ),
                  ),
                  Text(
                    '3:30 am',
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
