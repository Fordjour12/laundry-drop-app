import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CreateAccountPageStateChange extends ChangeNotifier {
  late final StreamSubscription _authChangesSubscription;
  final SupabaseClient supabaseClient;
  final Function onAuthStateChanged;

  CreateAccountPageStateChange({
    required this.onAuthStateChanged,
    required this.supabaseClient,
  }) {
    _authChangesSubscription =
        supabaseClient.auth.onAuthStateChange.listen((event) {
      if (event.session != null) {
        onAuthStateChanged();
        notifyListeners();
      }
    });
  }

  @override
  void dispose() {
    _authChangesSubscription.cancel();
    super.dispose();
  }
}
