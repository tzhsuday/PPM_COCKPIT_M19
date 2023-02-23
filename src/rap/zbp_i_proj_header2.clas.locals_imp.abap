CLASS lhc_status DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR status RESULT result.

    METHODS validateStatusDate FOR VALIDATE ON SAVE
      IMPORTING keys FOR status~validateStatusDate.

ENDCLASS.

CLASS lhc_status IMPLEMENTATION.

  METHOD get_instance_features.
  ENDMETHOD.

  METHOD validateStatusDate.
  ENDMETHOD.

ENDCLASS.
