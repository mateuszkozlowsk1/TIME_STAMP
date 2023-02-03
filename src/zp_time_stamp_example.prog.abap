*&---------------------------------------------------------------------*
*& Report zp_time_stamp_example
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zp_time_stamp_example.

DATA: lv_current_timestamp TYPE timestamp,
      ls_timestamp         TYPE zptimestamp.

PARAMETERS:  pa_test TYPE i.

MESSAGE 'Program started' TYPE 'I'.

DO.
  WAIT UP TO pa_test SECONDS.

  GET TIME STAMP FIELD lv_current_timestamp.

  ls_timestamp-timestamp = lv_current_timestamp.

  MODIFY zptimestamp FROM ls_timestamp.

  IF sy-subrc = 0.
    MESSAGE |Record insrtrd { ls_timestamp-timestamp } | TYPE 'I'.
  ENDIF.
ENDDO.
