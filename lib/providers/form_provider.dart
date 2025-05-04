import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_app/models/form_data.dart';

class FormNotifier extends StateNotifier<FormData> {
  FormNotifier() : super(FormData());

  void updateNamaInspektor(String name) {
    state = state.copyWith(namaInspektor: name);
  }

  void updateNamaCustomer(String name) {
    state = state.copyWith(namaCustomer: name);
  }

  void updateCabangInspeksi(String cabang) {
    state = state.copyWith(cabangInspeksi: cabang);
  }

  void updateTanggalInspeksi(DateTime? date) {
    state = state.copyWith(tanggalInspeksi: date);
  }

  void updateMerekKendaraan(String merek) {
    state = state.copyWith(merekKendaraan: merek);
  }

  void updateTipeKendaraan(String tipe) {
    state = state.copyWith(tipeKendaraan: tipe);
  }

  void updateTahun(String tahun) {
    state = state.copyWith(tahun: tahun);
  }

  void updateTransmisi(String transmisi) {
    state = state.copyWith(transmisi: transmisi);
  }

  void updateWarnaKendaraan(String warna) {
    state = state.copyWith(warnaKendaraan: warna);
  }

  void updateOdometer(String odometer) {
    state = state.copyWith(odometer: odometer);
  }

  void updateKepemilikan(String kepemilikan) {
    state = state.copyWith(kepemilikan: kepemilikan);
  }

  void updatePlatNomor(String platNomor) {
    state = state.copyWith(platNomor: platNomor);
  }

  void updatePajak1TahunDate(DateTime? date) {
    state = state.copyWith(pajak1TahunDate: date);
  }

  void updatePajak5TahunDate(DateTime? date) {
    state = state.copyWith(pajak5TahunDate: date);
  }

  void updateBiayaPajak(String biaya) {
    state = state.copyWith(biayaPajak: biaya);
  }

  // Page Three Update Methods
  void updateBukuService(String? value) {
    state = state.copyWith(bukuService: value);
  }

  void updateKunciSerep(String? value) {
    state = state.copyWith(kunciSerep: value);
  }

  void updateBukuManual(String? value) {
    state = state.copyWith(bukuManual: value);
  }

  void updateBanSerep(String? value) {
    state = state.copyWith(banSerep: value);
  }

  void updateBpkp(String? value) {
    state = state.copyWith(bpkp: value);
  }

  void updateDongkrak(String? value) {
    state = state.copyWith(dongkrak: value);
  }

  void updateToolkit(String? value) {
    state = state.copyWith(toolkit: value);
  }

  void updateNoRangka(String? value) {
    state = state.copyWith(noRangka: value);
  }

  void updateNoMesin(String? value) {
    state = state.copyWith(noMesin: value);
  }

  // New update methods for Page Four
  void updateIndikasiTabrakan(String? value) {
    state = state.copyWith(indikasiTabrakan: value);
  }

  void updateIndikasiBanjir(String? value) {
    state = state.copyWith(indikasiBanjir: value);
  }

  void updateIndikasiOdometerReset(String? value) {
    state = state.copyWith(indikasiOdometerReset: value);
  }

  void updatePosisiBan(String? value) {
    state = state.copyWith(posisiBan: value);
  }

  void updateMerk(String? value) {
    state = state.copyWith(merk: value);
  }

  void updateTipeVelg(String? value) {
    state = state.copyWith(tipeVelg: value);
  }

  void updateKetebalan(String? value) {
    state = state.copyWith(ketebalan: value);
  }

  // New update methods for selected indices
  void updateInteriorSelectedIndex(int index) {
    state = state.copyWith(interiorSelectedIndex: index);
  }

  void updateEksteriorSelectedIndex(int index) {
    state = state.copyWith(eksteriorSelectedIndex: index);
  }

  void updateKakiKakiSelectedIndex(int index) {
    state = state.copyWith(kakiKakiSelectedIndex: index);
  }

