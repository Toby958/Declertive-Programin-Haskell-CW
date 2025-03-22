2 Haskell -Declarative Prearming CW

CS-205 coursework: due November 13th 2023, 11am
1. Submission for this coursework will be individual; detailed submission instructions will be given on
Canvas next week.
2. Automated tests will be used to award marks; you should scrupulously follow instructions. In particular,
the types of your functions and their names should match exactly what is in this document (case
included).
3. The examples input-output behaviour in the handout are just there for your benefit and encourage you
to systematically test your code on examples on your own; they are not related to the tests used for
marking (they will be randomly generated in large numbers).
4. Feel free to indicate any further relevant information in a comment at the beginning of the file (please
keep it as simple as possible).
5. You are allowed to use any function that is shipped with ghc. If you feel some function is so basic it
should come with a standard Haskell distribution, recall that you can look up functions by types or
names on https://hoogle.haskell.org. You are free to add import statements at the top of your
file to access those functions (like import Data.Char to access isDigit).
6. By submitting coursework electronically, you state that you fully understand and are complying with
the University’s policy on Academic Integrity and Academic Misconduct. The policy can be found at
https://myuni.swansea.ac.uk/academic-life/academic-misconduct. The consequences of com-
mitting academic misconduct can be extremely serious and may have a profound effect on your results
and/or further progression. The penalties range from a written reprimand to cancellation of all of your
marks and withdrawal from the University.
7. There is a total of 40 marks to be gained by answering the questions. 5 additional marks will be given
for adherence to the submission rules (program compiling and containing all relevant definitions; that
will be checked automatically) and 5 marks for good style (e.g. proper indentation, readable code, no
line longer than 100 characters and no TAB characters), so there is a total of 50 marks to be earned.
Question 1. A pizzeria sells pizzas of an arbitrary size and with an arbitrary number of toppings. The
owner Giovanni wishes to have a program that allows to compute the selling price of a pizza depending on
its size (given by its diameter in cm) and the number of toppings, as well as the number of sauces added.
The pizza base costs £0.002 per cm2 and the costs for each topping are £0.001 per cm2. Each sauce costs
£0.50. Since Giovanni also wants to make some profit, he multiplies the costs of a pizza by a factor 1.5. Can
you help Giovanni with a suitable well-structured Haskell function
pizzaPricing :: Float -> Int -> Int -> Float
where the first input is the pizza diameter, the second one is the number of toppings and the last one the
number of sauces? The computed result should be truncated after two digits, e.g. if the computed price is
6.5999, then the resulting price should be 6.59.
[8 marks]
Question 2. Consider the following datatype for non-empty lists
data NEList a = Single a | Cons a (NEList a)
deriving ShowWrite functions
fromNEList :: NEList a -> [a]
toNEList :: [a] -> Maybe (NEList a)
that convert between members of NEList a and regular haskell lists. In particular, we should have the
following equalities being True:
fromNEList (Cons 2 (Single 1)) == [2, 1]
toNEList [] == Nothing
toNEList [7,8,9] == (Just . Cons 7 . Cons 8 . Single $ 9)
[6 marks]
Question 3. (Phonetic Search) The following is a programming test for job applicants provided by a
phone company. You will write a function
matchNames :: [String] -> [String] -> [(String, [String])]
which takes two lists of surnames, say, providedSurnames and allSurnames, and output a list whose ele-
ments are all the pairs where the first component is a surname n from providedSurnames and the second
component are maximal lists of of matching surnames from allSurnames.
Surnames are said to match according to the following rules:
1. All non-alphabetic characters are ignored
2. Word case is not significant
3. After the first letter, any of the following letters are discarded: A, E, I, H, O, U, W, Y.
4. The following sets of letters are considered equivalent
• A, E, I, O, U
• C, G, J, K, Q, S, X, Y, Z
• B, F, P, V, W
• D, T
• M, N
• All others have no equivalent
5. Any consecutive occurrences of equivalent letters (after discarding letters in step 3) are considered as
a single occurrence
The rules should be applied in that order. So, if we consider the following two candidate inputs:
providedSurnames :: [String]
providedSurnames = ["Jones", "Smith"]
allSurnames :: [String]
allSurnames = [
"Smith",
"Smyth",
"Smythe",
"Smid",
"Schmidt",
"Smithers",
"Jonas",
"Johns",
2"Johnson",
"Macdonald",
"Nest O'Malett",
"Ericsson",
"Erikson",
"Saunas",
"Van Damme"
]
calling matchNames providedSurnames allSurnames should return
[("Jones",["Jonas","Johns","Saunas"]),("Smith",["Smith","Smyth","Smythe","Smid","Schmidt"])]
[13 marks]

Lessons learned 

•	Precise Type Matching and Function Signatures
•	Gained experience in writing functions that exactly match required type definitions, crucial for passing automated tests.
•	Working with Custom Data Types
•	Learned to construct and manipulate custom types like NEList, improving understanding of algebraic data types in Haskell.
•	Recursive Thinking
•	Strengthened ability to write recursive functions, especially for converting between data structures and navigating mazes.
•	Functional Abstractions
•	Improved skills in using higher-order functions, list comprehensions, and immutability to create concise and efficient logic.
•	Mathematical Reasoning in Code
•	Applied mathematical calculations in a functional context (e.g., area-based pricing logic in the pizza problem).
•	String and List Processing
•	Developed systematic approaches to text transformation and filtering in the phonetic surname matching task.
•	Algorithm Design and Problem Decomposition
•	Designed and implemented a custom pathfinding algorithm using functional patterns for the maze navigation task.
•	Code Style and Readability
•	Focused on writing clean, well-indented, and readable code, adhering to functional style best practices.
•	Defensive Programming
![image](https://github.com/user-attachments/assets/6cbe6973-218d-4b49-b9fc-93f07e80c87f)
