import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: GridView.count(
        physics: BouncingScrollPhysics(),
        crossAxisCount: 2,
        padding: EdgeInsets.all(10.0),
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 15.0,
        childAspectRatio: 1 / 1.3,
        children: [
          storyView(
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4kjqcZjBqB8k-xyIBDJr-WeTrVi5rbpUqiw&usqp=CAU',
            text: 'mahamed belal',
          ),
          storyView(
            image:
                'https://images.pexels.com/photos/586744/pexels-photo-586744.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            text: 'ahmed ',
          ),
          storyView(
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSDkQlsJQtHSc1CROi6L8vbNAHNeNwKPNcD2A&usqp=CAU',
            text: 'omar',
          ),
          storyView(
            image:
                'https://images.unsplash.com/photo-1483232539664-d89822fb5d3e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cGljc2FydCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&ixlib=rb-1.2.1&w=1000&q=80',
            text: 'mostafa',
          ),
          storyView(
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRR9qDoSJLOwRa02yAPE4aN6SVpRaTC0cDoAw&usqp=CAU',
            text: 'mohamed ahmed',
          ),
          storyView(
            image:
                'https://images.unsplash.com/photo-1569982175971-d92b01cf8694?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8&w=1000&q=80',
            text: 'mohamed ibrahim',
          ),
          storyView(
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvWmdl0G_Z2qwdG_pXEkue3Asrv_4FEK-oKQ&usqp=CAU',
            text: 'belal',
          ),
          storyView(
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmpfMGCfU0frSa4xsp31m5irELqnlZ_U-5Jg&usqp=CAU',
            text: 'omar mohamed ',
          ),
          storyView(
            image:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIyI48kaDjL2wV6lPt1e5MwUQOqk5JLOAIlw&usqp=CAU',
            text: 'khaled',
          ),
          storyView(
            image:
                'https://images.pexels.com/photos/1631677/pexels-photo-1631677.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            text: 'abdullah mohamed',
          ),
        ],
      ),
    );
  }

  Widget storyView({
    required String image,
    required String text,
  }) =>
      Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      );
}
