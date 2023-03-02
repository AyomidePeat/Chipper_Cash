import 'package:chipper_cash/screen_layout.dart';
import 'package:flutter/material.dart';

class LockScreen extends StatefulWidget {
  const LockScreen({Key? key}) : super(key: key);

  @override
  _LockScreenState createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  final List<int> _pin = [0, 0, 0, 0];
  int _currentIndex = 0;

  void _onNumberPressed(int number) {
    setState(() {
      _pin[_currentIndex] = number;
      _currentIndex = (_currentIndex + 1) % 4;
    });
  }

  void delete() {
    setState(() {
      if (_currentIndex > 0) {
        _currentIndex--;
        _pin[_currentIndex] = 0;
      }
    });
  }

  void _onSubmit() {
    if (_pin.join() == "1234") {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => ScreenLayout()));
    } else {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: Text("Wrong Password \n Password: 1234"),
          content: Text("Please try again."),
        ),
      );
      setState(() {
        _pin.fillRange(0, 4, 0);
        _currentIndex = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Enter your Chipper PIN",
            style: TextStyle(
              color: Colors.black,
              fontSize: 21.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildCircle(0),
              const SizedBox(width: 16),
              _buildCircle(1),
              const SizedBox(width: 16),
              _buildCircle(2),
              const SizedBox(width: 16),
              _buildCircle(3),
            ],
          ),
          SizedBox(height: 60),
          FinggerPrint(),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [SizedBox(width:10),
              _buildNumberButton(1),
              _buildNumberButton(2),
              _buildNumberButton(3),
              SizedBox(width:10),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width:10),
              _buildNumberButton(4),
              _buildNumberButton(5),
              _buildNumberButton(6),
              SizedBox(width:10),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width:10),
              _buildNumberButton(7),
              _buildNumberButton(8),
              _buildNumberButton(9),
              SizedBox(width:10),
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width:10),
              IconButton(
                icon: Icon(
                  Icons.backspace,
                  color: Colors.grey,
                ),
                onPressed: delete,
              ),
              _buildNumberButton(0),
              _buildSubmitButton(),
              SizedBox(width:10),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          TextButton(
              onPressed: () {
                const error = SnackBar(
                  content: Text('Password:1234', textAlign: TextAlign.center),
                  backgroundColor: Color.fromARGB(255, 111, 7, 208),
                  elevation: 15,
                  behavior: SnackBarBehavior.floating,
                  margin: EdgeInsets.all(5),
                );
                ScaffoldMessenger.of(context).showSnackBar(error);
              },
              child: Text("Forgot PIN?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 111, 7, 208),
                  ))),
        ],
      ),
    );
  }

  Widget _buildCircle(int index) {
    return Container(
      width: 16,
      height: 16,
      decoration: BoxDecoration(
        color: _pin[index] == 0
            ? Color.fromARGB(255, 111, 7, 208).withOpacity(0.5)
            : _pin[index] == 1
                ? Color.fromARGB(255, 111, 7, 208)
                : _pin[index] == 2
                    ? Color.fromARGB(255, 111, 7, 208)
                    : _pin[index] == 3
                        ? Color.fromARGB(255, 111, 7, 208)
                        : Color.fromARGB(255, 111, 7, 208),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildNumberButton(int number) {
    return TextButton(
      child:
          Text("$number", style: TextStyle(color: Colors.grey, fontSize: 18)),
      onPressed: () => _onNumberPressed(number),
    );
    onPressed:
    () => _onNumberPressed(number);
  }

  Widget _buildSubmitButton() {
    return IconButton(
        onPressed: _onSubmit, icon: Icon(Icons.send, color: Colors.grey));
  }
}

class FinggerPrint extends StatelessWidget {
  const FinggerPrint({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 250,
      child: ElevatedButton(
        onPressed: () {
          const error = SnackBar(
            content: Text(
                'FingerPrint Authentication is Currently Not Available',
                textAlign: TextAlign.center),
            backgroundColor: Color.fromARGB(255, 111, 7, 208),
            elevation: 15,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(5),
          );
          ScaffoldMessenger.of(context).showSnackBar(error);
        },
        child: const Text(
          "Use Fingerprint",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
        ),
        style: ElevatedButton.styleFrom(
          primary: Color.fromARGB(255, 111, 7, 208),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
