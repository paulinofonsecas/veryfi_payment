// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

abstract class VerifyPaymentResponse {}

class VerifyPaymentSuccess extends VerifyPaymentResponse {
  final String? aPLICATIVO;
  final int? sTATUS;
  final String? lOG;
  final String? dESTINATARIO;
  final String? bNOME;
  final String? iBAN;
  final String? bIBAN;
  final String? bANCO;
  final String? bBANCO;
  final String? oBANCO;
  final String? oNOME;
  final String? oCONTA;
  final int? oRIGEM;
  final int? oIBAN;
  final String? mONTANTE;
  final int? dINHEIRO;
  final int? tRANSACAO;
  final String? oPERACAO;
  final String? tIPO;
  final DATA? dATA;
  VerifyPaymentSuccess({
    this.aPLICATIVO,
    this.sTATUS,
    this.lOG,
    this.dESTINATARIO,
    this.bNOME,
    this.iBAN,
    this.bIBAN,
    this.bANCO,
    this.bBANCO,
    this.oBANCO,
    this.oNOME,
    this.oCONTA,
    this.oRIGEM,
    this.oIBAN,
    this.mONTANTE,
    this.dINHEIRO,
    this.tRANSACAO,
    this.oPERACAO,
    this.tIPO,
    this.dATA,
  });

  VerifyPaymentSuccess copyWith({
    String? aPLICATIVO,
    int? sTATUS,
    String? lOG,
    String? dESTINATARIO,
    String? bNOME,
    String? iBAN,
    String? bIBAN,
    String? bANCO,
    String? bBANCO,
    String? oBANCO,
    String? oNOME,
    String? oCONTA,
    int? oRIGEM,
    int? oIBAN,
    String? mONTANTE,
    int? dINHEIRO,
    int? tRANSACAO,
    String? oPERACAO,
    String? tIPO,
    DATA? dATA,
  }) {
    return VerifyPaymentSuccess(
      aPLICATIVO: aPLICATIVO ?? this.aPLICATIVO,
      sTATUS: sTATUS ?? this.sTATUS,
      lOG: lOG ?? this.lOG,
      dESTINATARIO: dESTINATARIO ?? this.dESTINATARIO,
      bNOME: bNOME ?? this.bNOME,
      iBAN: iBAN ?? this.iBAN,
      bIBAN: bIBAN ?? this.bIBAN,
      bANCO: bANCO ?? this.bANCO,
      bBANCO: bBANCO ?? this.bBANCO,
      oBANCO: oBANCO ?? this.oBANCO,
      oNOME: oNOME ?? this.oNOME,
      oCONTA: oCONTA ?? this.oCONTA,
      oRIGEM: oRIGEM ?? this.oRIGEM,
      oIBAN: oIBAN ?? this.oIBAN,
      mONTANTE: mONTANTE ?? this.mONTANTE,
      dINHEIRO: dINHEIRO ?? this.dINHEIRO,
      tRANSACAO: tRANSACAO ?? this.tRANSACAO,
      oPERACAO: oPERACAO ?? this.oPERACAO,
      tIPO: tIPO ?? this.tIPO,
      dATA: dATA ?? this.dATA,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aPLICATIVO': aPLICATIVO,
      'sTATUS': sTATUS,
      'lOG': lOG,
      'dESTINATARIO': dESTINATARIO,
      'bNOME': bNOME,
      'iBAN': iBAN,
      'bIBAN': bIBAN,
      'bANCO': bANCO,
      'bBANCO': bBANCO,
      'oBANCO': oBANCO,
      'oNOME': oNOME,
      'oCONTA': oCONTA,
      'oRIGEM': oRIGEM,
      'oIBAN': oIBAN,
      'mONTANTE': mONTANTE,
      'dINHEIRO': dINHEIRO,
      'tRANSACAO': tRANSACAO,
      'oPERACAO': oPERACAO,
      'tIPO': tIPO,
      'dATA': dATA?.toMap(),
    };
  }

