program do_loop

    implicit none
    REAL R
    INTEGER I

    do I = 1, 10
        CALL RANDOM_NUMBER(R)                   ! Subroutine to call random_number 
        print*, R
    end do
    
    do I = 97, 122
        print*, ACHAR(I)
    end do

    WRITE(*,1, ADVANCE = 'YES')                 ! kind of like /n ?

    do I = 97, 122
        WRITE( *, 1, ADVANCE = 'NO' )ACHAR( I ) ! Try ADVANCE = 'YES'
        1 FORMAT( A1 )                          ! FORMAT A = ALPHABET, B = BINARY, H = HEX ? , O = OCTAL, Z = ?
    end do

    WRITE(*,1, ADVANCE = 'YES')

    do I = 122, 97, -1
        WRITE(*, 2, ADVANCE='NO') ACHAR(I)
        2 FORMAT(A1)
    end do

end program do_loop