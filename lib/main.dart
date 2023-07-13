import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';

import 'cubits/add_note_cubit/add_note_cubit.dart';
import 'cubits/notes_cubit/notes_cubit.dart';
import 'veiws/notes_veiw.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const Notes_App());
}

class Notes_App extends StatelessWidget {
  const Notes_App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark, fontFamily: "Poppins"),
        home: const NotesView(),
      ),
    );
  }
}
