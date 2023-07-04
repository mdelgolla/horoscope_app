import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:horoscope_app/bloc/login/login_bloc.dart';
import 'package:horoscope_app/components/page_layout/app_page_layout.dart';
import 'package:horoscope_app/components/common_button.dart';
import 'package:horoscope_app/components/common_input_field.dart';
import 'package:horoscope_app/components/title_container.dart';
import 'package:horoscope_app/navigation/navigation_routes.dart';
import 'package:horoscope_app/styles/app_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final LoginBloc loginBloc = BlocProvider.of<LoginBloc>(context);
    loginBloc.add(LoginInitialEvent());
    // _tabController!.addListener(_handleTabSelection);
  }

  @override
  Widget build(BuildContext context) {
    final LoginBloc loginBloc = BlocProvider.of<LoginBloc>(context);
    final _formKey = GlobalKey<FormState>();
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void submitForm() {
      if (_formKey.currentState?.validate() ?? false) {
        String username = usernameController.text;
        String password = passwordController.text;
        loginBloc.add(
            LoginButtonPressedEvent(username: username, password: password));
      } else {
        // _loginBloc.add(event)
      }
      // String username = usernameController.text;
      // String password = passwordController.text;
    }

    return BlocConsumer<LoginBloc, LoginState>(
      listenWhen: (previous, current) => current is! LoginActionState,
      buildWhen: (previous, current) => current is! LoginActionState,
      listener: (context, state) {
        if (state is LoginSuccessState) {
          NavigationRoute.goToHomePage(context);
        }
      },
      builder: (context, state) {
        bool showLoading = state is LoginLoadingState;
        return AppPageLayout(
            showLoading: showLoading,
            body: Form(
              key: _formKey,
              child: Padding(
                padding:
                EdgeInsets.all(AppStyles.sizeUtils.sizes.commonPadding),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const TitleContainer(title: "Login"),
                      CommonInputField(
                        controller: usernameController,
                        hintText: 'Username',
                        textInputType: TextInputType.text,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your username";
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: AppStyles.sizeUtils.sizes.commonPadding),
                      CommonInputField(
                        controller: passwordController,
                        hintText: 'Password',
                        textInputType: TextInputType.text,
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Please enter your password";
                          } else if (state is LoginFailureState) {
                            return state.error;
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: AppStyles.sizeUtils.sizes.commonPadding),
                      CommonButton(
                        buttonLabel: "Login",
                        onPressed: () {
                          submitForm();
                          // NavigationRoute.goToHomePage(context);
                          // NavigationRoute.goToHomePage(context);
                        },
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                  text: "No account? ",
                                  style: AppStyles.textStyles.text.normalText),
                              TextSpan(
                                text: "Register here",
                                style: AppStyles
                                    .textStyles.text.normalTextUnderline,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = _navigateToRegister,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }

  _navigateToRegister() {
    NavigationRoute.goToRegisterPage(context);
  }
}
