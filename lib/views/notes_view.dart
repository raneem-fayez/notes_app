import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: SizedBox(
          height: 70,
          width: 70,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xff252525),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.add,
              size: 30,
            ),
          ),
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
