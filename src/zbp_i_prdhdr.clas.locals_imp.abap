CLASS lhc_ZI_PRDHDR DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zi_prdhdr RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zi_prdhdr RESULT result.

    METHODS Activate FOR MODIFY
      IMPORTING keys FOR ACTION zi_prdhdr~Activate.

ENDCLASS.

CLASS lhc_ZI_PRDHDR IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD Activate.
  ENDMETHOD.

ENDCLASS.
