import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Icon(
            Icons.more_vert_rounded,
            color: Colors.white,
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(22),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Row(
                children: [
                  Expanded(
                      child: RichText(
                          text: TextSpan(children: [
                    TextSpan(
                        text: 'Username\n',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w500)),
                    TextSpan(
                        text: 'Last Seen',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                  ]))),
                  CircleAvatar(
                    child: Icon(
                      color: Colors.white,
                      Icons.video_call_rounded,
                    ),
                    backgroundColor: Colors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    child: Icon(
                      color: Colors.white,
                      Icons.call,
                    ),
                    backgroundColor: Colors.black,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return Directionality(
                      textDirection:
                          index.isEven ? TextDirection.rtl : TextDirection.ltr,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 8),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  index.isEven ? Colors.grey : Colors.black,
                              child: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color:
                                      index.isEven ? Colors.grey : Colors.black,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Directionality(
                                  textDirection: TextDirection.ltr,
                                  child: Text(
                                    'Hello this is a dummy message here',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Directionality(
                              textDirection: TextDirection.ltr,
                              child: Text(
                                '11:00 AM',
                                style: TextStyle(
                                    color: index.isEven
                                        ? Colors.grey
                                        : Colors.black),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 54,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            16,
                          ),
                          color: Colors.black),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            suffixIcon: Icon(
                              Icons.attachment_rounded,
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(
                              Icons.emoji_emotions_rounded,
                              color: Colors.white,
                            ),
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                            hintText: 'Type your message here'),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                      backgroundColor: Colors.black,
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
