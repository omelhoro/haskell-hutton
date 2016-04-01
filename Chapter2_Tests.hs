module Chapter2_Tests where

import Test.HUnit
import Chapter2

test1 = TestList
  (map (\(a, b, out) -> "test1" ~: "equal" ~:  (Chapter2.add a b) ~=? out)
    [(1, 2, 3),
    (4, 5, 9),
    (9, 18, 27),
    (0, 0, 0)
    ])

test2 = TestCase $ assertEqual "Should subtract" (Chapter2.minus 3 2) 1

test3 = TestCase $ assertEqual "Should calculate average" (Chapter2.average [2, 2]) 2

test4 = TestCase $ assertEqual "Should calculate factorial" (Chapter2.factorial 10) 3628800

-- test5 = "test1" ~: "(foo 3)" ~: (1,2) ~=? (1, 3)

tests = TestList [test1, test2, test3, test4]
