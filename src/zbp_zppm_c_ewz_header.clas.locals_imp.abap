CLASS lhc_header DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_authorizations FOR AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR header RESULT result.

ENDCLASS.

CLASS lhc_header IMPLEMENTATION.

  METHOD get_authorizations.
  ENDMETHOD.

ENDCLASS.
