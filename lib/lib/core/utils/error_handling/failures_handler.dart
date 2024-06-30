import 'dart:developer';

import 'failures.dart';

Future<void> failuresHandler(
  Function() task, {
  required Function(Failure failure) onError,
  //bool ignoreNetworkCheck = false,
}) async {
  /* if(!ignoreNetworkCheck){
      if(!(await injector<NetworkChecker>().hasConnection)){
        onError(const NoInternetFailure());
        return;
      }
    }*/

  try {
    await task();
  } catch (e, s) {
    log(e.toString(), stackTrace: s);
    if (e is Failure) {
      onError(e);
    } else {
      onError(const UnExpectedFailure("حدث خطأ , من فضلك حاول مرة اخري"));
    }
  }
}
