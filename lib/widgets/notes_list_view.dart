import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, idext) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: NoteItem(),
      );
    });
  }
}