  void updateMesinSelectedIndex(int index) {
    state = state.copyWith(mesinSelectedIndex: index);
  }

  void updatePenilaianKeseluruhanSelectedIndex(int index) {
    state = state.copyWith(penilaianKeseluruhanSelectedIndex: index);
  }

  // NEW: Update methods for ExpandableTextField data
  void updateKeteranganInterior(List<String> lines) {
    state = state.copyWith(keteranganInterior: lines);
  }

  void updateKeteranganEksterior(List<String> lines) {
    state = state.copyWith(keteranganEksterior: lines);
  }

  void updateKeteranganKakiKaki(List<String> lines) {
    state = state.copyWith(keteranganKakiKaki: lines);
  }

  void updateKeteranganMesin(List<String> lines) {
    state = state.copyWith(keteranganMesin: lines);
  }

  void updateDeskripsiKeseluruhan(List<String> lines) {
    state = state.copyWith(deskripsiKeseluruhan: lines);
  }

  // New update methods for Page Five One
  void updateAirbagSelectedIndex(int? index) {
    state = state.copyWith(airbagSelectedIndex: index);
  }

  void updateAirbagIsEnabled(bool? enabled) {
    state = state.copyWith(airbagIsEnabled: enabled);
  }

  void updateSistemAudioSelectedIndex(int? index) {
    state = state.copyWith(sistemAudioSelectedIndex: index);
  }

  void updateSistemAudioIsEnabled(bool? enabled) {
    state = state.copyWith(sistemAudioIsEnabled: enabled);
  }

  void updatePowerWindowSelectedIndex(int? index) {
    state = state.copyWith(powerWindowSelectedIndex: index);
  }

  void updatePowerWindowIsEnabled(bool? enabled) {
    state = state.copyWith(powerWindowIsEnabled: enabled);
  }

  void updateSistemAcSelectedIndex(int? index) {
    state = state.copyWith(sistemAcSelectedIndex: index);
  }

  void updateSistemAcIsEnabled(bool? enabled) {
    state = state.copyWith(sistemAcIsEnabled: enabled);
  }

  void updateFiturCatatan(String? text) {
    state = state.copyWith(fiturCatatan: text);
  }

