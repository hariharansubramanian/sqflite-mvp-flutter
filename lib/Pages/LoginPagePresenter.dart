import 'package:sqflite_mvp/Data/RestData.dart';
import 'package:sqflite_mvp/Model/User.dart';

abstract class LoginPageContract {
  void onLoginSuccess(User user);

  void onLoginError(String error);
}

class LoginPagePresenter {
  LoginPageContract _view;
  RestData api = new RestData();

  LoginPagePresenter(this._view);

  doLogin(String username, String password) {
    api
        .login(username, password)
        .then((user) => _view.onLoginSuccess(user))
        .catchError((onError) => _view.onLoginError(onError));
  }
}
