import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
    );
  }
}

//Tab Bar
class Login extends StatelessWidget {
  final List<String> tabs = ['Admin', 'User'];
  int selectedTabIndex = 0;

  Login({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 50),
            TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(width: 3, color: Colors.blue),
              ),
              tabs: tabs.map((String tab) {
                return Container(
                  height: 40,
                  child: Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        tab,
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                  ),
                );
              }).toList(),
              onTap: (index) {},
            ),
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  LoginScreen(),
                  LoginScreen1(),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member ?',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(width: 5),
                Text(
                  'Create Account',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}


//Admin
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreenBody(),
    );
  }
}
class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LoginForm(),
        SizedBox(height: 20),
      ],
    );
  }
}
class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Form(
        child: Column(
          children: [
            Username(),
            SizedBox(height: 20),
            Password(),
            SizedBox(height: 8),
            ForgotPassword(),
            SizedBox(height: 35),
            LoginButton(),
            SizedBox(height: 120),
          ],
        ),
      ),
    );
  }
}
class Username extends StatelessWidget {
  const Username({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container( // Set the background color to gray
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black), // Set the text color to black
          decoration: InputDecoration(
            hintText: 'Username',
            hintStyle: TextStyle(color: Colors.black), // Set the hint text color to black
            prefixIcon: Icon(Icons.email_outlined, color: Colors.black), // Set the prefix icon color to black
            border: OutlineInputBorder(),
          ),
          onChanged: (String value) {},
          validator: (value) {
            return value!.isEmpty ? 'Please enter username' : null;
          },
        ),
      ),
    );
  }
}
class Password extends StatelessWidget {
  const Password({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(color: Colors.black), // Set text color to black
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.black), // Set hint text color to black
            prefixIcon: Icon(Icons.password_outlined, color: Colors.black), // Set prefix icon color to black
            border: OutlineInputBorder(),
          ),
          onChanged: (String value) {},
          validator: (value) {
            return value!.isEmpty ? 'Please enter Password' : null;
          },
        ),
      ),
    );
  }
}
class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Forgot Password?',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 90),
      child: MaterialButton(
        minWidth: double.infinity,
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(fontSize: 18),
        ),
        color: Colors.black,
        textColor: Colors.white,
      ),
    );
  }
}


//User
class LoginScreen1 extends StatelessWidget {
  const LoginScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreenBody1(),
    );
  }
}
class LoginScreenBody1 extends StatelessWidget {
  const LoginScreenBody1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LoginForm1(),
        SizedBox(height: 20),
        OrDivider1(),
        SizedBox(height: 20),
        GoogleSignInButton1(),
      ],
    );
  }
}
class LoginForm1 extends StatelessWidget {
  const LoginForm1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: Form(
        child: Column(
          children: [
            Username1(),
            SizedBox(height: 20),
            Password1(),
            SizedBox(height: 8),
            ForgotPassword1(),
            SizedBox(height: 35),
            LoginButton1(),
          ],
        ),
      ),
    );
  }
}
class Username1 extends StatelessWidget {
  const Username1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          style: TextStyle(color: Colors.black), // Set the text color to black
          decoration: InputDecoration(
            hintText: 'Username',
            hintStyle: TextStyle(color: Colors.black), // Set the hint text color to black
            prefixIcon: Icon(Icons.email_outlined, color: Colors.black), // Set the prefix icon color to black
            border: OutlineInputBorder(),
          ),
          onChanged: (String value) {},
          validator: (value) {
            return value!.isEmpty ? 'Please enter username' : null;
          },
        ),
      ),
    );
  }
}
class Password1 extends StatelessWidget {
  const Password1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        child: TextFormField(
          keyboardType: TextInputType.visiblePassword,
          style: TextStyle(color: Colors.black), // Set text color to black
          decoration: InputDecoration(
            hintText: 'Password',
            hintStyle: TextStyle(color: Colors.black), // Set hint text color to black
            prefixIcon: Icon(Icons.password_outlined, color: Colors.black), // Set prefix icon color to black
            border: OutlineInputBorder(),
          ),
          onChanged: (String value) {},
          validator: (value) {
            return value!.isEmpty ? 'Please enter Password' : null;
          },
        ),
      ),
    );
  }
}

class ForgotPassword1 extends StatelessWidget {
  const ForgotPassword1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Forgot Password?',
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}

class LoginButton1 extends StatelessWidget {
  const LoginButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 90),
      child: MaterialButton(
        minWidth: double.infinity,
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(fontSize: 18),
        ),
        color: Colors.black,
        textColor: Colors.white,
      ),
    );
  }
}
class OrDivider1 extends StatelessWidget {
  const OrDivider1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              thickness: 3,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              'OR',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: Divider(
              thickness: 3,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
class GoogleSignInButton1 extends StatelessWidget {
  const GoogleSignInButton1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 90),
      child: MaterialButton(
        minWidth: double.infinity,
        onPressed: () {},
        color: Colors.black,
        textColor: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'lib/view/Login/Images/google.png',
              width: 24,
              height: 24,
            ),
            SizedBox(width: 10),
            Text(
              'Sign-in with Google',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}