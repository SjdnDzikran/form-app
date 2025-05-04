class FormData {
  // Page One Data
  String namaInspektor;
  String namaCustomer;
  String cabangInspeksi;
  DateTime? tanggalInspeksi;

  // Page Two Data
  String merekKendaraan;
  String tipeKendaraan;
  String tahun;
  String transmisi;
  String warnaKendaraan;
  String odometer;
  String kepemilikan;
  String platNomor;
  DateTime? pajak1TahunDate;
  DateTime? pajak5TahunDate;
  String biayaPajak;

  // Page Three Data (Kelengkapan)
  String? bukuService;
  String? kunciSerep;
  String? bukuManual;
  String? banSerep;
  String? bpkp;
  String? dongkrak;
  String? toolkit;
  String? noRangka;
  String? noMesin;

  // New fields for Page Four
  String? indikasiTabrakan;
  String? indikasiBanjir;
  String? indikasiOdometerReset;

  // New fields for Page Four text fields
  String? posisiBan;
  String? merk;
  String? tipeVelg;
  String? ketebalan;

  // New fields for inspection results
  int? interiorSelectedIndex;
  int? eksteriorSelectedIndex;
  int? kakiKakiSelectedIndex;
  int? mesinSelectedIndex;
  int? penilaianKeseluruhanSelectedIndex;

  // NEW: Fields for ExpandableTextField data (as List<String>)
  List<String> keteranganInterior;
  List<String> keteranganEksterior;
  List<String> keteranganKakiKaki;
  List<String> keteranganMesin;
  List<String> deskripsiKeseluruhan;

  // New fields for Page Five One
  int? airbagSelectedIndex;
  bool? airbagIsEnabled;
  int? sistemAudioSelectedIndex;
  bool? sistemAudioIsEnabled;
  int? powerWindowSelectedIndex;
  bool? powerWindowIsEnabled;
  int? sistemAcSelectedIndex;
  bool? sistemAcIsEnabled;
  String? fiturCatatan;

  // New fields for Page Five Two
  int? getaranMesinSelectedIndex;
  bool? getaranMesinIsEnabled;
  int? suaraMesinSelectedIndex;
  bool? suaraMesinIsEnabled;
  int? transmisiSelectedIndex;
  bool? transmisiIsEnabled;
  int? pompaPowerSteeringSelectedIndex;
  bool? pompaPowerSteeringIsEnabled;
  int? coverTimingChainSelectedIndex;
  bool? coverTimingChainIsEnabled;
  int? oliPowerSteeringSelectedIndex;
  bool? oliPowerSteeringIsEnabled;
  int? accuSelectedIndex;
  bool? accuIsEnabled;
  int? kompressorAcSelectedIndex;
  bool? kompressorAcIsEnabled;
  int? fanSelectedIndex;
  bool? fanIsEnabled;
  int? selangSelectedIndex;
  bool? selangIsEnabled;
  int? karterOliSelectedIndex;
  bool? karterOliIsEnabled;
  int? oilRemSelectedIndex;
  bool? oilRemIsEnabled;
  int? kabelSelectedIndex;
  bool? kabelIsEnabled;
  int? kondensorSelectedIndex;
  bool? kondensorIsEnabled;
  int? radiatorSelectedIndex;
  bool? radiatorIsEnabled;
  int? cylinderHeadSelectedIndex;
  bool? cylinderHeadIsEnabled;
  int? oliMesinSelectedIndex;
  bool? oliMesinIsEnabled;
  int? airRadiatorSelectedIndex;
  bool? airRadiatorIsEnabled;
  int? coverKlepSelectedIndex;
  bool? coverKlepIsEnabled;
  int? alternatorSelectedIndex;
  bool? alternatorIsEnabled;
  int? waterPumpSelectedIndex;
  bool? waterPumpIsEnabled;
  int? beltSelectedIndex;
  bool? beltIsEnabled;
  int? oliTransmisiSelectedIndex;
  bool? oliTransmisiIsEnabled;
  int? cylinderBlockSelectedIndex;
  bool? cylinderBlockIsEnabled;
  int? bushingBesarSelectedIndex;
  bool? bushingBesarIsEnabled;
  int? bushingKecilSelectedIndex;
  bool? bushingKecilIsEnabled;
  int? tutupRadiatorSelectedIndex;
  bool? tutupRadiatorIsEnabled;
  String? mesinCatatan;

  // New field for repair estimations
  List<Map<String, String>> repairEstimations;

  FormData({
    this.namaInspektor = '',
    this.namaCustomer = '',
    this.cabangInspeksi = '',
    this.tanggalInspeksi,
    this.merekKendaraan = '',
    this.tipeKendaraan = '',
    this.tahun = '',
    this.transmisi = '',
    this.warnaKendaraan = '',
    this.odometer = '',
    this.kepemilikan = '',
    this.platNomor = '',
    this.pajak1TahunDate,
    this.pajak5TahunDate,
    this.biayaPajak = '',
    this.bukuService,
    this.kunciSerep,
    this.bukuManual,
    this.banSerep,
    this.bpkp,
    this.dongkrak,
    this.toolkit,
    this.noRangka,
    this.noMesin,
    this.indikasiTabrakan,
    this.indikasiBanjir,
    this.indikasiOdometerReset,
    this.posisiBan,
    this.merk,
    this.tipeVelg,
    this.ketebalan,
    this.interiorSelectedIndex,
    this.eksteriorSelectedIndex,
    this.kakiKakiSelectedIndex,
    this.mesinSelectedIndex,
    this.penilaianKeseluruhanSelectedIndex,
    List<String>? keteranganInterior,
    List<String>? keteranganEksterior,
    List<String>? keteranganKakiKaki,
    List<String>? keteranganMesin,
    List<String>? deskripsiKeseluruhan,
    List<Map<String, String>>? repairEstimations,
    this.airbagSelectedIndex,
    this.airbagIsEnabled,
    this.sistemAudioSelectedIndex,
    this.sistemAudioIsEnabled,
    this.powerWindowSelectedIndex,
    this.powerWindowIsEnabled,
    this.sistemAcSelectedIndex,
    this.sistemAcIsEnabled,
    this.fiturCatatan,
    this.getaranMesinSelectedIndex,
    this.getaranMesinIsEnabled,
    this.suaraMesinSelectedIndex,
    this.suaraMesinIsEnabled,
    this.transmisiSelectedIndex,
    this.transmisiIsEnabled,
    this.pompaPowerSteeringSelectedIndex,
    this.pompaPowerSteeringIsEnabled,
    this.coverTimingChainSelectedIndex,
    this.coverTimingChainIsEnabled,
    this.oliPowerSteeringSelectedIndex,
    this.oliPowerSteeringIsEnabled,
    this.accuSelectedIndex,
    this.accuIsEnabled,
    this.kompressorAcSelectedIndex,
    this.kompressorAcIsEnabled,
    this.fanSelectedIndex,
    this.fanIsEnabled,
    this.selangSelectedIndex,
    this.selangIsEnabled,
    this.karterOliSelectedIndex,
    this.karterOliIsEnabled,
    this.oilRemSelectedIndex,
    this.oilRemIsEnabled,
    this.kabelSelectedIndex,
    this.kabelIsEnabled,
    this.kondensorSelectedIndex,
    this.kondensorIsEnabled,
    this.radiatorSelectedIndex,
    this.radiatorIsEnabled,
    this.cylinderHeadSelectedIndex,
    this.cylinderHeadIsEnabled,
    this.oliMesinSelectedIndex,
    this.oliMesinIsEnabled,
    this.airRadiatorSelectedIndex,
    this.airRadiatorIsEnabled,
    this.coverKlepSelectedIndex,
    this.coverKlepIsEnabled,
    this.alternatorSelectedIndex,
    this.alternatorIsEnabled,
    this.waterPumpSelectedIndex,
    this.waterPumpIsEnabled,
    this.beltSelectedIndex,
    this.beltIsEnabled,
    this.oliTransmisiSelectedIndex,
    this.oliTransmisiIsEnabled,
    this.cylinderBlockSelectedIndex,
    this.cylinderBlockIsEnabled,
    this.bushingBesarSelectedIndex,
    this.bushingBesarIsEnabled,
    this.bushingKecilSelectedIndex,
    this.bushingKecilIsEnabled,
    this.tutupRadiatorSelectedIndex,
    this.tutupRadiatorIsEnabled,
    this.mesinCatatan,

  }) : keteranganEksterior = keteranganEksterior ?? [],
       keteranganInterior = keteranganInterior ?? [],
       keteranganKakiKaki = keteranganKakiKaki ?? [],
       keteranganMesin = keteranganMesin ?? [],
       deskripsiKeseluruhan = deskripsiKeseluruhan ?? [],
       repairEstimations = repairEstimations ?? [];

  // Add methods to update data if needed, or update directly
}
