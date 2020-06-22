import 'package:flutter/material.dart';
import 'package:flutter_firebase_login/user_repository.dart';
import 'package:flutter_firebase_login/register/register.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAccountButton extends StatelessWidget {
  final UserRepository _userRepository;

  CreateAccountButton({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return RaisedButton.icon(
      color: Colors.grey[600],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      icon: Icon(FontAwesomeIcons.user,color: Colors.white,),
      label: Text('Create an Account',style: TextStyle(color: Colors.white),),
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return RegisterScreen(userRepository: _userRepository);
          }),
        );
      },
      // child: Text(
      //   'Create an Account',
      // ),
      // onPressed: () {
      //   Navigator.of(context).push(
      //     MaterialPageRoute(builder: (context) {
      //       return RegisterScreen(userRepository: _userRepository);
      //     }),
      //   );
      // },
    );
  }
}
