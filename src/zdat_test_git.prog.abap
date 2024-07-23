*&---------------------------------------------------------------------*
*& Report ZDAT_TEST_GIT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zdat_test_git.

IF sy-subrc = 0.
ENDIF.

SELECT SINGLE *
  FROM mara
  WHERE matnr = 'sm_rep01'
  INTO @DATA(ls_mara).

IF sy-subrc <> 0.
  RETURN.
ENDIF.

SELECT SINGLE *
FROM mara
WHERE matnr = 'sm_rep01'
INTO @DATA(ls_mara2).
