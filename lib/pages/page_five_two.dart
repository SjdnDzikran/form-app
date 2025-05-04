import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_app/widgets/common_layout.dart';
import 'package:form_app/widgets/heading_one.dart';
import 'package:form_app/widgets/navigation_button_row.dart';
import 'package:form_app/widgets/page_number.dart';
import 'package:form_app/widgets/page_title.dart';
import 'package:form_app/widgets/footer.dart';
import 'package:form_app/pages/page_five_three.dart';
import 'package:form_app/providers/form_provider.dart';
import 'package:form_app/widgets/toggleable_numbered_button_list.dart';
import 'package:form_app/widgets/expandable_text_field.dart';

class PageFiveTwo extends ConsumerStatefulWidget {
  const PageFiveTwo({super.key});

  @override
  ConsumerState<PageFiveTwo> createState() => _PageFiveTwoState();
}

class _PageFiveTwoState extends ConsumerState<PageFiveTwo> {
  // State variables for ToggleableNumberedButtonList
  late int _getaranMesinSelectedIndex;
  late bool _getaranMesinIsEnabled;
  late int _suaraMesinSelectedIndex;
  late bool _suaraMesinIsEnabled;
  late int _transmisiSelectedIndex;
  late bool _transmisiIsEnabled;
  late int _pompaPowerSteeringSelectedIndex;
  late bool _pompaPowerSteeringIsEnabled;
  late int _coverTimingChainSelectedIndex;
  late bool _coverTimingChainIsEnabled;
  late int _oliPowerSteeringSelectedIndex;
  late bool _oliPowerSteeringIsEnabled;
  late int _accuSelectedIndex;
  late bool _accuIsEnabled;
  late int _kompressorAcSelectedIndex;
  late bool _kompressorAcIsEnabled;
  late int _fanSelectedIndex;
  late bool _fanIsEnabled;
  late int _selangSelectedIndex;
  late bool _selangIsEnabled;
  late int _karterOliSelectedIndex;
  late bool _karterOliIsEnabled;
  late int _oilRemSelectedIndex;
  late bool _oilRemIsEnabled;
  late int _kabelSelectedIndex;
  late bool _kabelIsEnabled;
  late int _kondensorSelectedIndex;
  late bool _kondensorIsEnabled;
  late int _radiatorSelectedIndex;
  late bool _radiatorIsEnabled;
  late int _cylinderHeadSelectedIndex;
  late bool _cylinderHeadIsEnabled;
  late int _oliMesinSelectedIndex;
  late bool _oliMesinIsEnabled;
  late int _airRadiatorSelectedIndex;
  late bool _airRadiatorIsEnabled;
  late int _coverKlepSelectedIndex;
  late bool _coverKlepIsEnabled;
  late int _alternatorSelectedIndex;
  late bool _alternatorIsEnabled;
  late int _waterPumpSelectedIndex;
  late bool _waterPumpIsEnabled;
  late int _beltSelectedIndex;
  late bool _beltIsEnabled;
  late int _oliTransmisiSelectedIndex;
  late bool _oliTransmisiIsEnabled;
  late int _cylinderBlockSelectedIndex;
  late bool _cylinderBlockIsEnabled;
  late int _bushingBesarSelectedIndex;
  late bool _bushingBesarIsEnabled;
  late int _bushingKecilSelectedIndex;
  late bool _bushingKecilIsEnabled;
  late int _tutupRadiatorSelectedIndex;
  late bool _tutupRadiatorIsEnabled;

  // State variable for ExpandableTextField
  late TextEditingController _mesinCatatanController;

