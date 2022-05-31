part of 'pages.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          title: 'Full Name',
          hintText: 'Your full name',
          //controller: nameController,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your email address',
          //controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your password',
          obscureText: true,
          // controller: passwordController,
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your hobby',
          // controller: hobbyController,
        );
      }

      Widget submitButton() {
        return CustomButton(
            title: 'Get Started',
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            });
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            title(),
            inputSection(),
            //signInButton(),
          ],
        ),
      ),
    );
  }
}
