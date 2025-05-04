import 'package:flutter/material.dart';
import 'package:form_app/statics/app_styles.dart';

class ToggleableNumberedButtonList extends StatefulWidget {
  final String label;
  final int count;
  final int selectedIndex; // Represents the 0-based index of the selected button (1-10) or -1 if none/disabled
  final ValueChanged<int> onItemSelected; // Callback when a button (1-10) is selected/deselected
  final bool initialEnabled; // Initial state of the checkbox
  final ValueChanged<bool> onEnabledChanged; // Callback when the checkbox state changes
  // New optional parameter to store the value when disabled (defaults to 0 as requested)
  final int valueWhenDisabled;

  const ToggleableNumberedButtonList({
    super.key,
    required this.label,
    required this.count,
    required this.selectedIndex,
    required this.onItemSelected,
    this.initialEnabled = true, // Default to enabled
    required this.onEnabledChanged,
    this.valueWhenDisabled = 0, // Default value when toggled off
  });

  @override
  State<ToggleableNumberedButtonList> createState() => _ToggleableNumberedButtonListState();
}

class _ToggleableNumberedButtonListState extends State<ToggleableNumberedButtonList> {
  late bool _isEnabled;

  @override
  void initState() {
    super.initState();
    _isEnabled = widget.initialEnabled;
  }

  // Handle checkbox changes
  void _handleCheckboxChange(bool? newValue) {
    final bool newEnabledState = newValue ?? false;
    if (_isEnabled != newEnabledState) {
      setState(() {
        _isEnabled = newEnabledState;
      });
      // Inform the parent widget about the change in enabled state
      widget.onEnabledChanged(_isEnabled);

      // If toggled OFF, also inform parent to deselect any active button
      if (!_isEnabled) {
        widget.onItemSelected(-1); // Send -1 to indicate deselection due to disable
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Determine colors based on enabled state
    final Color currentLabelColor = _isEnabled ? labelTextColor : Colors.grey.shade400;
    final Color currentButtonBorderColor = _isEnabled ? toggleOptionSelectedLengkapColor : Colors.grey.shade300;
    final Color currentButtonTextColor = _isEnabled ? Colors.black : Colors.grey.shade400;
    final Color currentDisabledBackgroundColor = Colors.grey.shade100; // Background for disabled buttons

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // --- Row for Checkbox and Label ---
        Row(
          children: [
            // Use SizedBox to constrain Checkbox size if needed, though visual might be close
            SizedBox(
              width: 18, // Set explicit width
              height: 18, // Set explicit height
              child: Checkbox(
                value: _isEnabled,
                onChanged: _handleCheckboxChange,
                activeColor: toggleOptionSelectedLengkapColor, // Blue color when checked
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap, // Reduce tap area
                visualDensity: VisualDensity.compact, // Make it more compact
                side: BorderSide( // Style border when unchecked
                  color: _isEnabled ? toggleOptionSelectedLengkapColor : Colors.grey.shade400,
                  width: 1.5,
                ),
              ),
            ),
            const SizedBox(width: 8), // Spacing between checkbox and label
            Text(
              widget.label,
              style: labelStyle.copyWith(color: currentLabelColor), // Adjust label color when disabled
            ),
            const Spacer(), // Push "Tidak Ada" pill to the right if present
             // --- "Tidak Ada" Pill (Conditionally Rendered) ---
             if (!_isEnabled)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: toggleOptionSelectedTidakColor, // Pink background
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Text(
                    'Tidak ada',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12, // 12px size
                      fontWeight: FontWeight.normal, // Normal weight
                    ),
                  ),
                ),
          ],
        ),
        const SizedBox(height: 10.0), // Spacing below label/checkbox row

        // --- Row for Numbered Buttons ---
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(widget.count, (index) {
            final itemNumber = index + 1;
            // Selection only matters if the component is enabled
            final isSelected = _isEnabled && (index == widget.selectedIndex);

            return Expanded(
              child: Padding(
                // Add slight horizontal padding between buttons
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: GestureDetector(
                  // Only allow taps if enabled
                  onTap: _isEnabled ? () => widget.onItemSelected(index) : null,
                  child: Container(
                    height: 35,
                    // width: 35, // Expanded handles width distribution
                    decoration: BoxDecoration(
                      // Use selected color if enabled AND selected, else use disabled/default background
                      color: isSelected
                          ? numberedButtonColors[itemNumber]
                          : (_isEnabled ? Colors.white : currentDisabledBackgroundColor),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: currentButtonBorderColor, // Use dynamic border color
                        width: 1.5, // Adjusted width slightly for visual balance
                      ),
                    ),
                    child: Center(
                      child: Text(
                        itemNumber.toString(),
                        style: TextStyle(
                          // Use white if selected, otherwise use dynamic text color
                          color: isSelected ? Colors.white : currentButtonTextColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}