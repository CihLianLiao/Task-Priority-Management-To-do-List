import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:priority/for_page2/models2.dart';

class Header2 extends StatelessWidget {
  const Header2({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Models2>(
      builder: (context, viewModel, child) {
        return Container(
          margin: EdgeInsets.fromLTRB(15, 8, 15, 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // center the buttons horizontally and add even space between them
            children: <Widget>[
              Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '****',
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade800),
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(10, 90)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.grey.shade600),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/four');
                  },
                ),
              ),

              SizedBox(width: 7),

              Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '***',
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade800),
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(10, 90)),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade500),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/three');
                  },
                ),
              ),

              SizedBox(width: 7),

              Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '**',
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade800),
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(10, 90)),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade400),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/two');
                  },
                ),
              ),

              SizedBox(width: 7),

              Expanded(
                flex: 1,
                child: ElevatedButton(
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: 1.0, horizontal: 1.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '*',
                        style: TextStyle(
                            fontSize: 25, color: Colors.grey.shade800),
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all<Size>(Size(10, 90)),
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade300),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/one');
                  },
                ),
              ),

              // add space between the buttons
            ],
          ),
        );
      }, // builder
    );
  } // Widget
} // Class
