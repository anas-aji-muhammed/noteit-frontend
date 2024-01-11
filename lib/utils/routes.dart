import 'package:go_router/go_router.dart';
import 'package:note_it/app.dart';
import 'package:note_it/features/note_app_home/screen/note_app_home_page.dart';
import 'package:note_it/features/note_app_home/widgets/notes_main_view.dart';
import 'package:note_it/features/note_editor/screen/note_editor_page.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [

    ShellRoute(routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const App(),
      ),
      GoRoute(
        path: '/tag/:tagName',
        builder: (context, state) {
          final tagName =
              state.path??""; // Get the tag name from the route
          return NotesMainView(
              tagName: tagName
          ); // Screen showing items under the tag
        },
      )
    ]),

    GoRoute(
      path: '/editor',
      builder: (context, state) => const NoteEditorScreen(),
    ),
  ],
);
