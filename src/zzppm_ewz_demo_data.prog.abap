*&---------------------------------------------------------------------*
*& Report zzppm_ewz_demo_data
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zzppm_ewz_demo_data.

DATA: lt_ewz_data             TYPE TABLE OF zzppm_ewz_001,
      lt_ewz_finance_data     TYPE TABLE OF zzppm_ewz_002,
      lt_ewz_belege           TYPE TABLE OF zzppm_ewz_003,
      lt_ewz_mlst             TYPE TABLE OF zzppm_ewz_004,
      lt_ewz_finance_data_tmp TYPE TABLE OF zzppm_ewz_002,
      lv_waers                TYPE waers VALUE 'CHF',
      lv_seed                 TYPE i VALUE 1.

TYPES: tt_ewz_data         TYPE STANDARD TABLE OF zzppm_ewz_001 WITH KEY guid,
       tt_ewz_finance_data TYPE STANDARD TABLE OF zzppm_ewz_002 WITH KEY guid,
       tt_ewz_belege       TYPE STANDARD TABLE OF zzppm_ewz_003 WITH KEY guid,
       tt_ewz_mlst         TYPE STANDARD TABLE OF zzppm_ewz_004 WITH KEY guid.

PARAMETERS: p_test  TYPE ale_test DEFAULT abap_true AS CHECKBOX.