  @override
  void initState() {
    super.initState();
    final formData = ref.read(formProvider);
    // Initialize state variables from formProvider
    _getaranMesinSelectedIndex = formData.getaranMesinSelectedIndex ?? 0;
    _getaranMesinIsEnabled = formData.getaranMesinIsEnabled ?? true;
    _suaraMesinSelectedIndex = formData.suaraMesinSelectedIndex ?? 0;
    _suaraMesinIsEnabled = formData.suaraMesinIsEnabled ?? true;
    _transmisiSelectedIndex = formData.transmisiSelectedIndex ?? 0;
    _transmisiIsEnabled = formData.transmisiIsEnabled ?? true;
    _pompaPowerSteeringSelectedIndex = formData.pompaPowerSteeringSelectedIndex ?? 0;
    _pompaPowerSteeringIsEnabled = formData.pompaPowerSteeringIsEnabled ?? true;
    _coverTimingChainSelectedIndex = formData.coverTimingChainSelectedIndex ?? 0;
    _coverTimingChainIsEnabled = formData.coverTimingChainIsEnabled ?? true;
    _oliPowerSteeringSelectedIndex = formData.oliPowerSteeringSelectedIndex ?? 0;
    _oliPowerSteeringIsEnabled = formData.oliPowerSteeringIsEnabled ?? true;
    _accuSelectedIndex = formData.accuSelectedIndex ?? 0;
    _accuIsEnabled = formData.accuIsEnabled ?? true;
    _kompressorAcSelectedIndex = formData.kompressorAcSelectedIndex ?? 0;
    _kompressorAcIsEnabled = formData.kompressorAcIsEnabled ?? true;
    _fanSelectedIndex = formData.fanSelectedIndex ?? 0;
    _fanIsEnabled = formData.fanIsEnabled ?? true;
    _selangSelectedIndex = formData.selangSelectedIndex ?? 0;
    _selangIsEnabled = formData.selangIsEnabled ?? true;
    _karterOliSelectedIndex = formData.karterOliSelectedIndex ?? 0;
    _karterOliIsEnabled = formData.karterOliIsEnabled ?? true;
    _oilRemSelectedIndex = formData.oilRemSelectedIndex ?? 0;
    _oilRemIsEnabled = formData.oilRemIsEnabled ?? true;
    _kabelSelectedIndex = formData.kabelSelectedIndex ?? 0;
    _kabelIsEnabled = formData.kabelIsEnabled ?? true;
    _kondensorSelectedIndex = formData.kondensorSelectedIndex ?? 0;
    _kondensorIsEnabled = formData.kondensorIsEnabled ?? true;
    _radiatorSelectedIndex = formData.radiatorSelectedIndex ?? 0;
    _radiatorIsEnabled = formData.radiatorIsEnabled ?? true;
    _cylinderHeadSelectedIndex = formData.cylinderHeadSelectedIndex ?? 0;
    _cylinderHeadIsEnabled = formData.cylinderHeadIsEnabled ?? true;
    _oliMesinSelectedIndex = formData.oliMesinSelectedIndex ?? 0;
    _oliMesinIsEnabled = formData.oliMesinIsEnabled ?? true;
    _airRadiatorSelectedIndex = formData.airRadiatorSelectedIndex ?? 0;
    _airRadiatorIsEnabled = formData.airRadiatorIsEnabled ?? true;
    _coverKlepSelectedIndex = formData.coverKlepSelectedIndex ?? 0;
    _coverKlepIsEnabled = formData.coverKlepIsEnabled ?? true;
    _alternatorSelectedIndex = formData.alternatorSelectedIndex ?? 0;
    _alternatorIsEnabled = formData.alternatorIsEnabled ?? true;
    _waterPumpSelectedIndex = formData.waterPumpSelectedIndex ?? 0;
    _waterPumpIsEnabled = formData.waterPumpIsEnabled ?? true;
    _beltSelectedIndex = formData.beltSelectedIndex ?? 0;
    _beltIsEnabled = formData.beltIsEnabled ?? true;
    _oliTransmisiSelectedIndex = formData.oliTransmisiSelectedIndex ?? 0;
    _oliTransmisiIsEnabled = formData.oliTransmisiIsEnabled ?? true;
    _cylinderBlockSelectedIndex = formData.cylinderBlockSelectedIndex ?? 0;
    _cylinderBlockIsEnabled = formData.cylinderBlockIsEnabled ?? true;
    _bushingBesarSelectedIndex = formData.bushingBesarSelectedIndex ?? 0;
    _bushingBesarIsEnabled = formData.bushingBesarIsEnabled ?? true;
    _bushingKecilSelectedIndex = formData.bushingKecilSelectedIndex ?? 0;
    _bushingKecilIsEnabled = formData.bushingKecilIsEnabled ?? true;
    _tutupRadiatorSelectedIndex = formData.tutupRadiatorSelectedIndex ?? 0;
    _tutupRadiatorIsEnabled = formData.tutupRadiatorIsEnabled ?? true;

    _mesinCatatanController = TextEditingController(text: formData.mesinCatatan ?? '');
  }

