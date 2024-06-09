import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';

class PasswordInput extends StatefulWidget {
  final double borderRadius;
  final Color borderColor;
  final Color cursorColor;
  final Color focusedBorderColor;
  final Color focusedErrorBorderColor;
  final Color selectionColor;
  final Color hintTextColor;

  const PasswordInput({
    Key? key,
    this.borderRadius = 8.0,
    this.borderColor = Colors.grey,
    this.cursorColor = Colors.black,
    this.focusedBorderColor = Colors.blue,
    this.focusedErrorBorderColor = Colors.red,
    this.selectionColor = Colors.orangeAccent,
    this.hintTextColor = Colors.black87,
  }) : super(key: key);

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final showWarning = state.showPasswordWarning;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Theme(
              data: Theme.of(context).copyWith(
                textSelectionTheme: TextSelectionThemeData(
                  selectionColor: widget.selectionColor,
                ),
              ),
              child: TextField(
                obscureText: true,
                onChanged: (password) {
                  context.read<AuthBloc>().add(AuthPasswordChanged(password));
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                    borderSide: BorderSide(color: widget.borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                    borderSide: BorderSide(color: widget.focusedBorderColor),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.borderRadius),
                    borderSide: BorderSide(color: widget.focusedErrorBorderColor),
                  ),
                  labelText: 'Пароль',
                  labelStyle: TextStyle(color: widget.hintTextColor),
                  floatingLabelBehavior: FloatingLabelBehavior.auto, // Исправление здесь
                  suffixIcon: const Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text('*', style: TextStyle(color: Colors.red)),
                  ),
                ),
                cursorColor: widget.cursorColor,
              ),
            ),
            if (showWarning)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Icon(Icons.error, color: Colors.orange, size: 20),
                    const SizedBox(width: 8.0),
                    const Text('Заполните это поле.', style: TextStyle(color: Colors.orange)),
                  ],
                ),
              ),
          ],
        );
      },
    );
  }
}