START-OF-SELECTION.

  lt_ewz_data = VALUE tt_ewz_data( ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                     nummer      = '5000439'
                                     bezeichnung = '12MW Batterie für PRL'
                                     manager     = 'Raquel A. Keith'
                                     gesamt      = ''
                                     finanzen    = ''
                                     termin      = ''
                                     umfang      = ''
                                     ppi         = ''
                                     start_d     = '20170711'
                                     ende_d      = '20171130'
                                     favorit     = '@EV@'
                                     programm    = 'Programm A'
                                     portfolio   = 'ewz'
                                     projektart  = 'IT-Projekt'
                                     ist_kost    = 8452184
                                     plan_kost   = 9000000
                                     waers       = 'CHF' )
                                    ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                     nummer      = '812360'
                                     bezeichnung = '150kV-Zielnetz'
                                     manager     = 'Zebastian Norberg'
                                     gesamt      = '3'
                                     finanzen    = '3'
                                     termin      = '3'
                                     umfang      = '3'
                                     ppi         = '3'
                                     start_d     = '20170116'
                                     ende_d      = '20181031'
                                     favorit     = '@EV@'
                                     programm    = 'Programm A'
                                     portfolio   = 'ewz'
                                     projektart  = 'IT-Projekt'
                                     ist_kost    = 5452184
                                     plan_kost   = 5500000
                                     waers       = 'CHF' )
                                   ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                     nummer      = '2017-000557'
                                     bezeichnung = 'AkuPro'
                                     manager     = 'Robert Unger'
                                     gesamt      = '2'
                                     finanzen    = '3'
                                     termin      = '2'
                                     umfang      = '3'
                                     ppi         = '3'
                                     start_d     = '20170629'
                                     ende_d      = '20181222'
                                     favorit     = '@EV@'
                                     programm    = 'Programm A'
                                     portfolio   = 'ewz'
                                     projektart  = 'IT-Projekt'
                                     ist_kost    = 74452
                                     plan_kost   = 85000
                                     waers       = 'CHF' )
                                   ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                     nummer      = 'A0149'
                                     bezeichnung = 'Batteriespeicher für PV (Dora-S. Str.)'
                                     manager     = 'Stephanie Oster'
                                     gesamt      = '1'
                                     finanzen    = '3'
                                     termin      = '2'
                                     umfang      = '1'
                                     ppi         = '3'
                                     start_d     = '20130826'
                                     ende_d      = '20221115'
                                     favorit     = '@EV@'
                                     programm    = 'Programm C'
                                     portfolio   = 'ewz'
                                     projektart  = 'IT-Projekt'
                                     ist_kost    = 0
                                     plan_kost   = 100000
                                     waers       = 'CHF' )
                                   ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                     nummer      = 'G100262'
                                     bezeichnung = 'BI für EWZ'
                                     manager     = 'Markus Meier'
                                     gesamt      = '1'
                                     finanzen    = '1'
                                     termin      = '2'
                                     umfang      = '1'
                                     ppi         = '2'
                                     start_d     = '20180826'
                                     ende_d      = '20221115'
                                     favorit     = '@EV@'
                                     programm    = 'Programm D'
                                     portfolio   = 'ewz'
                                     projektart  = 'Bau-/Investitionsprojekt'
                                     ist_kost    = 325482
                                     plan_kost   = 1000000
                                     waers       = 'CHF' )
                                    ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                     nummer      = 'G200649'
                                     bezeichnung = 'BI-Stromportfolios'
                                     manager     = 'Thomas Müller'
                                     gesamt      = '1'
                                     finanzen    = '1'
                                     termin      = '2'
                                     umfang      = '1'
                                     ppi         = '1'
                                     start_d     = '20170521'
                                     ende_d      = '20201201'
                                     favorit     = '@EV@'
                                     programm    = 'Programm C'
                                     portfolio   = 'ewz'
                                     projektart  = 'Bau-/Investitionsprojekt'
                                     ist_kost    = 955814
                                     plan_kost   = 900000
                                     waers       = 'CHF' )
                                     ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                     nummer      = '400693'
                                     bezeichnung = 'Boiler.Flex'
                                     manager     = 'Markus Meier'
                                     gesamt      = '1'
                                     finanzen    = '2'
                                     termin      = '2'
                                     umfang      = '1'
                                     ppi         = '1'
                                     start_d     = '20170311'
                                     ende_d      = '20181201'
                                     favorit     = '@EV@'
                                     programm    = 'Programm B'
                                     portfolio   = 'ewz'
                                     projektart  = 'Technologieprojekt'
                                     ist_kost    = 789552
                                     plan_kost   = 1000000
                                     waers       = 'CHF' )
                                     ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                     nummer      = 'I130205'
                                     bezeichnung = 'Bürokonzept OpenSpace-SharedDesk, BG03.OG'
                                     manager     = 'Martin Widmer'
                                     gesamt      = '1'
                                     finanzen    = '1'
                                     termin      = '2'
                                     umfang      = '1'
                                     ppi         = '2'
                                     start_d     = '20170103'
                                     ende_d      = '20180131'
                                     favorit     = '@EV@'
                                     programm    = 'Programm D'
                                     portfolio   = 'ewz'
                                     projektart  = 'Technologieprojekt'
                                     ist_kost    = 2168545
                                     plan_kost   = 2500000
                                     waers       = 'CHF' )
                                     ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                     nummer      = 'G700198'
                                     bezeichnung = 'Communication@building'
                                     manager     = 'Urs Geissbühler'
                                     gesamt      = '3'
                                     finanzen    = '3'
                                     termin      = '3'
                                     umfang      = '2'
                                     ppi         = '2'
                                     start_d     = '20170426'
                                     ende_d      = '20221124'
                                     favorit     = '@EV@'
                                     programm    = 'Programm D'
                                     portfolio   = 'ewz'
                                     projektart  = 'Technologieprojekt'
                                     ist_kost    = 25461
                                     plan_kost   = 50000
                                     waers       = 'CHF' )
                                   ).

  DO 5 TIMES.
    DATA(lv_gjahr) = sy-datum(4) - 4 + sy-index.
    LOOP AT lt_ewz_data ASSIGNING FIELD-SYMBOL(<fs_ewz_data>).
      lt_ewz_finance_data_tmp = VALUE tt_ewz_finance_data( ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                                             headerguid  = <fs_ewz_data>-guid
                                                             kredit      = cl_abap_random_int=>create( min = 80000 max = 800000 seed = lv_seed + 1 )->get_next( )
                                                             kredit_w    = lv_waers
                                                             forecast    = cl_abap_random_int=>create( min = 70000 max = 700000 seed = lv_seed + 1 )->get_next( )
                                                             forecast_w  = lv_waers
                                                             obligo      = cl_abap_random_int=>create( min = 50000 max = 500000 seed = lv_seed + 1 )->get_next( )
                                                             obligo_w    = lv_waers
                                                             istkosten   = cl_abap_random_int=>create( min = 40000 max = 400000 seed = lv_seed + 1 )->get_next( )
                                                             istkosten_w = lv_waers
                                                             gjahr = lv_gjahr
                                                             ) ).
      ADD 1 TO lv_seed.
      APPEND LINES OF lt_ewz_finance_data_tmp TO lt_ewz_finance_data.
      READ TABLE lt_ewz_finance_data_tmp ASSIGNING FIELD-SYMBOL(<fs_finance>) INDEX 1.

