class AddnoteStates {}

class AddNoteInitial extends AddnoteStates {}

class AddNoteLoading extends AddnoteStates {}

class AddNoteSuccess extends AddnoteStates {}

class AddNoteFailure extends AddnoteStates {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
