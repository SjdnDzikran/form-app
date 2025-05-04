import 'package:flutter/material.dart';
import 'package:form_app/widgets/common_layout.dart';
import 'package:form_app/widgets/heading_one.dart';
import 'package:form_app/widgets/navigation_button_row.dart';
import 'package:form_app/widgets/page_number.dart';
import 'package:form_app/widgets/page_title.dart';
import 'package:form_app/widgets/footer.dart';
import 'package:form_app/pages/page_five_two.dart';
import 'package:form_app/widgets/toggleable_numbered_button_list.dart';

class PageFiveOne extends StatefulWidget {
  const PageFiveOne({super.key});

  @override
  State<PageFiveOne> createState() => _PageFiveOneState();
}

class _PageFiveOneState extends State<PageFiveOne> {
  int _selectedIndex = -1;
  bool _isEnabled = true;

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onEnabledChanged(bool enabled) {
    setState(() {
      _isEnabled = enabled;
      if (!enabled) {
        _selectedIndex = -1; // Reset selected index when disabled
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CommonLayout(
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PageNumber(data: '5'),
                  const SizedBox(height: 8.0),
                  PageTitle(data: 'Page Five - Part 1'), // Placeholder Title
                  const SizedBox(height: 24.0),
                  HeadingOne(text: 'Fitur'),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Airbag',
                    count: 10,
                    selectedIndex: _selectedIndex,
                    onItemSelected: _onItemSelected,
                    initialEnabled: _isEnabled,
                    onEnabledChanged: _onEnabledChanged,
                  ),
                  const SizedBox(height: 32.0),
                  NavigationButtonRow(
                    onBackPressed: () => Navigator.pop(context),
                    onNextPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PageFiveTwo()),
                      );
                    },
                  ),
                  const SizedBox(height: 32.0), // Optional spacing below the content
                  // Footer
                  Footer(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
