program mat_mul
    implicit none
    INTEGER, allocatable, dimension(:,:) :: A, B, C
    INTEGER N, i, j, ok
    REAL(KIND=8) :: start, end

    print*, "Enter size of array"
    read*, N

    allocate(A(N,N), B(N,N), C(N,N), stat = ok)
    if(ok /= 0) then
        print*,"Failed to allocate memory"
        stop
    end if

    call cpu_time(start)
    do i = 1,N
        do j = 1, N
            A(i,j) = i
            B(i,j) = j 
        end do
    end do
    call cpu_time(end)

    C = matmul(A,B)

    do i = 1,15
        do j = 1,5
            print*, C(i,j)
        end do
    end do

    print*, "Time: ", end-start, "sec"

end program mat_mul