  // New update methods for Page Five Two
  void updateGetaranMesinSelectedIndex(int? index) {
    state = state.copyWith(getaranMesinSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateGetaranMesinIsEnabled(bool? enabled) {
    state = state.copyWith(getaranMesinIsEnabled: enabled);
  }

  void updateSuaraMesinSelectedIndex(int? index) {
    state = state.copyWith(suaraMesinSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateSuaraMesinIsEnabled(bool? enabled) {
    state = state.copyWith(suaraMesinIsEnabled: enabled);
  }

  void updateTransmisiSelectedIndex(int? index) {
    state = state.copyWith(transmisiSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateTransmisiIsEnabled(bool? enabled) {
    state = state.copyWith(transmisiIsEnabled: enabled);
  }

  void updatePompaPowerSteeringSelectedIndex(int? index) {
    state = state.copyWith(pompaPowerSteeringSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updatePompaPowerSteeringIsEnabled(bool? enabled) {
    state = state.copyWith(pompaPowerSteeringIsEnabled: enabled);
  }

  void updateCoverTimingChainSelectedIndex(int? index) {
    state = state.copyWith(coverTimingChainSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateCoverTimingChainIsEnabled(bool? enabled) {
    state = state.copyWith(coverTimingChainIsEnabled: enabled);
  }

  void updateOliPowerSteeringSelectedIndex(int? index) {
    state = state.copyWith(oliPowerSteeringSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateOliPowerSteeringIsEnabled(bool? enabled) {
    state = state.copyWith(oliPowerSteeringIsEnabled: enabled);
  }

  void updateAccuSelectedIndex(int? index) {
    state = state.copyWith(accuSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateAccuIsEnabled(bool? enabled) {
    state = state.copyWith(accuIsEnabled: enabled);
  }

  void updateKompressorAcSelectedIndex(int? index) {
    state = state.copyWith(kompressorAcSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateKompressorAcIsEnabled(bool? enabled) {
    state = state.copyWith(kompressorAcIsEnabled: enabled);
  }

  void updateFanSelectedIndex(int? index) {
    state = state.copyWith(fanSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateFanIsEnabled(bool? enabled) {
    state = state.copyWith(fanIsEnabled: enabled);
  }

  void updateSelangSelectedIndex(int? index) {
    state = state.copyWith(selangSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateSelangIsEnabled(bool? enabled) {
    state = state.copyWith(selangIsEnabled: enabled);
  }

  void updateKarterOliSelectedIndex(int? index) {
    state = state.copyWith(karterOliSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateKarterOliIsEnabled(bool? enabled) {
    state = state.copyWith(karterOliIsEnabled: enabled);
  }

  void updateOilRemSelectedIndex(int? index) {
    state = state.copyWith(oilRemSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateOilRemIsEnabled(bool? enabled) {
    state = state.copyWith(oilRemIsEnabled: enabled);
  }

  void updateKabelSelectedIndex(int? index) {
    state = state.copyWith(kabelSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateKabelIsEnabled(bool? enabled) {
    state = state.copyWith(kabelIsEnabled: enabled);
  }

  void updateKondensorSelectedIndex(int? index) {
    state = state.copyWith(kondensorSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateKondensorIsEnabled(bool? enabled) {
    state = state.copyWith(kondensorIsEnabled: enabled);
  }

  void updateRadiatorSelectedIndex(int? index) {
    state = state.copyWith(radiatorSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateRadiatorIsEnabled(bool? enabled) {
    state = state.copyWith(radiatorIsEnabled: enabled);
  }

  void updateCylinderHeadSelectedIndex(int? index) {
    state = state.copyWith(cylinderHeadSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateCylinderHeadIsEnabled(bool? enabled) {
    state = state.copyWith(cylinderHeadIsEnabled: enabled);
  }

  void updateOliMesinSelectedIndex(int? index) {
    state = state.copyWith(oliMesinSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateOliMesinIsEnabled(bool? enabled) {
    state = state.copyWith(oliMesinIsEnabled: enabled);
  }

  void updateAirRadiatorSelectedIndex(int? index) {
    state = state.copyWith(airRadiatorSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateAirRadiatorIsEnabled(bool? enabled) {
    state = state.copyWith(airRadiatorIsEnabled: enabled);
  }

  void updateCoverKlepSelectedIndex(int? index) {
    state = state.copyWith(coverKlepSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateCoverKlepIsEnabled(bool? enabled) {
    state = state.copyWith(coverKlepIsEnabled: enabled);
  }

  void updateAlternatorSelectedIndex(int? index) {
    state = state.copyWith(alternatorSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateAlternatorIsEnabled(bool? enabled) {
    state = state.copyWith(alternatorIsEnabled: enabled);
  }

  void updateWaterPumpSelectedIndex(int? index) {
    state = state.copyWith(waterPumpSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateWaterPumpIsEnabled(bool? enabled) {
    state = state.copyWith(waterPumpIsEnabled: enabled);
  }

  void updateBeltSelectedIndex(int? index) {
    state = state.copyWith(beltSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateBeltIsEnabled(bool? enabled) {
    state = state.copyWith(beltIsEnabled: enabled);
  }

  void updateOliTransmisiSelectedIndex(int? index) {
    state = state.copyWith(oliTransmisiSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateOliTransmisiIsEnabled(bool? enabled) {
    state = state.copyWith(oliTransmisiIsEnabled: enabled);
  }

  void updateCylinderBlockSelectedIndex(int? index) {
    state = state.copyWith(cylinderBlockSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateCylinderBlockIsEnabled(bool? enabled) {
    state = state.copyWith(cylinderBlockIsEnabled: enabled);
  }

  void updateBushingBesarSelectedIndex(int? index) {
    state = state.copyWith(bushingBesarSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateBushingBesarIsEnabled(bool? enabled) {
    state = state.copyWith(bushingBesarIsEnabled: enabled);
  }

  void updateBushingKecilSelectedIndex(int? index) {
    state = state.copyWith(bushingKecilSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateBushingKecilIsEnabled(bool? enabled) {
    state = state.copyWith(bushingKecilIsEnabled: enabled);
  }

  void updateTutupRadiatorSelectedIndex(int? index) {
    state = state.copyWith(tutupRadiatorSelectedIndex: (index == null || index <= 0) ? 0 : index);
  }

  void updateTutupRadiatorIsEnabled(bool? enabled) {
    state = state.copyWith(tutupRadiatorIsEnabled: enabled);
  }

  void updateMesinCatatan(String? text) {
    state = state.copyWith(mesinCatatan: text);
  }

  void updateRepairEstimations(List<Map<String, String>> estimations) {
    state = state.copyWith(repairEstimations: estimations);
  }
}

final formProvider = StateNotifierProvider<FormNotifier, FormData>((ref) {
  return FormNotifier();
});

extension on FormData {
  FormData copyWith({
    String? namaInspektor,
    String? namaCustomer,
    String? cabangInspeksi,
    DateTime? tanggalInspeksi,
    String? merekKendaraan,
    String? tipeKendaraan,
    String? tahun,
    String? transmisi,
    String? warnaKendaraan,
    String? odometer,
    String? kepemilikan,
    String? platNomor,
    DateTime? pajak1TahunDate,
    DateTime? pajak5TahunDate,
    String? biayaPajak,
    String? bukuService,
    String? kunciSerep,
    String? bukuManual,
    String? banSerep,
    String? bpkp,
    String? dongkrak,
    String? toolkit,
    String? noRangka,
    String? noMesin,
    String? indikasiTabrakan,
    String? indikasiBanjir,
    String? indikasiOdometerReset,
    String? posisiBan,
    String? merk,
    String? tipeVelg,
    String? ketebalan,
    int? interiorSelectedIndex,
    int? eksteriorSelectedIndex,
    int? kakiKakiSelectedIndex,
    int? mesinSelectedIndex,
    int? penilaianKeseluruhanSelectedIndex,
    List<String>? keteranganInterior,
    List<String>? keteranganEksterior,
    List<String>? keteranganKakiKaki,
    List<String>? keteranganMesin,
    List<String>? deskripsiKeseluruhan,
    List<Map<String, String>>? repairEstimations,
    int? airbagSelectedIndex,
    bool? airbagIsEnabled,
    int? sistemAudioSelectedIndex,
    bool? sistemAudioIsEnabled,
    int? powerWindowSelectedIndex,
    bool? powerWindowIsEnabled,
    int? sistemAcSelectedIndex,
    bool? sistemAcIsEnabled,
    String? fiturCatatan,
    int? getaranMesinSelectedIndex,
    bool? getaranMesinIsEnabled,
    int? suaraMesinSelectedIndex,
    bool? suaraMesinIsEnabled,
    int? transmisiSelectedIndex,
    bool? transmisiIsEnabled,
    int? pompaPowerSteeringSelectedIndex,
    bool? pompaPowerSteeringIsEnabled,
    int? coverTimingChainSelectedIndex,
    bool? coverTimingChainIsEnabled,
    int? oliPowerSteeringSelectedIndex,
    bool? oliPowerSteeringIsEnabled,
    int? accuSelectedIndex,
    bool? accuIsEnabled,
    int? kompressorAcSelectedIndex,
    bool? kompressorAcIsEnabled,
    int? fanSelectedIndex,
    bool? fanIsEnabled,
    int? selangSelectedIndex,
    bool? selangIsEnabled,
    int? karterOliSelectedIndex,
    bool? karterOliIsEnabled,
    int? oilRemSelectedIndex,
    bool? oilRemIsEnabled,
    int? kabelSelectedIndex,
    bool? kabelIsEnabled,
    int? kondensorSelectedIndex,
    bool? kondensorIsEnabled,
    int? radiatorSelectedIndex,
    bool? radiatorIsEnabled,
    int? cylinderHeadSelectedIndex,
    bool? cylinderHeadIsEnabled,
    int? oliMesinSelectedIndex,
    bool? oliMesinIsEnabled,
    int? airRadiatorSelectedIndex,
    bool? airRadiatorIsEnabled,
    int? coverKlepSelectedIndex,
    bool? coverKlepIsEnabled,
    int? alternatorSelectedIndex,
    bool? alternatorIsEnabled,
    int? waterPumpSelectedIndex,
    bool? waterPumpIsEnabled,
    int? beltSelectedIndex,
    bool? beltIsEnabled,
    int? oliTransmisiSelectedIndex,
    bool? oliTransmisiIsEnabled,
    int? cylinderBlockSelectedIndex,
    bool? cylinderBlockIsEnabled,
    int? bushingBesarSelectedIndex,
    bool? bushingBesarIsEnabled,
    int? bushingKecilSelectedIndex,
    bool? bushingKecilIsEnabled,
    int? tutupRadiatorSelectedIndex,
    bool? tutupRadiatorIsEnabled,
    String? mesinCatatan,
  }) {
    return FormData(
      namaInspektor: namaInspektor ?? this.namaInspektor,
      namaCustomer: namaCustomer ?? this.namaCustomer,
      cabangInspeksi: cabangInspeksi ?? this.cabangInspeksi,
      tanggalInspeksi: tanggalInspeksi ?? this.tanggalInspeksi,
      merekKendaraan: merekKendaraan ?? this.merekKendaraan,
      tipeKendaraan: tipeKendaraan ?? this.tipeKendaraan,
      tahun: tahun ?? this.tahun,
      transmisi: transmisi ?? this.transmisi,
      warnaKendaraan: warnaKendaraan ?? this.warnaKendaraan,
      odometer: odometer ?? this.odometer,
      kepemilikan: kepemilikan ?? this.kepemilikan,
      platNomor: platNomor ?? this.platNomor,
      pajak1TahunDate: pajak1TahunDate ?? this.pajak1TahunDate,
      pajak5TahunDate: pajak5TahunDate ?? this.pajak5TahunDate,
      biayaPajak: biayaPajak ?? this.biayaPajak,
      bukuService: bukuService ?? this.bukuService,
      kunciSerep: kunciSerep ?? this.kunciSerep,
      bukuManual: bukuManual ?? this.bukuManual,
      banSerep: banSerep ?? this.banSerep,
      bpkp: bpkp ?? this.bpkp,
      dongkrak: dongkrak ?? this.dongkrak,
      toolkit: toolkit ?? this.toolkit,
      noRangka: noRangka ?? this.noRangka,
      noMesin: noMesin ?? this.noMesin,
      indikasiTabrakan: indikasiTabrakan ?? this.indikasiTabrakan,
      indikasiBanjir: indikasiBanjir ?? this.indikasiBanjir,
      indikasiOdometerReset: indikasiOdometerReset ?? this.indikasiOdometerReset,
      posisiBan: posisiBan ?? this.posisiBan,
      merk: merk ?? this.merk,
      tipeVelg: tipeVelg ?? this.tipeVelg,
      ketebalan: ketebalan ?? this.ketebalan,
      interiorSelectedIndex: interiorSelectedIndex ?? this.interiorSelectedIndex,
      eksteriorSelectedIndex: eksteriorSelectedIndex ?? this.eksteriorSelectedIndex,
      kakiKakiSelectedIndex: kakiKakiSelectedIndex ?? this.kakiKakiSelectedIndex,
      mesinSelectedIndex: mesinSelectedIndex ?? this.mesinSelectedIndex,
      penilaianKeseluruhanSelectedIndex: penilaianKeseluruhanSelectedIndex ?? this.penilaianKeseluruhanSelectedIndex,
      keteranganInterior: keteranganInterior ?? this.keteranganInterior,
      keteranganEksterior: keteranganEksterior ?? this.keteranganEksterior,
      keteranganKakiKaki: keteranganKakiKaki ?? this.keteranganKakiKaki,
      keteranganMesin: keteranganMesin ?? this.keteranganMesin,
      deskripsiKeseluruhan: deskripsiKeseluruhan ?? this.deskripsiKeseluruhan,
      repairEstimations: repairEstimations ?? this.repairEstimations,
      airbagSelectedIndex: airbagSelectedIndex ?? this.airbagSelectedIndex,
      airbagIsEnabled: airbagIsEnabled ?? this.airbagIsEnabled,
      sistemAudioSelectedIndex: sistemAudioSelectedIndex ?? this.sistemAudioSelectedIndex,
      sistemAudioIsEnabled: sistemAudioIsEnabled ?? this.sistemAudioIsEnabled,
      powerWindowSelectedIndex: powerWindowSelectedIndex ?? this.powerWindowSelectedIndex,
      powerWindowIsEnabled: powerWindowIsEnabled ?? this.powerWindowIsEnabled,
      sistemAcSelectedIndex: sistemAcSelectedIndex ?? this.sistemAcSelectedIndex,
      sistemAcIsEnabled: sistemAcIsEnabled ?? this.sistemAcIsEnabled,
      fiturCatatan: fiturCatatan ?? this.fiturCatatan,
      getaranMesinSelectedIndex: getaranMesinSelectedIndex ?? this.getaranMesinSelectedIndex,
      getaranMesinIsEnabled: getaranMesinIsEnabled ?? this.getaranMesinIsEnabled,
      suaraMesinSelectedIndex: suaraMesinSelectedIndex ?? this.suaraMesinSelectedIndex,
      suaraMesinIsEnabled: suaraMesinIsEnabled ?? this.suaraMesinIsEnabled,
      transmisiSelectedIndex: transmisiSelectedIndex ?? this.transmisiSelectedIndex,
      transmisiIsEnabled: transmisiIsEnabled ?? this.transmisiIsEnabled,
      pompaPowerSteeringSelectedIndex: pompaPowerSteeringSelectedIndex ?? this.pompaPowerSteeringSelectedIndex,
      pompaPowerSteeringIsEnabled: pompaPowerSteeringIsEnabled ?? this.pompaPowerSteeringIsEnabled,
      coverTimingChainSelectedIndex: coverTimingChainSelectedIndex ?? this.coverTimingChainSelectedIndex,
      coverTimingChainIsEnabled: coverTimingChainIsEnabled ?? this.coverTimingChainIsEnabled,
      oliPowerSteeringSelectedIndex: oliPowerSteeringSelectedIndex ?? this.oliPowerSteeringSelectedIndex,
      oliPowerSteeringIsEnabled: oliPowerSteeringIsEnabled ?? this.oliPowerSteeringIsEnabled,
      accuSelectedIndex: accuSelectedIndex ?? this.accuSelectedIndex,
      accuIsEnabled: accuIsEnabled ?? this.accuIsEnabled,
      kompressorAcSelectedIndex: kompressorAcSelectedIndex ?? this.kompressorAcSelectedIndex,
      kompressorAcIsEnabled: kompressorAcIsEnabled ?? this.kompressorAcIsEnabled,
      fanSelectedIndex: fanSelectedIndex ?? this.fanSelectedIndex,
      fanIsEnabled: fanIsEnabled ?? this.fanIsEnabled,
      selangSelectedIndex: selangSelectedIndex ?? this.selangSelectedIndex,
      selangIsEnabled: selangIsEnabled ?? this.selangIsEnabled,
      karterOliSelectedIndex: karterOliSelectedIndex ?? this.karterOliSelectedIndex,
      karterOliIsEnabled: karterOliIsEnabled ?? this.karterOliIsEnabled,
      oilRemSelectedIndex: oilRemSelectedIndex ?? this.oilRemSelectedIndex,
      oilRemIsEnabled: oilRemIsEnabled ?? this.oilRemIsEnabled,
      kabelSelectedIndex: kabelSelectedIndex ?? this.kabelSelectedIndex,
      kabelIsEnabled: kabelIsEnabled ?? this.kabelIsEnabled,
      kondensorSelectedIndex: kondensorSelectedIndex ?? this.kondensorSelectedIndex,
      kondensorIsEnabled: kondensorIsEnabled ?? this.kondensorIsEnabled,
      radiatorSelectedIndex: radiatorSelectedIndex ?? this.radiatorSelectedIndex,
      radiatorIsEnabled: radiatorIsEnabled ?? this.radiatorIsEnabled,
      cylinderHeadSelectedIndex: cylinderHeadSelectedIndex ?? this.cylinderHeadSelectedIndex,
      cylinderHeadIsEnabled: cylinderHeadIsEnabled ?? this.cylinderHeadIsEnabled,
      oliMesinSelectedIndex: oliMesinSelectedIndex ?? this.oliMesinSelectedIndex,
      oliMesinIsEnabled: oliMesinIsEnabled ?? this.oliMesinIsEnabled,
      airRadiatorSelectedIndex: airRadiatorSelectedIndex ?? this.airRadiatorSelectedIndex,
      airRadiatorIsEnabled: airRadiatorIsEnabled ?? this.airRadiatorIsEnabled,
      coverKlepSelectedIndex: coverKlepSelectedIndex ?? this.coverKlepSelectedIndex,
      coverKlepIsEnabled: coverKlepIsEnabled ?? this.coverKlepIsEnabled,
      alternatorSelectedIndex: alternatorSelectedIndex ?? this.alternatorSelectedIndex,
      alternatorIsEnabled: alternatorIsEnabled ?? this.alternatorIsEnabled,
      waterPumpSelectedIndex: waterPumpSelectedIndex ?? this.waterPumpSelectedIndex,
      waterPumpIsEnabled: waterPumpIsEnabled ?? this.waterPumpIsEnabled,
      beltSelectedIndex: beltSelectedIndex ?? this.beltSelectedIndex,
      beltIsEnabled: beltIsEnabled ?? this.beltIsEnabled,
      oliTransmisiSelectedIndex: oliTransmisiSelectedIndex ?? this.oliTransmisiSelectedIndex,
      oliTransmisiIsEnabled: oliTransmisiIsEnabled ?? this.oliTransmisiIsEnabled,
      cylinderBlockSelectedIndex: cylinderBlockSelectedIndex ?? this.cylinderBlockSelectedIndex,
      cylinderBlockIsEnabled: cylinderBlockIsEnabled ?? this.cylinderBlockIsEnabled,
      bushingBesarSelectedIndex: bushingBesarSelectedIndex ?? this.bushingBesarSelectedIndex,
      bushingBesarIsEnabled: bushingBesarIsEnabled ?? this.bushingBesarIsEnabled,
      bushingKecilSelectedIndex: bushingKecilSelectedIndex ?? this.bushingKecilSelectedIndex,
      bushingKecilIsEnabled: bushingKecilIsEnabled ?? this.bushingKecilIsEnabled,
      tutupRadiatorSelectedIndex: tutupRadiatorSelectedIndex ?? this.tutupRadiatorSelectedIndex,
      tutupRadiatorIsEnabled: tutupRadiatorIsEnabled ?? this.tutupRadiatorIsEnabled,
      mesinCatatan: mesinCatatan ?? this.mesinCatatan,
    );
  }
}
