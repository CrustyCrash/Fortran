program name
    use omp_lib
    implicit none
    INTEGER :: i
    REAL*8 :: area, pi, dx,y,x, start, finish
    INTEGER (kind=8) :: N = 9999999

    
    dx = 1.0/N
    x = 0.0
    area = 0.0

   call cpu_time(start)
    !$omp parallel do default(none) reduction(+:area) firstprivate(dx) private(x,y)
    do i = 0, N
        x = i * dx
        y = sqrt(1-x*x)
        area = area + y*dx
    end do
    !$omp end parallel do
    call cpu_time(finish)
    pi = 4.0 * area
    print*, "Value of pi is: ",pi
    print*, "Time taken: ", finish - start, "seconds"
    
end program name
