program addition
    implicit none
    INTEGER :: A(1000),B(1000),C(1000), i

    do i = 1,999,1
        A(i) = i
        B(i) = i
    end do

    C = A + B

    do i = 1,10
        print *, C(i)
    end do

end program addition