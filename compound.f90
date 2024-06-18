program compound
    ! program to find amount for compound interest
    implicit none
    real principal
    real rate
    real time
    real amount

    print*, "Enter Principal"
    read*, principal

    print*, "Enter Rate"
    read*, rate

    print*, "Enter time"
    read*, time

    amount = principal * (1 + (rate/100)**time)
    
    print*, "CI is : ", amount
    
end program compound