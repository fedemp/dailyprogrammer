program collectUsers
    implicit none

    CHARACTER(len=20) :: given_name
    CHARACTER(len=20) :: user_name
    CHARACTER(len=45) :: output
    INTEGER :: age

    PRINT *, 'Please enter your name:'
    READ(*,*) given_name

    PRINT *, 'Please enter your age:'
    READ(*,"(I3)") age

    PRINT *, 'Please enter your user name:'
    READ(*,*) user_name

    WRITE(output, '(A, I0, A)') trim(given_name), age, trim(user_name)

    WRITE(*,'(2A)', advance='no') 'Your name is ',trim(given_name)
    WRITE(*,'(A,I0,A)', advance='no') ', you are ',age,' years old,'
    WRITE(*,'(3A)', advance='no') ' and your username is ',trim(user_name),''
    WRITE(*,'(A)') ''

    open (10, file='output_file.txt', status='unknown')

end program collectUsers
