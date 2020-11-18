
//the tic tac toe game is studied from a youtube video

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:regan_web/game_button.dart';
import 'package:regan_web/custom.dart';
import 'package:regan_web/home_view.dart';
import 'package:regan_web/main.dart';
import 'global.dart' as global;

class HomePage extends StatefulWidget {

  int value;
  HomePage({Key key, @required this.value}) : super(key: key);

  @override
  _HomePageState createState() => new _HomePageState(value);
}

class _HomePageState extends State<HomePage> {

  int value;

  _HomePageState(this.value);


  List<GameButton> buttonsList;
  var player1;
  var player2;
  var activePlayer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    buttonsList = doInit();
  }

  List<GameButton> doInit() {
    player1 = new List();
    player2 = new List();
    activePlayer = 1;

    var gameButtons = <GameButton>[
      new GameButton(id: 1),
      new GameButton(id: 2),
      new GameButton(id: 3),
      new GameButton(id: 4),
      new GameButton(id: 5),
      new GameButton(id: 6),
      new GameButton(id: 7),
      new GameButton(id: 8),
      new GameButton(id: 9),
    ];
    return gameButtons;
  }


  getColorA(){
    if(global.pass==0) {
      return Colors.black;
    }
    else if(global.pass==1){
      return Colors.pinkAccent;
    }
    else if(global.pass==2){
      return Colors.blue[800];
    }
    else if(global.pass==3){
      return Colors.orangeAccent[700];
    }
  }

  getColorB(){
    if(global.pass==0) {
      return Colors.orange[800];
    }
    else if(global.pass==1){
      return Colors.yellow;
    }
    else if(global.pass==2){
      return Colors.tealAccent[700];
    }
    else if(global.pass==3){
      return Colors.green[500];
    }
  }


  void playGame(GameButton gb) {
    setState(() {
      if (activePlayer == 1) {
        gb.text = "X";
        gb.bg = getColorA();
        activePlayer = 2;
        player1.add(gb.id);
      } else {
          gb.text = 'O';
          gb.bg = getColorB();
        activePlayer = 1;
        player2.add(gb.id);
      }
      gb.enabled = false;
      int winner = checkWinner();
      if (winner == -1) {
        if (buttonsList.every((p) => p.text != "")) {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeView(),
              ),
            );
          });
        } else {
          activePlayer == 2 ? autoPlay() : null;
        }
      }
    });
  }

  void autoPlay() {
    var emptyCells = new List();
    var list = new List.generate(9, (i) => i + 1);
    for (var cellID in list) {
      if (!(player1.contains(cellID) || player2.contains(cellID))) {
        emptyCells.add(cellID);
      }
    }

    var r = new Random();
    var randIndex = r.nextInt(emptyCells.length - 1);
    var cellID = emptyCells[randIndex];
    int i = buttonsList.indexWhere((p) => p.id == cellID);
    playGame(buttonsList[i]);
  }

  int checkWinner() {
    var winner = -1;
    if (player1.contains(1) && player1.contains(2) && player1.contains(3)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(2) && player2.contains(3)) {
      winner = 2;
    }

    // row 2
    if (player1.contains(4) && player1.contains(5) && player1.contains(6)) {
      winner = 1;
    }
    if (player2.contains(4) && player2.contains(5) && player2.contains(6)) {
      winner = 2;
    }

    // row 3
    if (player1.contains(7) && player1.contains(8) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(7) && player2.contains(8) && player2.contains(9)) {
      winner = 2;
    }

    // col 1
    if (player1.contains(1) && player1.contains(4) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(4) && player2.contains(7)) {
      winner = 2;
    }

    // col 2
    if (player1.contains(2) && player1.contains(5) && player1.contains(8)) {
      winner = 1;
    }
    if (player2.contains(2) && player2.contains(5) && player2.contains(8)) {
      winner = 2;
    }

    // col 3
    if (player1.contains(3) && player1.contains(6) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(3) && player2.contains(6) && player2.contains(9)) {
      winner = 2;
    }

    //diagonal
    if (player1.contains(1) && player1.contains(5) && player1.contains(9)) {
      winner = 1;
    }
    if (player2.contains(1) && player2.contains(5) && player2.contains(9)) {
      winner = 2;
    }

    if (player1.contains(3) && player1.contains(5) && player1.contains(7)) {
      winner = 1;
    }
    if (player2.contains(3) && player2.contains(5) && player2.contains(7)) {
      winner = 2;
    }

    if (winner != -1) {
      if (winner == 1) {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeView(),
              ),
            );
            global.countA++;
            print(global.countA);
          });
       /* showDialog(
            context: context,
            builder: (_) =>
            new CustomDialog("YOU WON",
                "Try again", resetGame));*/
      } else {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeView(),
              ),
            );
            global.countB++;
            print(global.countB);
          });
       /*showDialog(
            context: context,
            builder: (_) =>
            new CustomDialog("YOU LOST",
                "Try again, you got it this time", resetGame));*/
      }
    }

    return winner;
  }

  void resetGame() {
    if (Navigator.canPop(context)) Navigator.pop(context);
    setState(() {
      buttonsList = doInit();
    });
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            SizedBox(height: 6,),


            new Expanded(
              child: new GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0),
                itemCount: buttonsList.length,
                itemBuilder: (context, i) =>
                new SizedBox(
                  width: 10.0,
                  height: 10.0,
                  child: new RaisedButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: buttonsList[i].enabled
                        ? () => playGame(buttonsList[i])
                        : null,
                    child: new Text(
                      buttonsList[i].text,
                      style: new TextStyle(
                          color: Colors.white, fontSize: 20.0),
                    ),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black)),
                    color: buttonsList[i].bg,
                    disabledColor: buttonsList[i].bg,
                  ),
                ),
              ),
            ),

            SizedBox(height: 4,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60.0),
              child: new RaisedButton(
                child: new Text(
                  "New Game",
                  style: new TextStyle(color: Colors.white, fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                color: Color.fromRGBO(40, 53, 146, 6),
                padding: const EdgeInsets.all(20.0),
                onPressed: (){
                  setState(() {
                    global.countA = 0;
                    global.countB = 0;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeView(),
                      ),
                    );
                  });
                },
              ),
            ),

          ],
        ));
  }
}