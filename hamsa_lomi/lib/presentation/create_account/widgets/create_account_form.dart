// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

// Project imports:
import '../bloc/create_account_bloc.dart';

class CreateAccountForm extends StatelessWidget {
  const CreateAccountForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateAccountBloc, CreateAccountState>(
      listener: (context, state) {
        if (state.status.isSubmissionSuccess) {
          final snackBar =
              SnackBar(content: Text('Account created successfully!'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else if (state.status.isSubmissionFailure) {
          final snackBar = SnackBar(content: Text('Something went wrong!'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      child: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text('Setup your information',
                    style: Theme.of(context).textTheme.headline5),
              ),
              _UsernameInput(),
              _EmailInput(),
              _PasswordInput(),
              _ConfirmPasswordInput(),
              _SignUpButton()
            ],
          ),
        ),
      ),
    );
  }
}

class _UsernameInput extends StatelessWidget {
  const _UsernameInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (previousState, state) =>
          previousState.username.value != state.username.value,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Username'),
              SizedBox(
                height: 8.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                onChanged: (value) {
                  context.read<CreateAccountBloc>().add(UsernameChanged(value));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _EmailInput extends StatelessWidget {
  const _EmailInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (previousState, state) =>
          previousState.email.value != state.email.value,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Email'),
              SizedBox(
                height: 8.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                onChanged: (value) {
                  context.read<CreateAccountBloc>().add(EmailChanged(value));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatefulWidget {
  const _PasswordInput({Key? key}) : super(key: key);

  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<_PasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (previousState, state) =>
          previousState.password.value.password !=
          state.password.value.password,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Password'),
              SizedBox(
                height: 8.0,
              ),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
                onChanged: (value) {
                  context.read<CreateAccountBloc>().add(PasswordChanged(value));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _ConfirmPasswordInput extends StatefulWidget {
  const _ConfirmPasswordInput({Key? key}) : super(key: key);

  @override
  _ConfirmPasswordInputState createState() => _ConfirmPasswordInputState();
}

class _ConfirmPasswordInputState extends State<_ConfirmPasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      buildWhen: (previousState, state) =>
          previousState.password.value.confirmPassword !=
          state.password.value.confirmPassword,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Confirm Password'),
              SizedBox(
                height: 8.0,
              ),
              TextFormField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
                onChanged: (value) {
                  context
                      .read<CreateAccountBloc>()
                      .add(ConfirmPasswordChanged(value));
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

class _SignUpButton extends StatelessWidget {
  const _SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateAccountBloc, CreateAccountState>(
      builder: (context, state) {
        if (state.status.isSubmissionInProgress) {
          return CircularProgressIndicator();
        } else {
          return ElevatedButton(
              onPressed: () {
                context.read<CreateAccountBloc>().add(CreateAccountSubmitted());
              },
              child: Text('SIGNUP'));
        }
      },
    );
  }
}
