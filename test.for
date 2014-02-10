C
C     TEST PROGRAM
C
      REAL RA, RB, RC, R1R, R1I, R2R, R2I
C
      CALL PRINTHEADER()
      CALL PRINTNEWLINE()
C
      CALL PRINTCOUNT(1)
      CALL PRINTREAL(3.0)
      CALL PRINTBLANK()
      CALL PRINTREAL(4.0)
C
      CALL PRINTNEWLINE()
      CALL PRINTFOOTER(20)
      END
C
C     ===== SUBROUTINE PRINTHEADER =====
C     THIS ROUTINE WILL BE USED TO PRINT
C     THE COLUMNS HEADER
C     ==================================
      SUBROUTINE PRINTHEADER()
C
      WRITE(6, 400) 'COUNT' 
  400 FORMAT(A5 $)
      WRITE(6, 410) 'A', 'B', 'C'
  410 FORMAT(3A15 $)
      WRITE(6, 420) 'X1 REAL', 'X1 IMG', 'X2 REAL', 'X2 IMG'
  420 FORMAT(5A15 $)
C     
      RETURN
      END     
C
C     ===== SUBROUTINE PRINTBLANK =====
C     THIS ROUTINE WILL BE USED WHEN AN
C     ENTRY SHOULD BE LEFT BLANK
C     =================================
      SUBROUTINE PRINTBLANK()
C
      WRITE(6, 450) ''
  450 FORMAT(A15 $)
C
      RETURN
      END
C
C     ===== SUBROUTINE PRINTREAL =====
C     THIS ROUTINE WILL BE USED TO
C     PRINT REAL VALUES
C     ================================
      SUBROUTINE PRINTREAL(RVAL)
C
      WRITE(6, 500) RVAL 
  500 FORMAT(1PE15.4 $)
C
      RETURN
      END
C
C     ===== SUBROUTINE PRINTCOUNT =====
C     THIS ROUTINE WILL BE USED TO      
C     PRINT OUT THE CURRENT COUNT
C     =================================
      SUBROUTINE PRINTCOUNT(ICOUNT)
C
      WRITE(6, 550) ICOUNT
  550 FORMAT(I4, ':' $)
C
      RETURN
      END
C
C     ===== SUBROUTINE PRINTNEWLINE =====
C     THIS ROUTINE WILL BE USED TO PRINT
C     A NEW LINE
C     ===================================
      SUBROUTINE PRINTNEWLINE()
C
      WRITE(6, 570)
  570 FORMAT()
C
      RETURN
      END
C
C     ===== SUBROUTINE PRINTFOOTER =====
C     THIS ROUTINE WILL BE USED TO PRINT
C     THE FINAL LINE COUNT
C     ==================================
      SUBROUTINE PRINTFOOTER(ICOUNT)
C
      WRITE(6, 600)
  600 FORMAT()
      WRITE(6, 610) ICOUNT
  610 FORMAT('END OF PROGRAM: ', I2, ' CARDS READ.')
C
      RETURN
      END
