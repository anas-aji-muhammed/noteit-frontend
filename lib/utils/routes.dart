import 'package:go_router/go_router.dart';
import 'package:note_it/features/note_app_home/screen/note_app_home_page.dart';
import 'package:note_it/features/note_editor/screen/note_editor_page.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/editor',
      builder: (context, state) => const NotesAppHomePage(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const NoteEditorScreen(),
    ),
  ],
);