import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hinyText: 'Title',
            ),
            SizedBox(
              height: 22,
            ),
            CustomTextField(
              hinyText: 'Content',
              maxLines: 8,
            ),
            SizedBox(
              height: 42,
            ),
            CustomButton(),
            SizedBox(
              height: 22,
            ),
          ],
        ),
      ),
    );
  }
}