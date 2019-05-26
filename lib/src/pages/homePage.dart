import 'package:flutter_web/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Material(
      color: Color(0xFF262626),
      child: size.width >= 1200
          ? _wideScreenDesign(size)
          : _smallScreenDesign(size),
    );
  }

  // Wide screen layout
  Widget _wideScreenDesign(Size size) {
    return Padding(
      padding: const EdgeInsets.only(left: 70),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(top: 70, bottom: 70),
                width: 233,
                child: Image.asset('images/knightowl_w.png'),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: size.height * .2),
                      Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Text(
                          'App Developer\nUI/UX Designer',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: size.width * .04,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Text(
                          'Design is so simple,\nThat\'s why it\'s so complicated!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 16),
                        width: size.width * .1,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: size.height * .13),
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40,
                            child: Image.asset('images/mouse.png'),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              'Scroll to know more',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * .13),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'WHO AM I?',
                          style: TextStyle(
                            fontSize: 43,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: size.width * .05,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: size.height * .06),
                        child: Text(
                          'I am Rahul Kumar, from New Delhi, India\nI work as a freelance App Developer & digital UX expert.\nI create tailor-made UI and concepts with focus on user experience.\nI love Coffee & Owls.',
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: size.height * .13),
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'WHAT I DO?',
                          style: TextStyle(
                            fontSize: 43,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 12),
                        width: size.width * .05,
                        height: 4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: size.width * .3,
                    margin: EdgeInsets.only(right: 16),
                    child: Image.asset('images/owl_cover.png'),
                    transform: Matrix4.rotationZ(-0.1),
                  ),
                ],
              ),
            ),
            _whatIDo(
              size: size,
              imageUrl: 'images/vector.png',
              tagline: '"I design for Humans!"',
              message:
                  "I am passionate about Design thinking. It's more than 5+ years since I'm designing beautiful UI/UX for different companies. It's my job to make things simple.",
            ),
            SizedBox(height: size.height * .03),
            _whatIDo(
              size: size,
              imageUrl: 'images/programming.png',
              tagline: '"How you look at it is pretty much how you\'ll see it"',
              message:
                  "I stated programming when I was 12 years old. I develop Mobile Apps, with design in mind. I've been developing apps for more than 3+ years. I use Flutter to develop apps for both iOS & Android.",
            ),
            SizedBox(height: size.height * .03),
            _whatIDo(
              size: size,
              imageUrl: 'images/idea.png',
              tagline:
                  '"If you cannot discover new things, upgrade the old ones"',
              message:
                  "I also work for developing ideas, If you have any idea, I have design for it! Share your ideas, we can build it together.",
            ),
            SizedBox(height: size.height * .13),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      'CONTACT ME',
                      style: TextStyle(
                        fontSize: 43,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    width: size.width * .05,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * .06),
                    child: Text(
                      'Let\s start something new!',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: size.height * .01),
                    child: Text(
                      'Drop me a message..',
                      style: TextStyle(
                        fontSize: 44,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: size.height * .1),
            Row(
              children: <Widget>[
                Expanded(child: Center()),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('images/linkedin.png'),
                ),
                SizedBox(width: 16),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('images/messenger.png'),
                ),
                SizedBox(width: 16),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('images/skype.png'),
                ),
                SizedBox(width: 16),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('images/twitter.png'),
                ),
                SizedBox(width: 16),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('images/whatsapp.png'),
                ),
                Expanded(child: Center()),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 28),
              child: Text(
                'Copyright © Rahul Kumar. All Rights Reserved',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // small screen layout
  Widget _smallScreenDesign(Size size) {
    return Container(
      padding: EdgeInsets.only(left: 70, right: 24),
      child: Stack(
        children: <Widget>[
          Positioned(
            right: 24,
            bottom: 24,
            child: Container(
              margin: EdgeInsets.only(top: 70, bottom: 70),
              width: size.width * .3,
              child: Image.asset('images/owl_cover.png'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 70, bottom: 70),
                width: 233,
                child: Image.asset('images/knightowl_w.png'),
              ),
              Padding(
                padding: EdgeInsets.only(top: size.height * .06),
                child: Text(
                  'I Design & Develop\nMobile Apps',
                  style: TextStyle(
                    fontSize:size.width >= 200 ? 38 :size.width * .04,
                    color: Colors.white,
                  ),
                ),
              ),
              Expanded(child: Center()),
              Padding(
                padding: EdgeInsets.only(top: size.height * .06),
                child: Text(
                  'Design.\nThinking.\nOvernight.',
                  style: TextStyle(
                    fontSize:size.width >= 200 ? 48 :size.width * .06,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 70),
            ],
          ),
        ],
      ),
    );
  }

  Widget _whatIDo(
      {Size size, String message, String tagline, String imageUrl}) {
    return Container(
      margin: EdgeInsets.only(top: size.height * .06),
      child: Row(
        children: <Widget>[
          Container(
            height: 80,
            child: Image.asset(imageUrl),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.only(
                  left: size.height * .06, right: size.height * .5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    tagline,
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontStyle: FontStyle.italic),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