  factory VerifyPaymentSuccess.fromMap(Map<String, dynamic> map) {
    return VerifyPaymentSuccess(
      aPLICATIVO:
          map['APLICATIVO'] != null ? map['APLICATIVO'] as String : null,
      sTATUS: map['STATUS'] != null ? map['STATUS'] as int : null,
      lOG: map['LOG'] != null ? map['LOG'] as String : null,
      dESTINATARIO:
          map['DESTINATARIO'] != null ? map['DESTINATARIO'] as String : null,
      bNOME: map['B_NOME'] != null ? map['B_NOME'] as String : null,
      iBAN: map['IBAN'] != null ? map['IBAN'] as String : null,
      bIBAN: map['B_IBAN'] != null ? map['B_IBAN'] as String : null,
      bANCO: map['BANCO'] != null ? map['BANCO'] as String : null,
      bBANCO: map['B_BANCO'] != null ? map['B_BANCO'] as String : null,
      oBANCO: map['O_BANCO'] != null ? map['O_BANCO'] as String : null,
      oNOME: map['O_NOME'] != null ? map['O_NOME'] as String : null,
      oCONTA: map['O_CONTA'] != null ? map['O_CONTA'] as String : null,
      oRIGEM: map['ORIGEM'] != null ? map['ORIGEM'] as int : null,
      oIBAN: map['O_IBAN'] != null ? map['O_IBAN'] as int : null,
      mONTANTE: map['MONTANTE'] != null ? map['MONTANTE'] as String : null,
      dINHEIRO: map['DINHEIRO'] != null ? map['DINHEIRO'] as int : null,
      tRANSACAO: map['TRANSACAO'] != null ? map['TRANSACAO'] as int : null,
      oPERACAO: map['OPERACAO'] != null ? map['OPERACAO'] as String : null,
      tIPO: map['TIPO'] != null ? map['TIPO'] as String : null,
      dATA: map['DATA'] != null
          ? DATA.fromMap(map['DATA'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyPaymentSuccess.fromJson(String source) =>
      VerifyPaymentSuccess.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VerifyPaymentSuccess(aPLICATIVO: $aPLICATIVO, sTATUS: $sTATUS, lOG: $lOG, dESTINATARIO: $dESTINATARIO, bNOME: $bNOME, iBAN: $iBAN, bIBAN: $bIBAN, bANCO: $bANCO, bBANCO: $bBANCO, oBANCO: $oBANCO, oNOME: $oNOME, oCONTA: $oCONTA, oRIGEM: $oRIGEM, oIBAN: $oIBAN, mONTANTE: $mONTANTE, dINHEIRO: $dINHEIRO, tRANSACAO: $tRANSACAO, oPERACAO: $oPERACAO, tIPO: $tIPO, dATA: $dATA)';
  }

  @override
  bool operator ==(covariant VerifyPaymentSuccess other) {
    if (identical(this, other)) return true;

    return other.aPLICATIVO == aPLICATIVO &&
        other.sTATUS == sTATUS &&
        other.lOG == lOG &&
        other.dESTINATARIO == dESTINATARIO &&
        other.bNOME == bNOME &&
        other.iBAN == iBAN &&
        other.bIBAN == bIBAN &&
        other.bANCO == bANCO &&
        other.bBANCO == bBANCO &&
        other.oBANCO == oBANCO &&
        other.oNOME == oNOME &&
        other.oCONTA == oCONTA &&
        other.oRIGEM == oRIGEM &&
        other.oIBAN == oIBAN &&
        other.mONTANTE == mONTANTE &&
        other.dINHEIRO == dINHEIRO &&
        other.tRANSACAO == tRANSACAO &&
        other.oPERACAO == oPERACAO &&
        other.tIPO == tIPO &&
        other.dATA == dATA;
  }

  @override
  int get hashCode {
    return aPLICATIVO.hashCode ^
        sTATUS.hashCode ^
        lOG.hashCode ^
        dESTINATARIO.hashCode ^
        bNOME.hashCode ^
        iBAN.hashCode ^
        bIBAN.hashCode ^
        bANCO.hashCode ^
        bBANCO.hashCode ^
        oBANCO.hashCode ^
        oNOME.hashCode ^
        oCONTA.hashCode ^
        oRIGEM.hashCode ^
        oIBAN.hashCode ^
        mONTANTE.hashCode ^
        dINHEIRO.hashCode ^
        tRANSACAO.hashCode ^
        oPERACAO.hashCode ^
        tIPO.hashCode ^
        dATA.hashCode;
  }
}

class DATA {
  final String? data;
  final String? tempo;
  final String? dataHora;
  final int? dia;
  final int? mes;
  final int? ano;
  final int? hora;
  final int? minuto;
  final int? segundo;

  DATA({
    this.data,
    this.tempo,
    this.dataHora,
    this.dia,
    this.mes,
    this.ano,
    this.hora,
    this.minuto,
    this.segundo,
  });

  DATA copyWith({
    String? data,
    String? tempo,
    String? dataHora,
    int? dia,
    int? mes,
    int? ano,
    int? hora,
    int? minuto,
    int? segundo,
  }) {
    return DATA(
      data: data ?? this.data,
      tempo: tempo ?? this.tempo,
      dataHora: dataHora ?? this.dataHora,
      dia: dia ?? this.dia,
      mes: mes ?? this.mes,
      ano: ano ?? this.ano,
      hora: hora ?? this.hora,
      minuto: minuto ?? this.minuto,
      segundo: segundo ?? this.segundo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'tempo': tempo,
      'dataHora': dataHora,
      'dia': dia,
      'mes': mes,
      'ano': ano,
      'hora': hora,
      'minuto': minuto,
      'segundo': segundo,
    };
  }

  factory DATA.fromMap(Map<String, dynamic> map) {
    return DATA(
      data: map['data'] != null ? map['data'] as String : null,
      tempo: map['tempo'] != null ? map['tempo'] as String : null,
      dataHora: map['dataHora'] != null ? map['dataHora'] as String : null,
      dia: map['dia'] != null ? map['dia'] as int : null,
      mes: map['mes'] != null ? map['mes'] as int : null,
      ano: map['ano'] != null ? map['ano'] as int : null,
      hora: map['hora'] != null ? map['hora'] as int : null,
      minuto: map['minuto'] != null ? map['minuto'] as int : null,
      segundo: map['segundo'] != null ? map['segundo'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory DATA.fromJson(String source) =>
      DATA.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DATA(data: $data, tempo: $tempo, dataHora: $dataHora, dia: $dia, mes: $mes, ano: $ano, hora: $hora, minuto: $minuto, segundo: $segundo)';
  }

  @override
  bool operator ==(covariant DATA other) {
    if (identical(this, other)) return true;

    return other.data == data &&
        other.tempo == tempo &&
        other.dataHora == dataHora &&
        other.dia == dia &&
        other.mes == mes &&
        other.ano == ano &&
        other.hora == hora &&
        other.minuto == minuto &&
        other.segundo == segundo;
  }

  @override
  int get hashCode {
    return data.hashCode ^
        tempo.hashCode ^
        dataHora.hashCode ^
        dia.hashCode ^
        mes.hashCode ^
        ano.hashCode ^
        hora.hashCode ^
        minuto.hashCode ^
        segundo.hashCode;
  }
}

class VerifyPaymentError extends VerifyPaymentResponse {
  final int status;
  final String log;

  VerifyPaymentError({
    required this.status,
    required this.log,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
      'log': log,
    };
  }

  factory VerifyPaymentError.fromMap(Map<String, dynamic> map) {
    return VerifyPaymentError(
      status: map['STATUS'] as int,
      log: map['LOG'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VerifyPaymentError.fromJson(String source) =>
      VerifyPaymentError.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'VerifyPaymentError(aplicativo: status: $status, log: $log)';
}
