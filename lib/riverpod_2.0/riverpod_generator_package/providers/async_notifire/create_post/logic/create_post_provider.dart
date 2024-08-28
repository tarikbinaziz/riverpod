import 'package:flutter_application_1/riverpod_2.0/riverpod_generator_package/providers/async_notifire/create_post/logic/create_post_provider_statenotifire.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final createPostStateNotiProvider =
    StateNotifierProvider<CreatePostProviderStatenotifire, AsyncValue<void>>(
        (ref) => CreatePostProviderStatenotifire(ref));