*     Belege Generieren
      DO 10 TIMES.
        DATA(lt_ewz_belege_tmp) = VALUE tt_ewz_belege( ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                                         headerguid  = <fs_ewz_data>-guid
                                                         financeguid = <fs_finance>-guid
                                                         gjahr       = lv_gjahr
                                                         belnr       = cl_abap_random_int=>create( min = 1900000006 max = 1900009999 seed = lv_seed + 1 )->get_next( )
                                                         bukrs       = '0001'
                                                         blart       = 'KR'
                                                         bldat       = lv_gjahr && cl_abap_random_int=>create( min = 10 max = 12 seed = lv_seed + 1 )->get_next( ) &&
                                                                                   cl_abap_random_int=>create( min = 10 max = 31 seed = lv_seed + 1 )->get_next( )
                                                         budat       = lv_gjahr && cl_abap_random_int=>create( min = 10 max = 12 seed = lv_seed + 1 )->get_next( ) &&
                                                                                   cl_abap_random_int=>create( min = 10 max = 31 seed = lv_seed + 1 )->get_next( )
                                                         ebeln       = cl_abap_random_int=>create( min = 5600000 max = 5600099 seed = lv_seed + 1 )->get_next( )
                                                         ebelp       = cl_abap_random_int=>create( min = 10 max = 50 seed = lv_seed + 10 )->get_next( )
                                                         sgtxt       = 'Rechnungsbelege ' && cl_abap_random_int=>create( min = 10 max = 50 seed = lv_seed + 1 )->get_next( )
                                                         dmbtr       = cl_abap_random_int=>create( min = -1000 max = 4000 seed = lv_seed + 1 )->get_next( )
                                                         waers       = 'CHF'
        ) ).
      ENDDO.
      APPEND LINES OF lt_ewz_belege_tmp TO lt_ewz_belege.

      IF sy-index = 5.
        DATA(lt_ewz_mlst_tmp) = VALUE tt_ewz_mlst( ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                                         headerguid  = <fs_ewz_data>-guid
                                                         phase       = '100 Initialisierung'
                                                         icon        = 'sap-icon://chevron-phase-2'
                                                         status      = 'Abgeschlossen'
                                                         plan_finish = '01.07.2022'
                                                         description = 'Projektstart'
        ) ).
        APPEND LINES OF lt_ewz_mlst_tmp TO lt_ewz_mlst.
        lt_ewz_mlst_tmp = VALUE tt_ewz_mlst( ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                                         headerguid  = <fs_ewz_data>-guid
                                                         phase       = '100 Initialisierung'
                                                         icon        = 'sap-icon://rhombus-milestone-2'
                                                         status      = 'Abgeschlossen'
                                                         plan_finish = '01.06.2022'
                                                         curr_finish = '01.07.2022'
                                                         description = 'Initialisierungsphase abgeschlossen'
        ) ).
        APPEND LINES OF lt_ewz_mlst_tmp TO lt_ewz_mlst.
        lt_ewz_mlst_tmp = VALUE tt_ewz_mlst( ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                                         headerguid  = <fs_ewz_data>-guid
                                                         phase       = '200 Konzept'
                                                         icon        = 'sap-icon://rhombus-milestone-2'
                                                         status      = 'Abgeschlossen'
                                                         plan_finish = '01.07.2022'
                                                         curr_finish = '01.08.2022'
                                                         description = 'Konzeptphase abgeschlossen'
        ) ).
        APPEND LINES OF lt_ewz_mlst_tmp TO lt_ewz_mlst.
        lt_ewz_mlst_tmp = VALUE tt_ewz_mlst( ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                                         headerguid  = <fs_ewz_data>-guid
                                                         phase       = '300 Realisierung'
                                                         icon        = 'sap-icon://chevron-phase-1'
                                                         status      = 'Freigegeben'
                                                         plan_finish = '01.08.2022'
                                                         curr_finish = ''
                                                         description = 'Realisierungsphase abgeschlossen'
        ) ).
        APPEND LINES OF lt_ewz_mlst_tmp TO lt_ewz_mlst.
        lt_ewz_mlst_tmp = VALUE tt_ewz_mlst( ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                                         headerguid  = <fs_ewz_data>-guid
                                                         phase       = '300 Realisierung'
                                                         icon        = 'sap-icon://chevron-phase-1'
                                                         status      = 'Freigegeben'
                                                         plan_finish = '01.08.2022'
                                                         curr_finish = ''
                                                         description = 'Realisierungsphase gestartet'
        ) ).
        APPEND LINES OF lt_ewz_mlst_tmp TO lt_ewz_mlst.
        lt_ewz_mlst_tmp = VALUE tt_ewz_mlst( ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                                         headerguid  = <fs_ewz_data>-guid
                                                         phase       = '400 Einführung'
                                                         icon        = 'sap-icon://rhombus-milestone-1'
                                                         status      = 'Offen'
                                                         plan_finish = '01.09.2022'
                                                         curr_finish = ''
                                                         description = 'Projektstart'
        ) ).
        APPEND LINES OF lt_ewz_mlst_tmp TO lt_ewz_mlst.
        lt_ewz_mlst_tmp = VALUE tt_ewz_mlst( ( guid        = cl_system_uuid=>create_uuid_x16_static( )
                                                         headerguid  = <fs_ewz_data>-guid
                                                         phase       = '400 Einführung'
                                                         icon        = 'sap-icon://rhombus-milestone-1'
                                                         status      = 'Offen'
                                                         plan_finish = '31.12.2022'
                                                         curr_finish = ''
                                                         description = 'Projekt abgeschlossen'
        ) ).
        APPEND LINES OF lt_ewz_mlst_tmp TO lt_ewz_mlst.
      ENDIF.
    ENDLOOP.
  ENDDO.

*... commit on database?
  IF p_test IS INITIAL.
    DELETE FROM zzppm_ewz_001 WHERE guid IS NOT INITIAL.
    DELETE FROM zzppm_ewz_002 WHERE guid IS NOT INITIAL.
    DELETE FROM zzppm_ewz_003 WHERE guid IS NOT INITIAL.
    DELETE FROM zzppm_ewz_004 WHERE guid IS NOT INITIAL.
    MODIFY zzppm_ewz_001 FROM TABLE lt_ewz_data.
    MODIFY zzppm_ewz_002 FROM TABLE lt_ewz_finance_data.
    MODIFY zzppm_ewz_003 FROM TABLE lt_ewz_belege.
    MODIFY zzppm_ewz_004 FROM TABLE lt_ewz_mlst.
  ENDIF.

*... show output
  cl_demo_output=>display_data( value = lt_ewz_data ).

  cl_demo_output=>display_data( value = lt_ewz_finance_data ).

  cl_demo_output=>display_data( value = lt_ewz_belege ).
  cl_demo_output=>display_data( value = lt_ewz_mlst ).