  @override
  void dispose() {
    _mesinCatatanController.dispose();
    super.dispose();
  }

  // Callback methods for ToggleableNumberedButtonList
  void _onGetaranMesinItemSelected(int index) {
    setState(() {
      _getaranMesinSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateGetaranMesinSelectedIndex(index);
  }

  void _onGetaranMesinEnabledChanged(bool enabled) {
    setState(() {
      _getaranMesinIsEnabled = enabled;
      if (!enabled) {
        _getaranMesinSelectedIndex = 0; // Set to 0 when disabled
      }
    });
    ref.read(formProvider.notifier).updateGetaranMesinIsEnabled(enabled);
    ref.read(formProvider.notifier).updateGetaranMesinSelectedIndex(_getaranMesinSelectedIndex);
  }

  void _onSuaraMesinItemSelected(int index) {
    setState(() {
      _suaraMesinSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateSuaraMesinSelectedIndex(index);
  }

  void _onSuaraMesinEnabledChanged(bool enabled) {
    setState(() {
      _suaraMesinIsEnabled = enabled;
      if (!enabled) {
        _suaraMesinSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateSuaraMesinIsEnabled(enabled);
    ref.read(formProvider.notifier).updateSuaraMesinSelectedIndex(_suaraMesinSelectedIndex);
  }

  void _onTransmisiItemSelected(int index) {
    setState(() {
      _transmisiSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateTransmisiSelectedIndex(index);
  }

  void _onTransmisiEnabledChanged(bool enabled) {
    setState(() {
      _transmisiIsEnabled = enabled;
      if (!enabled) {
        _transmisiSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateTransmisiIsEnabled(enabled);
    ref.read(formProvider.notifier).updateTransmisiSelectedIndex(_transmisiSelectedIndex);
  }

  void _onPompaPowerSteeringItemSelected(int index) {
    setState(() {
      _pompaPowerSteeringSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updatePompaPowerSteeringSelectedIndex(index);
  }

  void _onPompaPowerSteeringEnabledChanged(bool enabled) {
    setState(() {
      _pompaPowerSteeringIsEnabled = enabled;
      if (!enabled) {
        _pompaPowerSteeringSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updatePompaPowerSteeringIsEnabled(enabled);
    ref.read(formProvider.notifier).updatePompaPowerSteeringSelectedIndex(_pompaPowerSteeringSelectedIndex);
  }

  void _onCoverTimingChainItemSelected(int index) {
    setState(() {
      _coverTimingChainSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateCoverTimingChainSelectedIndex(index);
  }

  void _onCoverTimingChainEnabledChanged(bool enabled) {
    setState(() {
      _coverTimingChainIsEnabled = enabled;
      if (!enabled) {
        _coverTimingChainSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateCoverTimingChainIsEnabled(enabled);
    ref.read(formProvider.notifier).updateCoverTimingChainSelectedIndex(_coverTimingChainSelectedIndex);
  }

  void _onOliPowerSteeringItemSelected(int index) {
    setState(() {
      _oliPowerSteeringSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateOliPowerSteeringSelectedIndex(index);
  }

  void _onOliPowerSteeringEnabledChanged(bool enabled) {
    setState(() {
      _oliPowerSteeringIsEnabled = enabled;
      if (!enabled) {
        _oliPowerSteeringSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateOliPowerSteeringIsEnabled(enabled);
    ref.read(formProvider.notifier).updateOliPowerSteeringSelectedIndex(_oliPowerSteeringSelectedIndex);
  }

  void _onAccuItemSelected(int index) {
    setState(() {
      _accuSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateAccuSelectedIndex(index);
  }

  void _onAccuEnabledChanged(bool enabled) {
    setState(() {
      _accuIsEnabled = enabled;
      if (!enabled) {
        _accuSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateAccuIsEnabled(enabled);
    ref.read(formProvider.notifier).updateAccuSelectedIndex(_accuSelectedIndex);
  }

  void _onKompressorAcItemSelected(int index) {
    setState(() {
      _kompressorAcSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateKompressorAcSelectedIndex(index);
  }

  void _onKompressorAcEnabledChanged(bool enabled) {
    setState(() {
      _kompressorAcIsEnabled = enabled;
      if (!enabled) {
        _kompressorAcSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateKompressorAcIsEnabled(enabled);
    ref.read(formProvider.notifier).updateKompressorAcSelectedIndex(_kompressorAcSelectedIndex);
  }

  void _onFanItemSelected(int index) {
    setState(() {
      _fanSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateFanSelectedIndex(index);
  }

  void _onFanEnabledChanged(bool enabled) {
    setState(() {
      _fanIsEnabled = enabled;
      if (!enabled) {
        _fanSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateFanIsEnabled(enabled);
    ref.read(formProvider.notifier).updateFanSelectedIndex(_fanSelectedIndex);
  }

  void _onSelangItemSelected(int index) {
    setState(() {
      _selangSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateSelangSelectedIndex(index);
  }

  void _onSelangEnabledChanged(bool enabled) {
    setState(() {
      _selangIsEnabled = enabled;
      if (!enabled) {
        _selangSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateSelangIsEnabled(enabled);
    ref.read(formProvider.notifier).updateSelangSelectedIndex(_selangSelectedIndex);
  }

  void _onKarterOliItemSelected(int index) {
    setState(() {
      _karterOliSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateKarterOliSelectedIndex(index);
  }

  void _onKarterOliEnabledChanged(bool enabled) {
    setState(() {
      _karterOliIsEnabled = enabled;
      if (!enabled) {
        _karterOliSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateKarterOliIsEnabled(enabled);
    ref.read(formProvider.notifier).updateKarterOliSelectedIndex(_karterOliSelectedIndex);
  }

  void _onOilRemItemSelected(int index) {
    setState(() {
      _oilRemSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateOilRemSelectedIndex(index);
  }

  void _onOilRemEnabledChanged(bool enabled) {
    setState(() {
      _oilRemIsEnabled = enabled;
      if (!enabled) {
        _oilRemSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateOilRemIsEnabled(enabled);
    ref.read(formProvider.notifier).updateOilRemSelectedIndex(_oilRemSelectedIndex);
  }

  void _onKabelItemSelected(int index) {
    setState(() {
      _kabelSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateKabelSelectedIndex(index);
  }

  void _onKabelEnabledChanged(bool enabled) {
    setState(() {
      _kabelIsEnabled = enabled;
      if (!enabled) {
        _kabelSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateKabelIsEnabled(enabled);
    ref.read(formProvider.notifier).updateKabelSelectedIndex(_kabelSelectedIndex);
  }

  void _onKondensorItemSelected(int index) {
    setState(() {
      _kondensorSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateKondensorSelectedIndex(index);
  }

  void _onKondensorEnabledChanged(bool enabled) {
    setState(() {
      _kondensorIsEnabled = enabled;
      if (!enabled) {
        _kondensorSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateKondensorIsEnabled(enabled);
    ref.read(formProvider.notifier).updateKondensorSelectedIndex(_kondensorSelectedIndex);
  }

  void _onRadiatorItemSelected(int index) {
    setState(() {
      _radiatorSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateRadiatorSelectedIndex(index);
  }

  void _onRadiatorEnabledChanged(bool enabled) {
    setState(() {
      _radiatorIsEnabled = enabled;
      if (!enabled) {
        _radiatorSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateRadiatorIsEnabled(enabled);
    ref.read(formProvider.notifier).updateRadiatorSelectedIndex(_radiatorSelectedIndex);
  }

  void _onCylinderHeadItemSelected(int index) {
    setState(() {
      _cylinderHeadSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateCylinderHeadSelectedIndex(index);
  }

  void _onCylinderHeadEnabledChanged(bool enabled) {
    setState(() {
      _cylinderHeadIsEnabled = enabled;
      if (!enabled) {
        _cylinderHeadSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateCylinderHeadIsEnabled(enabled);
    ref.read(formProvider.notifier).updateCylinderHeadSelectedIndex(_cylinderHeadSelectedIndex);
  }

  void _onOliMesinItemSelected(int index) {
    setState(() {
      _oliMesinSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateOliMesinSelectedIndex(index);
  }

  void _onOliMesinEnabledChanged(bool enabled) {
    setState(() {
      _oliMesinIsEnabled = enabled;
      if (!enabled) {
        _oliMesinSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateOliMesinIsEnabled(enabled);
    ref.read(formProvider.notifier).updateOliMesinSelectedIndex(_oliMesinSelectedIndex);
  }

  void _onAirRadiatorItemSelected(int index) {
    setState(() {
      _airRadiatorSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateAirRadiatorSelectedIndex(index);
  }

  void _onAirRadiatorEnabledChanged(bool enabled) {
    setState(() {
      _airRadiatorIsEnabled = enabled;
      if (!enabled) {
        _airRadiatorSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateAirRadiatorIsEnabled(enabled);
    ref.read(formProvider.notifier).updateAirRadiatorSelectedIndex(_airRadiatorSelectedIndex);
  }

  void _onCoverKlepItemSelected(int index) {
    setState(() {
      _coverKlepSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateCoverKlepSelectedIndex(index);
  }

  void _onCoverKlepEnabledChanged(bool enabled) {
    setState(() {
      _coverKlepIsEnabled = enabled;
      if (!enabled) {
        _coverKlepSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateCoverKlepIsEnabled(enabled);
    ref.read(formProvider.notifier).updateCoverKlepSelectedIndex(_coverKlepSelectedIndex);
  }

  void _onAlternatorItemSelected(int index) {
    setState(() {
      _alternatorSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateAlternatorSelectedIndex(index);
  }

  void _onAlternatorEnabledChanged(bool enabled) {
    setState(() {
      _alternatorIsEnabled = enabled;
      if (!enabled) {
        _alternatorSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateAlternatorIsEnabled(enabled);
    ref.read(formProvider.notifier).updateAlternatorSelectedIndex(_alternatorSelectedIndex);
  }

  void _onWaterPumpItemSelected(int index) {
    setState(() {
      _waterPumpSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateWaterPumpSelectedIndex(index);
  }

  void _onWaterPumpEnabledChanged(bool enabled) {
    setState(() {
      _waterPumpIsEnabled = enabled;
      if (!enabled) {
        _waterPumpSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateWaterPumpIsEnabled(enabled);
    ref.read(formProvider.notifier).updateWaterPumpSelectedIndex(_waterPumpSelectedIndex);
  }

  void _onBeltItemSelected(int index) {
    setState(() {
      _beltSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateBeltSelectedIndex(index);
  }

  void _onBeltEnabledChanged(bool enabled) {
    setState(() {
      _beltIsEnabled = enabled;
      if (!enabled) {
        _beltSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateBeltIsEnabled(enabled);
    ref.read(formProvider.notifier).updateBeltSelectedIndex(_beltSelectedIndex);
  }

  void _onOliTransmisiItemSelected(int index) {
    setState(() {
      _oliTransmisiSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateOliTransmisiSelectedIndex(index);
  }

  void _onOliTransmisiEnabledChanged(bool enabled) {
    setState(() {
      _oliTransmisiIsEnabled = enabled;
      if (!enabled) {
        _oliTransmisiSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateOliTransmisiIsEnabled(enabled);
    ref.read(formProvider.notifier).updateOliTransmisiSelectedIndex(_oliTransmisiSelectedIndex);
  }

  void _onCylinderBlockItemSelected(int index) {
    setState(() {
      _cylinderBlockSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateCylinderBlockSelectedIndex(index);
  }

  void _onCylinderBlockEnabledChanged(bool enabled) {
    setState(() {
      _cylinderBlockIsEnabled = enabled;
      if (!enabled) {
        _cylinderBlockSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateCylinderBlockIsEnabled(enabled);
    ref.read(formProvider.notifier).updateCylinderBlockSelectedIndex(_cylinderBlockSelectedIndex);
  }

  void _onBushingBesarItemSelected(int index) {
    setState(() {
      _bushingBesarSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateBushingBesarSelectedIndex(index);
  }

  void _onBushingBesarEnabledChanged(bool enabled) {
    setState(() {
      _bushingBesarIsEnabled = enabled;
      if (!enabled) {
        _bushingBesarSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateBushingBesarIsEnabled(enabled);
    ref.read(formProvider.notifier).updateBushingBesarSelectedIndex(_bushingBesarSelectedIndex);
  }

  void _onBushingKecilItemSelected(int index) {
    setState(() {
      _bushingKecilSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateBushingKecilSelectedIndex(index);
  }

  void _onBushingKecilEnabledChanged(bool enabled) {
    setState(() {
      _bushingKecilIsEnabled = enabled;
      if (!enabled) {
        _bushingKecilSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateBushingKecilIsEnabled(enabled);
    ref.read(formProvider.notifier).updateBushingKecilSelectedIndex(_bushingKecilSelectedIndex);
  }

  void _onTutupRadiatorItemSelected(int index) {
    setState(() {
      _tutupRadiatorSelectedIndex = index;
    });
    ref.read(formProvider.notifier).updateTutupRadiatorSelectedIndex(index);
  }

  void _onTutupRadiatorEnabledChanged(bool enabled) {
    setState(() {
      _tutupRadiatorIsEnabled = enabled;
      if (!enabled) {
        _tutupRadiatorSelectedIndex = 0;
      }
    });
    ref.read(formProvider.notifier).updateTutupRadiatorIsEnabled(enabled);
    ref.read(formProvider.notifier).updateTutupRadiatorSelectedIndex(_tutupRadiatorSelectedIndex);
  }

  // Callback method for ExpandableTextField
  void _onMesinCatatanChanged(List<String> lines) {
    ref.read(formProvider.notifier).updateMesinCatatan(lines.join('\n'));
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
                  PageNumber(data: '5/9'), // Assuming this page is still 5/9 or needs adjustment
                  const SizedBox(height: 8.0),
                  PageTitle(data: 'Penilaian'),
                  const SizedBox(height: 24.0),
                  const HeadingOne(text: 'Hasil Inspeksi Mesin'),
                  const SizedBox(height: 16.0),

                  // ToggleableNumberedButtonList widgets
                  ToggleableNumberedButtonList(
                    label: 'Getaran Mesin',
                    count: 10,
                    selectedIndex: _getaranMesinSelectedIndex,
                    onItemSelected: _onGetaranMesinItemSelected,
                    initialEnabled: _getaranMesinIsEnabled,
                    onEnabledChanged: _onGetaranMesinEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Suara Mesin',
                    count: 10,
                    selectedIndex: _suaraMesinSelectedIndex,
                    onItemSelected: _onSuaraMesinItemSelected,
                    initialEnabled: _suaraMesinIsEnabled,
                    onEnabledChanged: _onSuaraMesinEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Transmisi',
                    count: 10,
                    selectedIndex: _transmisiSelectedIndex,
                    onItemSelected: _onTransmisiItemSelected,
                    initialEnabled: _transmisiIsEnabled,
                    onEnabledChanged: _onTransmisiEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Pompa Power Steering',
                    count: 10,
                    selectedIndex: _pompaPowerSteeringSelectedIndex,
                    onItemSelected: _onPompaPowerSteeringItemSelected,
                    initialEnabled: _pompaPowerSteeringIsEnabled,
                    onEnabledChanged: _onPompaPowerSteeringEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Cover Timing Chain',
                    count: 10,
                    selectedIndex: _coverTimingChainSelectedIndex,
                    onItemSelected: _onCoverTimingChainItemSelected,
                    initialEnabled: _coverTimingChainIsEnabled,
                    onEnabledChanged: _onCoverTimingChainEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Oli Power Steering',
                    count: 10,
                    selectedIndex: _oliPowerSteeringSelectedIndex,
                    onItemSelected: _onOliPowerSteeringItemSelected,
                    initialEnabled: _oliPowerSteeringIsEnabled,
                    onEnabledChanged: _onOliPowerSteeringEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Accu',
                    count: 10,
                    selectedIndex: _accuSelectedIndex,
                    onItemSelected: _onAccuItemSelected,
                    initialEnabled: _accuIsEnabled,
                    onEnabledChanged: _onAccuEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Kompressor AC',
                    count: 10,
                    selectedIndex: _kompressorAcSelectedIndex,
                    onItemSelected: _onKompressorAcItemSelected,
                    initialEnabled: _kompressorAcIsEnabled,
                    onEnabledChanged: _onKompressorAcEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Fan',
                    count: 10,
                    selectedIndex: _fanSelectedIndex,
                    onItemSelected: _onFanItemSelected,
                    initialEnabled: _fanIsEnabled,
                    onEnabledChanged: _onFanEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Selang',
                    count: 10,
                    selectedIndex: _selangSelectedIndex,
                    onItemSelected: _onSelangItemSelected,
                    initialEnabled: _selangIsEnabled,
                    onEnabledChanged: _onSelangEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Karter Oli',
                    count: 10,
                    selectedIndex: _karterOliSelectedIndex,
                    onItemSelected: _onKarterOliItemSelected,
                    initialEnabled: _karterOliIsEnabled,
                    onEnabledChanged: _onKarterOliEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Oil Rem',
                    count: 10,
                    selectedIndex: _oilRemSelectedIndex,
                    onItemSelected: _onOilRemItemSelected,
                    initialEnabled: _oilRemIsEnabled,
                    onEnabledChanged: _onOilRemEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Kabel',
                    count: 10,
                    selectedIndex: _kabelSelectedIndex,
                    onItemSelected: _onKabelItemSelected,
                    initialEnabled: _kabelIsEnabled,
                    onEnabledChanged: _onKabelEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Kondensor',
                    count: 10,
                    selectedIndex: _kondensorSelectedIndex,
                    onItemSelected: _onKondensorItemSelected,
                    initialEnabled: _kondensorIsEnabled,
                    onEnabledChanged: _onKondensorEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Radiator',
                    count: 10,
                    selectedIndex: _radiatorSelectedIndex,
                    onItemSelected: _onRadiatorItemSelected,
                    initialEnabled: _radiatorIsEnabled,
                    onEnabledChanged: _onRadiatorEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Cylinder Head',
                    count: 10,
                    selectedIndex: _cylinderHeadSelectedIndex,
                    onItemSelected: _onCylinderHeadItemSelected,
                    initialEnabled: _cylinderHeadIsEnabled,
                    onEnabledChanged: _onCylinderHeadEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Oli Mesin',
                    count: 10,
                    selectedIndex: _oliMesinSelectedIndex,
                    onItemSelected: _onOliMesinItemSelected,
                    initialEnabled: _oliMesinIsEnabled,
                    onEnabledChanged: _onOliMesinEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Air Radiator',
                    count: 10,
                    selectedIndex: _airRadiatorSelectedIndex,
                    onItemSelected: _onAirRadiatorItemSelected,
                    initialEnabled: _airRadiatorIsEnabled,
                    onEnabledChanged: _onAirRadiatorEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Cover Klep',
                    count: 10,
                    selectedIndex: _coverKlepSelectedIndex,
                    onItemSelected: _onCoverKlepItemSelected,
                    initialEnabled: _coverKlepIsEnabled,
                    onEnabledChanged: _onCoverKlepEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Alternator',
                    count: 10,
                    selectedIndex: _alternatorSelectedIndex,
                    onItemSelected: _onAlternatorItemSelected,
                    initialEnabled: _alternatorIsEnabled,
                    onEnabledChanged: _onAlternatorEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Water Pump',
                    count: 10,
                    selectedIndex: _waterPumpSelectedIndex,
                    onItemSelected: _onWaterPumpItemSelected,
                    initialEnabled: _waterPumpIsEnabled,
                    onEnabledChanged: _onWaterPumpEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Belt',
                    count: 10,
                    selectedIndex: _beltSelectedIndex,
                    onItemSelected: _onBeltItemSelected,
                    initialEnabled: _beltIsEnabled,
                    onEnabledChanged: _onBeltEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Oli Transmisi',
                    count: 10,
                    selectedIndex: _oliTransmisiSelectedIndex,
                    onItemSelected: _onOliTransmisiItemSelected,
                    initialEnabled: _oliTransmisiIsEnabled,
                    onEnabledChanged: _onOliTransmisiEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Cylinder Block',
                    count: 10,
                    selectedIndex: _cylinderBlockSelectedIndex,
                    onItemSelected: _onCylinderBlockItemSelected,
                    initialEnabled: _cylinderBlockIsEnabled,
                    onEnabledChanged: _onCylinderBlockEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Bushing Besar',
                    count: 10,
                    selectedIndex: _bushingBesarSelectedIndex,
                    onItemSelected: _onBushingBesarItemSelected,
                    initialEnabled: _bushingBesarIsEnabled,
                    onEnabledChanged: _onBushingBesarEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Bushing Kecil',
                    count: 10,
                    selectedIndex: _bushingKecilSelectedIndex,
                    onItemSelected: _onBushingKecilItemSelected,
                    initialEnabled: _bushingKecilIsEnabled,
                    onEnabledChanged: _onBushingKecilEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),
                  ToggleableNumberedButtonList(
                    label: 'Tutup Radiator',
                    count: 10,
                    selectedIndex: _tutupRadiatorSelectedIndex,
                    onItemSelected: _onTutupRadiatorItemSelected,
                    initialEnabled: _tutupRadiatorIsEnabled,
                    onEnabledChanged: _onTutupRadiatorEnabledChanged,
                  ),
                  const SizedBox(height: 16.0),

                  // ExpandableTextField
                  ExpandableTextField(
                    label: 'Catatan',
                    hintText: 'Masukkan catatan di sini',
                    controller: _mesinCatatanController,
                    onChangedList: _onMesinCatatanChanged,
                  ),
                  const SizedBox(height: 32.0),

                  NavigationButtonRow(
                    onBackPressed: () => Navigator.pop(context),
                    onNextPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const PageFiveThree()),
                      );
                    },
                  ),
                  const SizedBox(height: 32.0),
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
