program arithematic
    implicit none
    INTEGER A
    INTEGER B
    INTEGER CHOICE
    INTEGER RESULT 

    print*, "Enter A"
    read*, A

    print*, "Enter B"
    read*, B

    print*, "Enter 1 for addition"
    print*, "Enter 2 for subtraction"
    print*, "Enter 3 for multiplication"
    print*, "Enter 4 for division"

    read*, CHOICE
    
    if ( CHOICE == 1 ) then
        RESULT = a + b
    
    else if (CHOICE == 2) then
    RESULT = a - B

    else if (CHOICE ==3) then
        RESULT = A * B

    else if (CHOICE == 4) then
        if (b /= 0) then
            RESULT = A/B
        else
            print*, "Division by zero is not possible: ZeroDivisionException"
            RESULT = -9999999
        end if
    end if

    print*, "Result is: ", RESULT

end program arithematic