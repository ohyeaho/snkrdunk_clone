import 'package:flutter/material.dart';
import 'package:snkrdunk_clone/components/calendar_button.dart';

class MediaPageCalendar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> mediaPageCalendar = <Widget>[
      CalendarButton(
        month: '7',
        day: '5(月)',
        image: 'https://cdn.snkrdunk.com/uploads/media/20210525034858-4.jpeg',
        topicText:
            '7/5発売 OFF-WHITE × NIKE AIR FORCE 1 "UNIVERSITY GOLD" 抽選/定価/販売店舗まとめ',
        price: '\$150',
      ),
      CalendarButton(
        month: '7',
        day: '5(月)',
        image: 'https://cdn.snkrdunk.com/uploads/media/20210525034858-4.jpeg',
        topicText:
            '7/5発売 OFF-WHITE × NIKE AIR FORCE 1 "UNIVERSITY GOLD" 抽選/定価/販売店舗まとめ',
        price: '\$150',
      ),
      CalendarButton(
        month: '7',
        day: '5(月)',
        image: 'https://cdn.snkrdunk.com/uploads/media/20210525034858-4.jpeg',
        topicText:
            '7/5発売 OFF-WHITE × NIKE AIR FORCE 1 "UNIVERSITY GOLD" 抽選/定価/販売店舗まとめ',
        price: '\$150',
      ),
    ];

    return ListView(children: mediaPageCalendar);
  }
}
