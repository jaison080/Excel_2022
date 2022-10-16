import 'package:cached_network_image/cached_network_image.dart';
import 'package:excelapp/Models/event_details.dart';
import 'package:excelapp/UI/Screens/EventPage/Widgets/eventDescription.dart';
import 'package:excelapp/UI/Screens/EventPage/Widgets/eventDetails.dart';
import 'package:excelapp/UI/Screens/EventPage/Widgets/registerButton.dart';
import 'package:flutter/material.dart';
import 'moreDetailsPage.dart';
import 'backgroundImage.dart';
import 'package:excelapp/UI/constants.dart';
import 'package:excelapp/UI/Components/LikeButton/likeButton.dart';

class EventPageBody extends StatelessWidget {
  final EventDetails eventDetails;
  EventPageBody({this.eventDetails});

  @override
  Widget build(BuildContext context) {
    Widget registerButton;

//     if (eventDetails.needRegistration == 0 && eventDetails.button == null)
//       registerButton = SizedBox();
//     else
//       registerButton = RegisterButton(eventDetails: eventDetails);

    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    Color textColor = Color(0xFF1C1F20);
    return Scaffold(
      backgroundColor: Colors.white,
      body: 
          // Event Info
          Container(
            height: deviceHeight,
            // width: deviceWidth,
            child: Column(
              children: <Widget>[
                // Top Area
                SafeArea(
                  bottom: false,
                  child: Container(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // height: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                            icon: new Icon(Icons.arrow_back),
                            iconSize: 30.0,
                            color: Color(0xFF1C1F20),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              padding: EdgeInsets.fromLTRB(deviceWidth / 11.636,
                                  deviceHeight / 83.7, 0, deviceHeight / 83.7),
          
                              // height: 100,
                              width: deviceWidth / 1.910,
          
                              child: Text(
                                eventDetails.name,
                                textAlign: TextAlign.justify,
                                maxLines: 3,
                                style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  decoration: TextDecoration.none,
                                  fontFamily: pfontFamily,
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.w900,
                                  color: textColor,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 24, 0),
                      child: Hero(
                        tag: 'eventIcon1',
                        child: Container(
                          height: deviceHeight / 12.13,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Container(
                              child: Image.asset(eventDetails
                                  .icon),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
          
                //Event Details
          
                getEventDetails(
                    eventDetails: eventDetails,
                    detailed: true,
                    height: deviceHeight / 12.681,
                    width: deviceWidth / 2.477),
          
                Expanded(
                  child: Container(                  
                    child: MoreEventDetails(
                      eventDetails: eventDetails,
                    ),
                  ),
                ),
          
                // For Hero Widget
              ],
            ),
          ),
    );
  }
}
