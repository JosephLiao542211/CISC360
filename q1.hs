module A1 where

-- Rename this file to include your student ID: a1-studentid.hs
-- Also, add your student ID number after the "=":
student_id :: Integer
student_id =  20366481

-- THIS FILE WILL NOT COMPILE UNTIL YOU ADD YOUR STUDENT ID ABOVE
check_that_you_added_your_student_ID_above = ()

{- Checklist

   I have read the "Read this first" section,
     including "Reminder", "Try to start early", "Late policy",
     and "Your lowest assignment mark is dropped":

   I have read the "Version control" section:

   I have read the "IMPORTANT: Your file must compile" section:

   I have read the "Document your code" section:

   I have read the "Strive for simplicity" section:

   I have read the "Be careful with library functions" section:

   I have read the "Test cases" section:

   I have added my student ID above: 
-}

{-
Q1:
   cube (m, n)  ==  True
   if and only if
                         3
     n is m cubed  (n = m )

     or
                         3
     m is n cubed  (m = n )

   Hint: Haskell has an exponentiation operator, **,
         but it uses floating-point arithmetic so I wouldn't trust it here.
         The multiplication operator * works on integers (as well as floats).
-}
cube :: (Integer, Integer) -> Bool
cube (m, n) =  if n == m*m*m || m == n*n*n then True else False

{-
  Testing cube:

  CISC 360 CONVENTION:
  Every variable beginning with "test_" should evaluate to True.
  So test_cube1 should be True because  cube 1 (-1)  should equal True,
  test_cube2 should be True because  (cube 5 2)  should equal False,
  and so on.
-}
test_cube1, test_cube2, test_cube3, test_cube4, test_cube5, test_cube6, test_cube7 :: Bool
test_cube1 = (cube (1, -1)) == False
test_cube2 = (cube (125, 5)) == True
test_cube3 = (cube (-3, -27)) == True
test_cube4 = (cube (-3, 27)) == False
test_cube5 = (cube (2, 4)) == False
test_cube6 = (cube (4096, 16)) == True
test_cube7 = (cube (16, 4095)) == False

-- Do all cube tests together
test_cube :: Bool
test_cube = test_cube1 && test_cube2
                       && test_cube3
                       && test_cube4
                       && test_cube5
                       && test_cube6
                       && test_cube7

-- Main function to print the results
main :: IO ()
main = print test_cube
