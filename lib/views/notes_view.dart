import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notescubit/notes_cubit.dart';
import 'package:notes_app/widgets/add_note_button_sheet.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(right: 8, bottom: 5),
          child: SizedBox(
            height: 70,
            width: 70,
            child: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    context: context,
                    builder: (context) {
                      return const AddNoteButtonSheet();
                    });
              },
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
      ),
    );
  }
}
