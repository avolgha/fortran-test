! **Problem**: (https://leetcode.com/problems/count-odd-numbers-in-an-interval-range/)
! Given two non-negative integers low and high. Return the count of odd
! numbers between low and high (inclusive).

program problem
  implicit none
  
  interface
    subroutine run(low, high)
      integer :: low
      integer :: high
    end subroutine run
  end interface

  call run (3, 7)
  call run (8, 10)
end program problem

subroutine run(low, high)
  integer :: low
  integer :: high
  integer :: cursor
  integer :: count

  count = 0;

  do cursor = low, high
    if ( modulo (cursor, 2) > 0 ) then
      count = count + 1
    end if
  end do

  print *, "amount of odd numbers:", count
  return
end subroutine run
