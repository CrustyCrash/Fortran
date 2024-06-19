program average
    implicit none
    INTEGER MARKS1
    INTEGER MARKS2
    REAL AVG
    CHARACTER (LEN=10) NAME
    INTEGER M

    open(1, FILE = 'marks.txt')
    
    do M = 1, 3

        READ(1, *) NAME, MARKS1, MARKS2
        AVG = (MARKS1 + MARKS2)/2
        PRINT*, NAME, MARKS1, MARKS2, AVG
    end do

end program average
