import 'package:flutter/material.dart';
import 'package:TheBigMac/views/donate/donation_info.dart';
import 'package:TheBigMac/widgets/DonationInfo/donation_info_card.dart';

class DonateContentMobile extends StatelessWidget {
  const DonateContentMobile({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            DonationInfoCard('Refund Forms', RefundFormsInfo, "no_url"),
            SizedBox(height: 20),
            DonationInfoCard('Donation Ticket', DonationTicketInfo, 'https://fixr.co/event/168966603'),
            SizedBox(height: 20),
            DonationInfoCard('RAG Percent', RAGInfo, 'https://wearepercent.com/cause/169110'),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}