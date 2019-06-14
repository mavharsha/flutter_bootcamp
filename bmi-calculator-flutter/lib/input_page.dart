import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const containerColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new CardContainer(
                    color: containerColor,
                    cardChild: Center(
                        child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Center(
                            child: Icon(
                              FontAwesomeIcons.mars,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Text('Sree'),
                        )
                      ],
                    )),
                  ),
                ),
                Expanded(
                  child: new CardContainer(
                    color: containerColor,
                    cardChild: Center(
                      child: Text('sree'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: new CardContainer(
              color: containerColor,
              cardChild: Center(
                child: Text('sree'),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: new CardContainer(
                    color: containerColor,
                    cardChild: Center(
                      child: Text('sree'),
                    ),
                  ),
                ),
                Expanded(
                  child: new CardContainer(
                    color: containerColor,
                    cardChild: Center(
                      child: Text('sree'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            height: bottomContainerHeight,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  final Color color;
  final Widget cardChild;

  CardContainer({@required this.color, @required this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
