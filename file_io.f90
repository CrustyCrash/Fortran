program file_io
    IMPLICIT NONE
    
    INTEGER A,B,C
    
    open(1, FILE = "data.txt")
    read (1, *) A,B,C
    print*, A,B,C
    
END PROGRAM file_io