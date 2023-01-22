-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 10:14 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `test_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qid` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `a` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `b` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `d` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` int(1) DEFAULT NULL,
  `explanation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`test_id`, `qid`, `q`, `a`, `b`, `c`, `d`, `ans`, `marks`, `explanation`) VALUES
('industrious-turtle', '1', 'Which of the following escape sequence represents carriage return?', '\\r', '\\c', '\\n\\r', 'None of the above', 'A', 1, ''),
('industrious-turtle', '2', 'Input: 1\n#include <stdio.h>\nint main()\n{\n	register int i, x;\n	scanf(\"%d\", &i);\n	x = ++i;\n	printf(\"%d\", x);\n	return 0;\n}', '0', '1', '2', 'Compiler Error', 'D', 2, ''),
('industrious-turtle', '3', '#include <iostream>\nusing namespace std;\n#include <iostream>\nusing namespace std;\nint main() {\n	int i, x[5], y, z[5];\n	for (i = 0; i < 5; i++) {\n    	     x[i] = i;\n    	     z[i] = i + 3;\n    	     y = z[i];\n    	     x[i] = y++;\n	}\n	for (i = 0; i < 5; i++)\n    	    cout << x[i] << \" \";\n	return 0;\n}', '3 4 5 6 7', '4 5 6 7 8', '2 3 4 5 6', ' none of above\n', 'A', 2, ''),
('industrious-turtle', '4', '#include <stdio.h>\n#define square(x) (x * x)\n\nint main()\n{\n	int x, y = 3;\n	x = square(y + 1);\n	printf(\"%d\\n\", x);\n	return 0;\n}', 'Error', '16', '7', 'Garbage', '', 1, ''),
('industrious-turtle', '5', '#include <iostream>\nusing namespace std;\nint main()\n{\n	char* str = \"HelloWorld\";\n	int* p, arr[] = { 10, 15, 70, 19 };\n	p = arr;\n	str++;\n	p++;\n	cout << *p << \" \" << str << endl;\n	return 0;\n}', '10 elloWorld', '15 HelloWorld', '15 elloWorld', '10 HelloWorld', 'C', 1, ''),
('industrious-turtle', '6', '#include <stdio.h>\nvoid main()\n{\n	unsigned char x = 350;\n	printf(\"%d\", x);\n}', 'Error', '94', '350', 'Garbage Value', 'B', 1, ''),
('industrious-turtle', '7', '#include <stdio.h>\nint main(void)\n{\n    int y, z;\n    int x = scanf(\"%d %d\", &y, &z);\n    printf(\"%d\", x);\n    return 0;\n}\nInput: 12 10', '12', '2', 'Syntax error', '10', 'B', 2, ''),
('industrious-turtle', '8', 'void main()\n{\n    int const* p = 5;\n    printf(\"%d\", ++(*p));\n}\n', '6', '5', 'Garbage Value', 'Compiler Error', 'D', 1, ''),
('industrious-turtle', '9', 'What is the general syntax for accessing the namespace variable?', 'namespace::operator', 'namespace:operator', 'namespace->operator', 'none of the mentioned', 'A', 1, ''),
('industrious-turtle', '10', ' A constructor that accept _____ parameters is called the default constructor.', '0', '1', '2', '3', 'A', 1, ''),
('industrious-turtle', '11', '#include <iostream>\nusing namespace std;\nint main()\n{\n	for (int i = 14; i > 8; i = i - 2)\n    	    cout << i;\n	for (int i = -5; i > -7; i--)\n    	    cout << i + 1;\n	return 0;\n}', '141210-4-5', '141210-4', '1412-4-5', '141210-4', 'A', 1, ''),
('industrious-turtle', '12', '#include\"stdio.h\"\n#include\"stdlib.h\"\nvoid reverse(int i)\n{\n    if (i > 5)\n         exit(0);\n     printf(\"%d\\n\", i);\n     return reverse(i++);\n}\nint main()\n{\n    reverse(1);\n}\n', 'Segmenation fault', 'Compilation error', 'Print 1 Infinite time', 'Both a & c', 'D', 1, ''),
('industrious-turtle', '13', 'The number of relational operators in the C language is', '4', '6', '3', '1', 'B', 1, ''),
('industrious-turtle', '14', '# include <stdio.h>\nvoid fun(int *ptr)\n{\n    *ptr = 30;\n}\n \nint main()\n{\n  int y = 20;\n  fun(&y);\n  printf(\"%d\", y);\n \n  return 0;\n}', '20', '30', 'Compile Error', 'Runtime Error', '', 1, ''),
('industrious-turtle', '15', ' In CPP, cin and cout are the predefined stream __________ .', 'Operator', 'Functions', 'Objects', 'Data types', 'C', 1, ''),
('industrious-turtle', '16', '\n#include <stdio.h>\nint main()\n{\n	int ***r, **q, *p, i=8;\n	p = &i;\n	q = &p;\n	r = &q;\n	printf(“%d, %d, %d\\n”, *p, **q, ***r);\n	return 0;\n}\n\n', '8, 8, 8', '4000, 4002, 4004', '4000, 4004, 4008', '4000,4000, 4000', 'A', 1, ''),
('groovy-uakari', '1', '#include <iostream>\nusing namespace std;\nint main()\n{\n   int a[2][4] = {3, 6, 9, 12, 15, 18, 21, 24};\n   cout << *(a[1] + 2) << *(*(a + 1) + 2) << 2[1[a]];\n   return 0;\n}', '151821', '212121', '242424', 'Compile time error', 'B', 1, ''),
('groovy-uakari', '2', 'void main()\n{\n    int m, i = 0, j = 1, k = 2;\n    m = i++ || j++ || k++;\n    printf(\"%d %d %d %d\", m, i, j, k);\n}', '1 1 2 3', '1 1 2 2', '0 1 2 2', '0 1 2 3', 'B', 1, ''),
('groovy-uakari', '3', 'What is the return type of malloc() or calloc()', 'void *', 'int *', 'void **', 'Pointer of allocated memory location', 'A', 1, ''),
('groovy-uakari', '4', 'Which of the following statement is correct?', 'The default value for an argument cannot be function call', 'C++ allows the redefinition of a default parameter', 'Both A and B', 'C++ does not allow the redefinition of a default parameter', 'D', 1, ''),
('groovy-uakari', '5', 'Which of the following can be overloaded?', 'Objects', 'Functions ', 'Operators', 'Both B and C', 'D', 1, ''),
('groovy-uakari', '6', 'Specify the 2 library functions to dynamically allocate memory?', 'malloc() and mealloc()', 'alloc() and mealloc()', 'malloc() and calloc()', 'memalloc() and faralloc()', 'C', 1, ''),
('groovy-uakari', '7', 'Point out the error in the program\nstruct emp\n{\n	int ecode;\n	struct emp e;\n};', 'Error: in structure declaration', 'Linker error', 'No error', 'Run time error', 'A', 1, ''),
('groovy-uakari', '8', '#include <iostream>\nusing namespace std;\nint main()\n{\n	for (int i = 10; i > 6; i = i - 2)\n    	    cout << i;\n	for (int i = -5; i > -7; i--)\n    	    cout << i + 1;\n	return 0;\n}', '1086- -6', '108-4-5', '108-5-6', '86-4-5', 'B', 1, ''),
('groovy-uakari', '9', 'Which member function is used to determine whether the stream object is currently associated with a file?', 'is_open', 'buf', 'string', 'none of the above', 'A', 1, ''),
('groovy-uakari', '10', '#include <iostream>\nusing namespace std;\n\nclass Test {\n    static int i;\n    int j;\n};\n\nint Test::i;\n\nint main() {\n    cout<<sizeof(Test);\n    return 0;\n}\nAssume size of int as 4 bytes', '4', '8', 'Compile Error', 'Run time Error', 'A', 2, ''),
('groovy-uakari', '11', 'When can we have two classes with same name?', 'Not possible', 'In different files', 'Different namespace', 'Anywhere', 'C', 1, ''),
('groovy-uakari', '12', ' #include <iostream>\nusing namespace std;\n\nclass X {\npublic: X()\n    	{ cout<<\"X\"; }\n    	~X()\n    	{ cout<<\"~X\"; }\n};\nclass Y : public X {\npublic: Y()\n    	{ cout<<\"Y\"; }\n    	~Y()\n    	{ cout<<\"~Y\"; }\n};\nint main() {\n	Y obj;\n	return 0;\n}', 'XY~X~Y', 'XY~Y~X', 'X~XY~Y', 'X~X~YY', 'B', 1, ''),
('groovy-uakari', '13', '#include <stdio.h>\nint main()\n{\n	int a = 1, b = 2, c = 3;\n	char d = 0;\n	if (a, b, c, d) {\n    	printf(\"enter in the if\\n\");\n	}\n	printf(\"not enterd\\n\");\n	return 0;\n}', 'enter in the if', 'not entered', 'run time error', 'segmentation fault', 'B', 2, ''),
('groovy-uakari', '14', '#include <iostream>\nusing namespace std;\nint main()\n{\n cout<<\"Hello\";;;;;\n return 0;\n}', 'Compilation Error', 'Runtime Error', 'Hello', 'Hello;;;;', 'C', 1, ''),
('groovy-uakari', '15', 'The two statements that can be used to change the flow of control are ________', 'if and while', 'if and switch', 'switch and do-while', 'break and continue', 'B', 1, ''),
('groovy-uakari', '16', 'If p and q are assigned values 2 and 3 respectively then the statement p=q++', 'Gives an error message', 'Assigns a value 4 to p', 'Assigns a value 3 to p', 'Assigns a value 5 to p', 'C', 1, ''),
('groovy-uakari', '17', '#include <iostream>\nusing namespace std;\nint main()\n{\n	int i, x[5], y, z[5];\n	for (i = 0; i < 5; i++) {\n    	    x[i] = i;\n    	    z[i] = i + 3;\n    	    y = z[i];\n    	    x[i] = y++;\n	}\n	for (i = 0; i < 5; i++)\n    	    cout << x[i] << \" \";\n	return 0;\n}', '3 4 5 6 7', '4 5 6 7 8', '2 3 4 5 6', 'none of above', 'A', 2, ''),
('groovy-uakari', '18', '#include <stdio.h>\n#define square(x) (x * x)\n\nint main()\n{\n	int x, y = 1;\n	x = square(y + 1);\n	printf(\"%d\\n\", x);\n	return 0;\n}\n', 'Error', '4', '3', 'Garbage Value', 'C', 1, ''),
('groovy-uakari', '19', 'If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?', '.', '*', '&', '->', 'D', 1, ''),
('groovy-uakari', '20', '#include <stdio.h>\nint main()\n{\n	int i=3, *j, k;\n	j = &i;\n	printf(“%d\\n”, i**j*i+*j);\n	return 0;\n}', '30', '27', '9', '3', 'A', 1, ''),
('groovy-uakari', '21', 'For automatic objects, constructors and destructors are called each time the objects', 'Enter and leave scope', 'Inherit parent class', 'Are Constructed', 'Are destroyed', 'A', 1, ''),
('groovy-uakari', '22', '#include <iostream>\nusing namespace std;\nint n(char, int);\nint (*p) (char, int) = n;\nint main()\n{\n	(*p)(\'d\', 9);\n	p(10, 9);\n	return 0;\n}\n\nint n(char c, int i)\n{\n	cout << c <<  i;\n	return 0;\n}', 'd9\n9', 'd9d9', 'd9', 'd9109', 'A', 2, ''),
('groovy-uakari', '23', 'void main()\n{\n	int a = 1;\n	switch(a)\n	{\n    	case 1: cout<<\"One\";\n    	case 2: cout<<\"Two\";\n    	case 3: cout<<\"Three\";\n    	default: cout<<\"Default\";\n	}\n\n}', 'One', 'OneTwoThree', 'Default', 'OneTwoThreeDefault', 'D', 1, ''),
('groovy-uakari', '24', '#include <stdio.h>\nint main()\n{\n	int val = 1;\n\n	do {\n    	    val++;\n    	    ++val;\n	} while (val++ > 25);\n	printf(\"%d\\n\", val);\n	return 0;\n}', '25', '3', '4', '26', 'C', 1, ''),
('groovy-uakari', '25', '#include <stdio.h>\nvoid main()\n{\n	printf(6 + \"Geeks for Geeks\");\n}', '6Geeks for Geeks', 'Geeks for Geeks', 'for Geeks', 'Compile time error', 'C', 2, ''),
('topaz-caterpillar', '1', '#include <iostream>\nusing namespace std;\nint main()\n{\n   int a[2][4] = {3, 6, 9, 12, 15, 18, 21, 24};\n   cout << *(a[1] + 2) << *(*(a + 1) + 2) << 2[1[a]];\n   return 0;\n}', '151821', '212121', '242424', 'Compile time error', 'B', 1, ''),
('topaz-caterpillar', '2', 'void main()\n{\n    int m, i = 0, j = 1, k = 2;\n    m = i++ || j++ || k++;\n    printf(\"%d %d %d %d\", m, i, j, k);\n}', '1 1 2 3', '1 1 2 2', '0 1 2 2', '0 1 2 3', 'B', 1, ''),
('topaz-caterpillar', '3', 'What is the return type of malloc() or calloc()', 'void *', 'int *', 'void **', 'Pointer of allocated memory location', 'A', 1, ''),
('topaz-caterpillar', '4', 'Which of the following statement is correct?', 'The default value for an argument cannot be function call', 'C++ allows the redefinition of a default parameter', 'Both A and B', 'C++ does not allow the redefinition of a default parameter', 'D', 1, ''),
('topaz-caterpillar', '5', 'Which of the following can be overloaded?', 'Objects', 'Functions ', 'Operators', 'Both B and C', 'D', 1, ''),
('topaz-caterpillar', '6', 'Specify the 2 library functions to dynamically allocate memory?', 'malloc() and mealloc()', 'alloc() and mealloc()', 'malloc() and calloc()', 'memalloc() and faralloc()', 'C', 1, ''),
('topaz-caterpillar', '7', 'Point out the error in the program\nstruct emp\n{\n	int ecode;\n	struct emp e;\n};', 'Error: in structure declaration', 'Linker error', 'No error', 'Run time error', 'A', 1, ''),
('topaz-caterpillar', '8', '#include <iostream>\nusing namespace std;\nint main()\n{\n	for (int i = 10; i > 6; i = i - 2)\n    	    cout << i;\n	for (int i = -5; i > -7; i--)\n    	    cout << i + 1;\n	return 0;\n}', '1086- -6', '108-4-5', '108-5-6', '86-4-5', 'B', 1, ''),
('topaz-caterpillar', '9', 'Which member function is used to determine whether the stream object is currently associated with a file?', 'is_open', 'buf', 'string', 'none of the above', 'A', 1, ''),
('topaz-caterpillar', '10', '#include <iostream>\nusing namespace std;\n\nclass Test {\n    static int i;\n    int j;\n};\n\nint Test::i;\n\nint main() {\n    cout<<sizeof(Test);\n    return 0;\n}\nAssume size of int as 4 bytes', '4', '8', 'Compile Error', 'Run time Error', 'A', 2, ''),
('topaz-caterpillar', '11', 'When can we have two classes with same name?', 'Not possible', 'In different files', 'Different namespace', 'Anywhere', 'C', 1, ''),
('topaz-caterpillar', '12', ' #include <iostream>\nusing namespace std;\n\nclass X {\npublic: X()\n    	{ cout<<\"X\"; }\n    	~X()\n    	{ cout<<\"~X\"; }\n};\nclass Y : public X {\npublic: Y()\n    	{ cout<<\"Y\"; }\n    	~Y()\n    	{ cout<<\"~Y\"; }\n};\nint main() {\n	Y obj;\n	return 0;\n}', 'XY~X~Y', 'XY~Y~X', 'X~XY~Y', 'X~X~YY', 'B', 1, ''),
('topaz-caterpillar', '13', '#include <stdio.h>\nint main()\n{\n	int a = 1, b = 2, c = 3;\n	char d = 0;\n	if (a, b, c, d) {\n    	printf(\"enter in the if\\n\");\n	}\n	printf(\"not enterd\\n\");\n	return 0;\n}', 'enter in the if', 'not entered', 'run time error', 'segmentation fault', 'B', 2, ''),
('topaz-caterpillar', '14', '#include <iostream>\nusing namespace std;\nint main()\n{\n cout<<\"Hello\";;;;;\n return 0;\n}', 'Compilation Error', 'Runtime Error', 'Hello', 'Hello;;;;', 'C', 1, ''),
('topaz-caterpillar', '15', 'The two statements that can be used to change the flow of control are ________', 'if and while', 'if and switch', 'switch and do-while', 'break and continue', 'B', 1, ''),
('topaz-caterpillar', '16', 'If p and q are assigned values 2 and 3 respectively then the statement p=q++', 'Gives an error message', 'Assigns a value 4 to p', 'Assigns a value 3 to p', 'Assigns a value 5 to p', 'C', 1, ''),
('topaz-caterpillar', '17', '#include <iostream>\nusing namespace std;\nint main()\n{\n	int i, x[5], y, z[5];\n	for (i = 0; i < 5; i++) {\n    	    x[i] = i;\n    	    z[i] = i + 3;\n    	    y = z[i];\n    	    x[i] = y++;\n	}\n	for (i = 0; i < 5; i++)\n    	    cout << x[i] << \" \";\n	return 0;\n}', '3 4 5 6 7', '4 5 6 7 8', '2 3 4 5 6', 'none of above', 'A', 2, ''),
('topaz-caterpillar', '18', '#include <stdio.h>\n#define square(x) (x * x)\n\nint main()\n{\n	int x, y = 1;\n	x = square(y + 1);\n	printf(\"%d\\n\", x);\n	return 0;\n}\n', 'Error', '4', '3', 'Garbage Value', 'C', 1, ''),
('topaz-caterpillar', '19', 'If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?', '.', '*', '&', '->', 'D', 1, ''),
('topaz-caterpillar', '20', '#include <stdio.h>\nint main()\n{\n	int i=3, *j, k;\n	j = &i;\n	printf(“%d\\n”, i**j*i+*j);\n	return 0;\n}', '30', '27', '9', '3', 'A', 1, ''),
('topaz-caterpillar', '21', 'For automatic objects, constructors and destructors are called each time the objects', 'Enter and leave scope', 'Inherit parent class', 'Are Constructed', 'Are destroyed', 'A', 1, ''),
('topaz-caterpillar', '22', '#include <iostream>\nusing namespace std;\nint n(char, int);\nint (*p) (char, int) = n;\nint main()\n{\n	(*p)(\'d\', 9);\n	p(10, 9);\n	return 0;\n}\n\nint n(char c, int i)\n{\n	cout << c <<  i;\n	return 0;\n}', 'd9\n9', 'd9d9', 'd9', 'd9109', 'A', 2, ''),
('topaz-caterpillar', '23', 'void main()\n{\n	int a = 1;\n	switch(a)\n	{\n    	case 1: cout<<\"One\";\n    	case 2: cout<<\"Two\";\n    	case 3: cout<<\"Three\";\n    	default: cout<<\"Default\";\n	}\n\n}', 'One', 'OneTwoThree', 'Default', 'OneTwoThreeDefault', 'D', 1, ''),
('topaz-caterpillar', '24', '#include <stdio.h>\nint main()\n{\n	int val = 1;\n\n	do {\n    	    val++;\n    	    ++val;\n	} while (val++ > 25);\n	printf(\"%d\\n\", val);\n	return 0;\n}', '25', '3', '4', '26', 'C', 1, ''),
('topaz-caterpillar', '25', '#include <stdio.h>\nvoid main()\n{\n	printf(6 + \"Geeks for Geeks\");\n}', '6Geeks for Geeks', 'Geeks for Geeks', 'for Geeks', 'Compile time error', 'C', 2, ''),
('spotted-caracal', '1', '#include <iostream>\nusing namespace std;\nint main()\n{\n   int a[2][4] = {3, 6, 9, 12, 15, 18, 21, 24};\n   cout << *(a[1] + 2) << *(*(a + 1) + 2) << 2[1[a]];\n   return 0;\n}', '151821', '212121', '242424', 'Compile time error', 'B', 1, ''),
('spotted-caracal', '2', 'void main()\n{\n    int m, i = 0, j = 1, k = 2;\n    m = i++ || j++ || k++;\n    printf(\"%d %d %d %d\", m, i, j, k);\n}', '1 1 2 3', '1 1 2 2', '0 1 2 2', '0 1 2 3', 'B', 1, ''),
('spotted-caracal', '3', 'What is the return type of malloc() or calloc()', 'void *', 'int *', 'void **', 'Pointer of allocated memory location', 'A', 1, ''),
('spotted-caracal', '4', 'Which of the following statement is correct?', 'The default value for an argument cannot be function call', 'C++ allows the redefinition of a default parameter', 'Both A and B', 'C++ does not allow the redefinition of a default parameter', 'D', 1, ''),
('spotted-caracal', '5', 'Which of the following can be overloaded?', 'Objects', 'Functions ', 'Operators', 'Both B and C', 'D', 1, ''),
('spotted-caracal', '6', 'Specify the 2 library functions to dynamically allocate memory?', 'malloc() and mealloc()', 'alloc() and mealloc()', 'malloc() and calloc()', 'memalloc() and faralloc()', 'C', 1, ''),
('spotted-caracal', '7', 'Point out the error in the program\nstruct emp\n{\n	int ecode;\n	struct emp e;\n};', 'Error: in structure declaration', 'Linker error', 'No error', 'Run time error', 'A', 1, ''),
('spotted-caracal', '8', '#include <iostream>\nusing namespace std;\nint main()\n{\n	for (int i = 10; i > 6; i = i - 2)\n    	    cout << i;\n	for (int i = -5; i > -7; i--)\n    	    cout << i + 1;\n	return 0;\n}', '1086- -6', '108-4-5', '108-5-6', '86-4-5', 'B', 1, ''),
('spotted-caracal', '9', 'Which member function is used to determine whether the stream object is currently associated with a file?', 'is_open', 'buf', 'string', 'none of the above', 'A', 1, ''),
('spotted-caracal', '10', '#include <iostream>\nusing namespace std;\n\nclass Test {\n    static int i;\n    int j;\n};\n\nint Test::i;\n\nint main() {\n    cout<<sizeof(Test);\n    return 0;\n}\nAssume size of int as 4 bytes', '4', '8', 'Compile Error', 'Run time Error', 'A', 2, ''),
('spotted-caracal', '11', 'When can we have two classes with same name?', 'Not possible', 'In different files', 'Different namespace', 'Anywhere', 'C', 1, ''),
('spotted-caracal', '12', ' #include <iostream>\nusing namespace std;\n\nclass X {\npublic: X()\n    	{ cout<<\"X\"; }\n    	~X()\n    	{ cout<<\"~X\"; }\n};\nclass Y : public X {\npublic: Y()\n    	{ cout<<\"Y\"; }\n    	~Y()\n    	{ cout<<\"~Y\"; }\n};\nint main() {\n	Y obj;\n	return 0;\n}', 'XY~X~Y', 'XY~Y~X', 'X~XY~Y', 'X~X~YY', 'B', 1, ''),
('spotted-caracal', '13', '#include <stdio.h>\nint main()\n{\n	int a = 1, b = 2, c = 3;\n	char d = 0;\n	if (a, b, c, d) {\n    	printf(\"enter in the if\\n\");\n	}\n	printf(\"not enterd\\n\");\n	return 0;\n}', 'enter in the if', 'not entered', 'run time error', 'segmentation fault', 'B', 2, ''),
('spotted-caracal', '14', '#include <iostream>\nusing namespace std;\nint main()\n{\n cout<<\"Hello\";;;;;\n return 0;\n}', 'Compilation Error', 'Runtime Error', 'Hello', 'Hello;;;;', 'C', 1, ''),
('spotted-caracal', '15', 'The two statements that can be used to change the flow of control are ________', 'if and while', 'if and switch', 'switch and do-while', 'break and continue', 'B', 1, ''),
('spotted-caracal', '16', 'If p and q are assigned values 2 and 3 respectively then the statement p=q++', 'Gives an error message', 'Assigns a value 4 to p', 'Assigns a value 3 to p', 'Assigns a value 5 to p', 'C', 1, ''),
('spotted-caracal', '17', '#include <iostream>\nusing namespace std;\nint main()\n{\n	int i, x[5], y, z[5];\n	for (i = 0; i < 5; i++) {\n    	    x[i] = i;\n    	    z[i] = i + 3;\n    	    y = z[i];\n    	    x[i] = y++;\n	}\n	for (i = 0; i < 5; i++)\n    	    cout << x[i] << \" \";\n	return 0;\n}', '3 4 5 6 7', '4 5 6 7 8', '2 3 4 5 6', 'none of above', 'A', 2, ''),
('spotted-caracal', '18', '#include <stdio.h>\n#define square(x) (x * x)\n\nint main()\n{\n	int x, y = 1;\n	x = square(y + 1);\n	printf(\"%d\\n\", x);\n	return 0;\n}\n', 'Error', '4', '3', 'Garbage Value', 'C', 1, ''),
('spotted-caracal', '19', 'If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?', '.', '*', '&', '->', 'D', 1, ''),
('spotted-caracal', '20', '#include <stdio.h>\nint main()\n{\n	int i=3, *j, k;\n	j = &i;\n	printf(“%d\\n”, i**j*i+*j);\n	return 0;\n}', '30', '27', '9', '3', 'A', 1, ''),
('spotted-caracal', '21', 'For automatic objects, constructors and destructors are called each time the objects', 'Enter and leave scope', 'Inherit parent class', 'Are Constructed', 'Are destroyed', 'A', 1, ''),
('spotted-caracal', '22', '#include <iostream>\nusing namespace std;\nint n(char, int);\nint (*p) (char, int) = n;\nint main()\n{\n	(*p)(\'d\', 9);\n	p(10, 9);\n	return 0;\n}\n\nint n(char c, int i)\n{\n	cout << c <<  i;\n	return 0;\n}', 'd9\n9', 'd9d9', 'd9', 'd9109', 'A', 2, ''),
('spotted-caracal', '23', 'void main()\n{\n	int a = 1;\n	switch(a)\n	{\n    	case 1: cout<<\"One\";\n    	case 2: cout<<\"Two\";\n    	case 3: cout<<\"Three\";\n    	default: cout<<\"Default\";\n	}\n\n}', 'One', 'OneTwoThree', 'Default', 'OneTwoThreeDefault', 'D', 1, ''),
('spotted-caracal', '24', '#include <stdio.h>\nint main()\n{\n	int val = 1;\n\n	do {\n    	    val++;\n    	    ++val;\n	} while (val++ > 25);\n	printf(\"%d\\n\", val);\n	return 0;\n}', '25', '3', '4', '26', 'C', 1, ''),
('spotted-caracal', '25', '#include <stdio.h>\nvoid main()\n{\n	printf(6 + \"Geeks for Geeks\");\n}', '6Geeks for Geeks', 'Geeks for Geeks', 'for Geeks', 'Compile time error', 'C', 2, ''),
('dynamic-beetle', '1', '#include <iostream>\nusing namespace std;\nint main()\n{\n   int a[2][4] = {3, 6, 9, 12, 15, 18, 21, 24};\n   cout << *(a[1] + 2) << *(*(a + 1) + 2) << 2[1[a]];\n   return 0;\n}', '151821', '212121', '242424', 'Compile time error', 'B', 1, ''),
('dynamic-beetle', '2', 'void main()\n{\n    int m, i = 0, j = 1, k = 2;\n    m = i++ || j++ || k++;\n    printf(\"%d %d %d %d\", m, i, j, k);\n}', '1 1 2 3', '1 1 2 2', '0 1 2 2', '0 1 2 3', 'B', 1, ''),
('dynamic-beetle', '3', 'What is the return type of malloc() or calloc()', 'void *', 'int *', 'void **', 'Pointer of allocated memory location', 'A', 1, ''),
('dynamic-beetle', '4', 'Which of the following statement is correct?', 'The default value for an argument cannot be function call ', 'C++ allows the redefinition of a default parameter', 'Both A and B', 'C++ does not allow the redefinition of a default parameter', 'D', 1, ''),
('dynamic-beetle', '5', 'Which of the following can be overloaded?', 'Objects', 'Functions ', 'Operators', 'Both B and C', 'D', 1, ''),
('dynamic-beetle', '6', 'Specify the 2 library functions to dynamically allocate memory?', 'malloc() and mealloc()', 'alloc() and mealloc()', 'malloc() and calloc()', 'memalloc() and faralloc()', 'C', 1, ''),
('dynamic-beetle', '7', 'Point out the error in the program\nstruct emp\n{\n	int ecode;\n	struct emp e;\n};', 'Error: in structure declaration', 'Linker error', 'No error', 'Run time error', 'A', 1, ''),
('dynamic-beetle', '8', '#include <iostream>\nusing namespace std;\nint main()\n{\n	for (int i = 10; i > 6; i = i - 2)\n    	    cout << i;\n	for (int i = -5; i > -7; i--)\n    	    cout << i + 1;\n	return 0;\n}', '1086- -6', '108-4-5', '108-5-6', '86-4-5', 'B', 1, ''),
('dynamic-beetle', '9', 'Which member function is used to determine whether the stream object is currently associated with a file?', 'is_open', 'buf', 'string', 'none of the above', 'A', 1, ''),
('dynamic-beetle', '10', '#include <iostream>\nusing namespace std;\n\nclass Test {\n    static int i;\n    int j;\n};\n\nint Test::i;\n\nint main() {\n    cout<<sizeof(Test);\n    return 0;\n}\nAssume size of int as 4 bytes', '4', '8', 'Compile Error', 'Run time Error', 'A', 2, ''),
('dynamic-beetle', '11', 'When can we have two classes with same name?', 'Not possible', 'In different files', 'Different namespace', 'Anywhere', 'C', 1, ''),
('dynamic-beetle', '12', ' #include <iostream>\nusing namespace std;\n\nclass X {\npublic: X()\n    	{ cout<<\"X\"; }\n    	~X()\n    	{ cout<<\"~X\"; }\n};\nclass Y : public X {\npublic: Y()\n    	{ cout<<\"Y\"; }\n    	~Y()\n    	{ cout<<\"~Y\"; }\n};\nint main() {\n	Y obj;\n	return 0;\n}', 'XY~X~Y', 'XY~Y~X', 'X~XY~Y', 'X~X~YY', 'B', 1, ''),
('dynamic-beetle', '13', '#include <stdio.h>\nint main()\n{\n	int a = 1, b = 2, c = 3;\n	char d = 0;\n	if (a, b, c, d) {\n    	printf(\"enter in the if\\n\");\n	}\n	printf(\"not enterd\\n\");\n	return 0;\n}', 'enter in the if', 'not entered', 'run time error', 'segmentation fault', 'B', 2, ''),
('dynamic-beetle', '14', '#include <iostream>\nusing namespace std;\nint main()\n{\n cout<<\"Hello\";;;;;\n return 0;\n}', 'Compilation Error', 'Runtime Error', 'Hello', 'Hello;;;;', 'C', 1, ''),
('dynamic-beetle', '15', 'The two statements that can be used to change the flow of control are ________', 'if and while', 'if and switch', 'switch and do-while', 'break and continue', 'B', 1, ''),
('dynamic-beetle', '16', 'If p and q are assigned values 2 and 3 respectively then the statement p=q++', 'Gives an error message', 'Assigns a value 4 to p', 'Assigns a value 3 to p', 'Assigns a value 5 to p', 'C', 1, ''),
('dynamic-beetle', '17', '#include <iostream>\nusing namespace std;\nint main()\n{\n	int i, x[5], y, z[5];\n	for (i = 0; i < 5; i++) {\n    	    x[i] = i;\n    	    z[i] = i + 3;\n    	    y = z[i];\n    	    x[i] = y++;\n	}\n	for (i = 0; i < 5; i++)\n    	    cout << x[i] << \" \";\n	return 0;\n}', '3 4 5 6 7', '4 5 6 7 8', '2 3 4 5 6', 'none of above', 'A', 2, ''),
('dynamic-beetle', '18', '#include <stdio.h>\n#define square(x) (x * x)\n\nint main()\n{\n	int x, y = 1;\n	x = square(y + 1);\n	printf(\"%d\\n\", x);\n	return 0;\n}\n', 'Error', '4', '3', 'Garbage Value', 'C', 1, ''),
('dynamic-beetle', '19', 'If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?', '.', '*', '&', '->', 'D', 1, ''),
('dynamic-beetle', '20', '#include <stdio.h>\nint main()\n{\n	int i=3, *j, k;\n	j = &i;\n	printf(“%d\\n”, i**j*i+*j);\n	return 0;\n}', '30', '27', '9', '3', 'A', 1, ''),
('dynamic-beetle', '21', 'For automatic objects, constructors and destructors are called each time the objects', 'Enter and leave scope', 'Inherit parent class', 'Are Constructed', 'Are destroyed', 'A', 1, ''),
('dynamic-beetle', '22', '#include <iostream>\nusing namespace std;\nint n(char, int);\nint (*p) (char, int) = n;\nint main()\n{\n	(*p)(\'d\', 9);\n	p(10, 9);\n	return 0;\n}\n\nint n(char c, int i)\n{\n	cout << c <<  i;\n	return 0;\n}', 'd9\n9', 'd9d9', 'd9', 'd9109', 'A', 2, ''),
('dynamic-beetle', '23', 'void main()\n{\n	int a = 1;\n	switch(a)\n	{\n    	case 1: cout<<\"One\";\n    	case 2: cout<<\"Two\";\n    	case 3: cout<<\"Three\";\n    	default: cout<<\"Default\";\n	}\n\n}', 'One', 'OneTwoThree', 'Default', 'OneTwoThreeDefault', 'D', 1, ''),
('dynamic-beetle', '24', '#include <stdio.h>\nint main()\n{\n	int val = 1;\n\n	do {\n    	    val++;\n    	    ++val;\n	} while (val++ > 25);\n	printf(\"%d\\n\", val);\n	return 0;\n}', '25', '3', '4', '26', 'C', 1, ''),
('dynamic-beetle', '25', '#include <stdio.h>\nvoid main()\n{\n	printf(6 + \"Geeks for Geeks\");\n}', '6Geeks for Geeks', 'Geeks for Geeks', 'for Geeks', 'Compile time error', 'C', 2, ''),
('spiritual-sturgeon', '1', '#include <iostream>\nusing namespace std;\nint main()\n{\n   int a[2][4] = {3, 6, 9, 12, 15, 18, 21, 24};\n   cout << *(a[1] + 2) << *(*(a + 1) + 2) << 2[1[a]];\n   return 0;\n}', '151821', '212121', '242424', 'Compile time error', 'B', 1, ''),
('spiritual-sturgeon', '2', 'void main()\n{\n    int m, i = 0, j = 1, k = 2;\n    m = i++ || j++ || k++;\n    printf(\"%d %d %d %d\", m, i, j, k);\n}', '1 1 2 3', '1 1 2 2', '0 1 2 2', '0 1 2 3', 'B', 1, ''),
('spiritual-sturgeon', '3', 'What is the return type of malloc() or calloc()', 'void *', 'int *', 'void **', 'Pointer of allocated memory location', 'A', 1, ''),
('spiritual-sturgeon', '4', 'Which of the following statement is correct?', 'The default value for an argument cannot be function call ', 'C++ allows the redefinition of a default parameter', 'Both A and B', 'C++ does not allow the redefinition of a default parameter', 'D', 1, ''),
('spiritual-sturgeon', '5', 'Which of the following can be overloaded?', 'Objects', 'Functions ', 'Operators', 'Both B and C', 'D', 1, ''),
('spiritual-sturgeon', '6', 'Specify the 2 library functions to dynamically allocate memory?', 'malloc() and mealloc()', 'alloc() and mealloc()', 'malloc() and calloc()', 'memalloc() and faralloc()', 'C', 1, ''),
('spiritual-sturgeon', '7', 'Point out the error in the program\nstruct emp\n{\n	int ecode;\n	struct emp e;\n};', 'Error: in structure declaration', 'Linker error', 'No error', 'Run time error', 'A', 1, ''),
('spiritual-sturgeon', '8', '#include <iostream>\nusing namespace std;\nint main()\n{\n	for (int i = 10; i > 6; i = i - 2)\n    	    cout << i;\n	for (int i = -5; i > -7; i--)\n    	    cout << i + 1;\n	return 0;\n}', '1086- -6', '108-4-5', '108-5-6', '86-4-5', 'B', 1, ''),
('spiritual-sturgeon', '9', 'Which member function is used to determine whether the stream object is currently associated with a file?', 'is_open', 'buf', 'string', 'none of the above', 'A', 1, ''),
('spiritual-sturgeon', '10', '#include <iostream>\nusing namespace std;\n\nclass Test {\n    static int i;\n    int j;\n};\n\nint Test::i;\n\nint main() {\n    cout<<sizeof(Test);\n    return 0;\n}\nAssume size of int as 4 bytes', '4', '8', 'Compile Error', 'Run time Error', 'A', 2, ''),
('spiritual-sturgeon', '11', 'When can we have two classes with same name?', 'Not possible', 'In different files', 'Different namespace', 'Anywhere', 'C', 1, ''),
('spiritual-sturgeon', '12', ' #include <iostream>\nusing namespace std;\n\nclass X {\npublic: X()\n    	{ cout<<\"X\"; }\n    	~X()\n    	{ cout<<\"~X\"; }\n};\nclass Y : public X {\npublic: Y()\n    	{ cout<<\"Y\"; }\n    	~Y()\n    	{ cout<<\"~Y\"; }\n};\nint main() {\n	Y obj;\n	return 0;\n}', 'XY~X~Y', 'XY~Y~X', 'X~XY~Y', 'X~X~YY', 'B', 1, ''),
('spiritual-sturgeon', '13', '#include <stdio.h>\nint main()\n{\n	int a = 1, b = 2, c = 3;\n	char d = 0;\n	if (a, b, c, d) {\n    	printf(\"enter in the if\\n\");\n	}\n	printf(\"not enterd\\n\");\n	return 0;\n}', 'enter in the if', 'not entered', 'run time error', 'segmentation fault', 'B', 2, ''),
('spiritual-sturgeon', '14', '#include <iostream>\nusing namespace std;\nint main()\n{\n cout<<\"Hello\";;;;;\n return 0;\n}', 'Compilation Error', 'Runtime Error', 'Hello', 'Hello;;;;', 'C', 1, ''),
('spiritual-sturgeon', '15', 'The two statements that can be used to change the flow of control are ________', 'if and while', 'if and switch', 'switch and do-while', 'break and continue', 'B', 1, ''),
('spiritual-sturgeon', '16', 'If p and q are assigned values 2 and 3 respectively then the statement p=q++', 'Gives an error message', 'Assigns a value 4 to p', 'Assigns a value 3 to p', 'Assigns a value 5 to p', 'C', 1, ''),
('spiritual-sturgeon', '17', '#include <iostream>\nusing namespace std;\nint main()\n{\n	int i, x[5], y, z[5];\n	for (i = 0; i < 5; i++) {\n    	    x[i] = i;\n    	    z[i] = i + 3;\n    	    y = z[i];\n    	    x[i] = y++;\n	}\n	for (i = 0; i < 5; i++)\n    	    cout << x[i] << \" \";\n	return 0;\n}', '3 4 5 6 7', '4 5 6 7 8', '2 3 4 5 6', 'none of above', 'A', 2, ''),
('spiritual-sturgeon', '18', '#include <stdio.h>\n#define square(x) (x * x)\n\nint main()\n{\n	int x, y = 1;\n	x = square(y + 1);\n	printf(\"%d\\n\", x);\n	return 0;\n}\n', 'Error', '4', '3', 'Garbage Value', 'C', 1, ''),
('spiritual-sturgeon', '19', 'If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?', '.', '*', '&', '->', 'D', 1, ''),
('spiritual-sturgeon', '20', '#include <stdio.h>\nint main()\n{\n	int i=3, *j, k;\n	j = &i;\n	printf(“%d\\n”, i**j*i+*j);\n	return 0;\n}', '30', '27', '9', '3', 'A', 1, ''),
('spiritual-sturgeon', '21', 'For automatic objects, constructors and destructors are called each time the objects', 'Enter and leave scope', 'Inherit parent class', 'Are Constructed', 'Are destroyed', 'A', 1, ''),
('spiritual-sturgeon', '22', '#include <iostream>\nusing namespace std;\nint n(char, int);\nint (*p) (char, int) = n;\nint main()\n{\n	(*p)(\'d\', 9);\n	p(10, 9);\n	return 0;\n}\n\nint n(char c, int i)\n{\n	cout << c <<  i;\n	return 0;\n}', 'd9\n9', 'd9d9', 'd9', 'd9109', 'A', 2, ''),
('spiritual-sturgeon', '23', 'void main()\n{\n	int a = 1;\n	switch(a)\n	{\n    	case 1: cout<<\"One\";\n    	case 2: cout<<\"Two\";\n    	case 3: cout<<\"Three\";\n    	default: cout<<\"Default\";\n	}\n\n}', 'One', 'OneTwoThree', 'Default', 'OneTwoThreeDefault', 'D', 1, ''),
('spiritual-sturgeon', '24', '#include <stdio.h>\nint main()\n{\n	int val = 1;\n\n	do {\n    	    val++;\n    	    ++val;\n	} while (val++ > 25);\n	printf(\"%d\\n\", val);\n	return 0;\n}', '25', '3', '4', '26', 'C', 1, ''),
('spiritual-sturgeon', '25', '#include <stdio.h>\nvoid main()\n{\n	printf(6 + \"Geeks for Geeks\");\n}', '6Geeks for Geeks', 'Geeks for Geeks', 'for Geeks', 'Compile time error', 'C', 2, ''),
('rigorous-coyote', '1', '#include <iostream>\nusing namespace std;\nint main()\n{\n   int a[2][4] = {3, 6, 9, 12, 15, 18, 21, 24};\n   cout << *(a[1] + 2) << *(*(a + 1) + 2) << 2[1[a]];\n   return 0;\n}', '151821', '212121', '242424', 'Compile time error', 'B', 1, ''),
('rigorous-coyote', '2', 'void main()\n{\n    int m, i = 0, j = 1, k = 2;\n    m = i++ || j++ || k++;\n    printf(\"%d %d %d %d\", m, i, j, k);\n}', '1 1 2 3', '1 1 2 2', '0 1 2 2', '0 1 2 3', 'B', 1, ''),
('rigorous-coyote', '3', 'What is the return type of malloc() or calloc()', 'void *', 'int *', 'void **', 'Pointer of allocated memory location', 'A', 1, ''),
('rigorous-coyote', '4', 'Which of the following statement is correct?', 'The default value for an argument cannot be function call ', 'C++ allows the redefinition of a default parameter', 'Both A and B', 'C++ does not allow the redefinition of a default parameter', 'D', 1, ''),
('rigorous-coyote', '5', 'Which of the following can be overloaded?', 'Objects', 'Functions ', 'Operators', 'Both B and C', 'D', 1, ''),
('rigorous-coyote', '6', 'Specify the 2 library functions to dynamically allocate memory?', 'malloc() and mealloc()', 'alloc() and mealloc()', 'malloc() and calloc()', 'memalloc() and faralloc()', 'C', 1, ''),
('rigorous-coyote', '7', 'Point out the error in the program\nstruct emp\n{\n	int ecode;\n	struct emp e;\n};', 'Error: in structure declaration', 'Linker error', 'No error', 'Run time error', 'A', 1, ''),
('rigorous-coyote', '8', '#include <iostream>\nusing namespace std;\nint main()\n{\n	for (int i = 10; i > 6; i = i - 2)\n    	    cout << i;\n	for (int i = -5; i > -7; i--)\n    	    cout << i + 1;\n	return 0;\n}', '1086- -6', '108-4-5', '108-5-6', '86-4-5', 'B', 1, ''),
('rigorous-coyote', '9', 'Which member function is used to determine whether the stream object is currently associated with a file?', 'is_open', 'buf', 'string', 'none of the above', 'A', 1, ''),
('rigorous-coyote', '10', '#include <iostream>\nusing namespace std;\n\nclass Test {\n    static int i;\n    int j;\n};\n\nint Test::i;\n\nint main() {\n    cout<<sizeof(Test);\n    return 0;\n}\nAssume size of int as 4 bytes', '4', '8', 'Compile Error', 'Run time Error', 'A', 2, ''),
('rigorous-coyote', '11', 'When can we have two classes with same name?', 'Not possible', 'In different files', 'Different namespace', 'Anywhere', 'C', 1, ''),
('rigorous-coyote', '12', ' #include <iostream>\nusing namespace std;\n\nclass X {\npublic: X()\n    	{ cout<<\"X\"; }\n    	~X()\n    	{ cout<<\"~X\"; }\n};\nclass Y : public X {\npublic: Y()\n    	{ cout<<\"Y\"; }\n    	~Y()\n    	{ cout<<\"~Y\"; }\n};\nint main() {\n	Y obj;\n	return 0;\n}', 'XY~X~Y', 'XY~Y~X', 'X~XY~Y', 'X~X~YY', 'B', 1, ''),
('rigorous-coyote', '13', '#include <stdio.h>\nint main()\n{\n	int a = 1, b = 2, c = 3;\n	char d = 0;\n	if (a, b, c, d) {\n    	printf(\"enter in the if\\n\");\n	}\n	printf(\"not enterd\\n\");\n	return 0;\n}', 'enter in the if', 'not entered', 'run time error', 'segmentation fault', 'B', 2, ''),
('rigorous-coyote', '14', '#include <iostream>\nusing namespace std;\nint main()\n{\n cout<<\"Hello\";;;;;\n return 0;\n}', 'Compilation Error', 'Runtime Error', 'Hello', 'Hello;;;;', 'C', 1, ''),
('rigorous-coyote', '15', 'The two statements that can be used to change the flow of control are ________', 'if and while', 'if and switch', 'switch and do-while', 'break and continue', 'B', 1, ''),
('rigorous-coyote', '16', 'If p and q are assigned values 2 and 3 respectively then the statement p=q++', 'Gives an error message', 'Assigns a value 4 to p', 'Assigns a value 3 to p', 'Assigns a value 5 to p', 'C', 1, ''),
('rigorous-coyote', '17', '#include <iostream>\nusing namespace std;\nint main()\n{\n	int i, x[5], y, z[5];\n	for (i = 0; i < 5; i++) {\n    	    x[i] = i;\n    	    z[i] = i + 3;\n    	    y = z[i];\n    	    x[i] = y++;\n	}\n	for (i = 0; i < 5; i++)\n    	    cout << x[i] << \" \";\n	return 0;\n}', '3 4 5 6 7', '4 5 6 7 8', '2 3 4 5 6', 'none of above', 'A', 2, ''),
('rigorous-coyote', '18', '#include <stdio.h>\n#define square(x) (x * x)\n\nint main()\n{\n	int x, y = 1;\n	x = square(y + 1);\n	printf(\"%d\\n\", x);\n	return 0;\n}\n', 'Error', '4', '3', 'Garbage Value', 'C', 1, ''),
('rigorous-coyote', '19', 'If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?', '.', '*', '&', '->', 'D', 1, ''),
('rigorous-coyote', '20', '#include <stdio.h>\nint main()\n{\n	int i=3, *j, k;\n	j = &i;\n	printf(“%d\\n”, i**j*i+*j);\n	return 0;\n}', '30', '27', '9', '3', 'A', 1, ''),
('rigorous-coyote', '21', 'For automatic objects, constructors and destructors are called each time the objects', 'Enter and leave scope', 'Inherit parent class', 'Are Constructed', 'Are destroyed', 'A', 1, ''),
('rigorous-coyote', '22', '#include <iostream>\nusing namespace std;\nint n(char, int);\nint (*p) (char, int) = n;\nint main()\n{\n	(*p)(\'d\', 9);\n	p(10, 9);\n	return 0;\n}\n\nint n(char c, int i)\n{\n	cout << c <<  i;\n	return 0;\n}', 'd9\n9', 'd9d9', 'd9', 'd9109', 'A', 2, ''),
('rigorous-coyote', '23', 'void main()\n{\n	int a = 1;\n	switch(a)\n	{\n    	case 1: cout<<\"One\";\n    	case 2: cout<<\"Two\";\n    	case 3: cout<<\"Three\";\n    	default: cout<<\"Default\";\n	}\n\n}', 'One', 'OneTwoThree', 'Default', 'OneTwoThreeDefault', 'D', 1, ''),
('rigorous-coyote', '24', '#include <stdio.h>\nint main()\n{\n	int val = 1;\n\n	do {\n    	    val++;\n    	    ++val;\n	} while (val++ > 25);\n	printf(\"%d\\n\", val);\n	return 0;\n}', '25', '3', '4', '26', 'C', 1, ''),
('rigorous-coyote', '25', '#include <stdio.h>\nvoid main()\n{\n	printf(6 + \"Geeks for Geeks\");\n}', '6Geeks for Geeks', 'Geeks for Geeks', 'for Geeks', 'Compile time error', 'C', 2, ''),
('zircon-ammonite', '1', '#include <iostream>\nusing namespace std;\nint main()\n{\n   int a[2][4] = {3, 6, 9, 12, 15, 18, 21, 24};\n   cout << *(a[1] + 2) << *(*(a + 1) + 2) << 2[1[a]];\n   return 0;\n}', '151821', '212121', '242424', 'Compile time error', 'B', 1, ''),
('zircon-ammonite', '2', 'void main()\n{\n    int m, i = 0, j = 1, k = 2;\n    m = i++ || j++ || k++;\n    printf(\"%d %d %d %d\", m, i, j, k);\n}', '1 1 2 3', '1 1 2 2', '0 1 2 2', '0 1 2 3', 'B', 1, ''),
('zircon-ammonite', '3', 'What is the return type of malloc() or calloc()', 'void *', 'int *', 'void **', 'Pointer of allocated memory location', 'A', 1, ''),
('zircon-ammonite', '4', 'Which of the following statement is correct?', 'The default value for an argument cannot be function call ', 'C++ allows the redefinition of a default parameter', 'Both A and B', 'C++ does not allow the redefinition of a default parameter', 'D', 1, ''),
('zircon-ammonite', '5', 'Which of the following can be overloaded?', 'Objects', 'Functions ', 'Operators', 'Both B and C', 'D', 1, ''),
('zircon-ammonite', '6', 'Specify the 2 library functions to dynamically allocate memory?', 'malloc() and mealloc()', 'alloc() and mealloc()', 'malloc() and calloc()', 'memalloc() and faralloc()', 'C', 1, ''),
('zircon-ammonite', '7', 'Point out the error in the program\nstruct emp\n{\n	int ecode;\n	struct emp e;\n};', 'Error: in structure declaration', 'Linker error', 'No error', 'Run time error', 'A', 1, ''),
('zircon-ammonite', '8', '#include <iostream>\nusing namespace std;\nint main()\n{\n	for (int i = 10; i > 6; i = i - 2)\n    	    cout << i;\n	for (int i = -5; i > -7; i--)\n    	    cout << i + 1;\n	return 0;\n}', '1086- -6', '108-4-5', '108-5-6', '86-4-5', 'B', 1, ''),
('zircon-ammonite', '9', 'Which member function is used to determine whether the stream object is currently associated with a file?', 'is_open', 'buf', 'string', 'none of the above', 'A', 1, ''),
('zircon-ammonite', '10', '#include <iostream>\nusing namespace std;\n\nclass Test {\n    static int i;\n    int j;\n};\n\nint Test::i;\n\nint main() {\n    cout<<sizeof(Test);\n    return 0;\n}\nAssume size of int as 4 bytes', '4', '8', 'Compile Error', 'Run time Error', 'A', 2, ''),
('zircon-ammonite', '11', 'When can we have two classes with same name?', 'Not possible', 'In different files', 'Different namespace', 'Anywhere', 'C', 1, ''),
('zircon-ammonite', '12', ' #include <iostream>\nusing namespace std;\n\nclass X {\npublic: X()\n    	{ cout<<\"X\"; }\n    	~X()\n    	{ cout<<\"~X\"; }\n};\nclass Y : public X {\npublic: Y()\n    	{ cout<<\"Y\"; }\n    	~Y()\n    	{ cout<<\"~Y\"; }\n};\nint main() {\n	Y obj;\n	return 0;\n}', 'XY~X~Y', 'XY~Y~X', 'X~XY~Y', 'X~X~YY', 'B', 1, ''),
('zircon-ammonite', '13', '#include <stdio.h>\nint main()\n{\n	int a = 1, b = 2, c = 3;\n	char d = 0;\n	if (a, b, c, d) {\n    	printf(\"enter in the if\\n\");\n	}\n	printf(\"not enterd\\n\");\n	return 0;\n}', 'enter in the if', 'not entered', 'run time error', 'segmentation fault', 'B', 2, ''),
('zircon-ammonite', '14', '#include <iostream>\nusing namespace std;\nint main()\n{\n cout<<\"Hello\";;;;;\n return 0;\n}', 'Compilation Error', 'Runtime Error', 'Hello', 'Hello;;;;', 'C', 1, ''),
('zircon-ammonite', '15', 'The two statements that can be used to change the flow of control are ________', 'if and while', 'if and switch', 'switch and do-while', 'break and continue', 'B', 1, ''),
('zircon-ammonite', '16', 'If p and q are assigned values 2 and 3 respectively then the statement p=q++', 'Gives an error message', 'Assigns a value 4 to p', 'Assigns a value 3 to p', 'Assigns a value 5 to p', 'C', 1, ''),
('zircon-ammonite', '17', '#include <iostream>\nusing namespace std;\nint main()\n{\n	int i, x[5], y, z[5];\n	for (i = 0; i < 5; i++) {\n    	    x[i] = i;\n    	    z[i] = i + 3;\n    	    y = z[i];\n    	    x[i] = y++;\n	}\n	for (i = 0; i < 5; i++)\n    	    cout << x[i] << \" \";\n	return 0;\n}', '3 4 5 6 7', '4 5 6 7 8', '2 3 4 5 6', 'none of above', 'A', 2, ''),
('zircon-ammonite', '18', '#include <stdio.h>\n#define square(x) (x * x)\n\nint main()\n{\n	int x, y = 1;\n	x = square(y + 1);\n	printf(\"%d\\n\", x);\n	return 0;\n}\n', 'Error', '4', '3', 'Garbage Value', 'C', 1, ''),
('zircon-ammonite', '19', 'If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?', '.', '*', '&', '->', 'D', 1, ''),
('zircon-ammonite', '20', '#include <stdio.h>\nint main()\n{\n	int i=3, *j, k;\n	j = &i;\n	printf(“%d\\n”, i**j*i+*j);\n	return 0;\n}', '30', '27', '9', '3', 'A', 1, ''),
('zircon-ammonite', '21', 'For automatic objects, constructors and destructors are called each time the objects', 'Enter and leave scope', 'Inherit parent class', 'Are Constructed', 'Are destroyed', 'A', 1, ''),
('zircon-ammonite', '22', '#include <iostream>\nusing namespace std;\nint n(char, int);\nint (*p) (char, int) = n;\nint main()\n{\n	(*p)(\'d\', 9);\n	p(10, 9);\n	return 0;\n}\n\nint n(char c, int i)\n{\n	cout << c <<  i;\n	return 0;\n}', 'd9\n9', 'd9d9', 'd9', 'd9109', 'A', 2, ''),
('zircon-ammonite', '23', 'void main()\n{\n	int a = 1;\n	switch(a)\n	{\n    	case 1: cout<<\"One\";\n    	case 2: cout<<\"Two\";\n    	case 3: cout<<\"Three\";\n    	default: cout<<\"Default\";\n	}\n\n}', 'One', 'OneTwoThree', 'Default', 'OneTwoThreeDefault', 'D', 1, ''),
('zircon-ammonite', '24', '#include <stdio.h>\nint main()\n{\n	int val = 1;\n\n	do {\n    	    val++;\n    	    ++val;\n	} while (val++ > 25);\n	printf(\"%d\\n\", val);\n	return 0;\n}', '25', '3', '4', '26', 'C', 1, ''),
('zircon-ammonite', '25', '#include <stdio.h>\nvoid main()\n{\n	printf(6 + \"Geeks for Geeks\");\n}', '6Geeks for Geeks', 'Geeks for Geeks', 'for Geeks', 'Compile time error', 'C', 2, ''),
('antique-horse', '1', '#include <iostream>\nusing namespace std;\nint main()\n{\n   int a[2][4] = {3, 6, 9, 12, 15, 18, 21, 24};\n   cout << *(a[1] + 2) << *(*(a + 1) + 2) << 2[1[a]];\n   return 0;\n}', '151821', '212121', '242424', 'Compile time error', 'B', 1, ''),
('antique-horse', '2', 'void main()\n{\n    int m, i = 0, j = 1, k = 2;\n    m = i++ || j++ || k++;\n    printf(\"%d %d %d %d\", m, i, j, k);\n}', '1 1 2 3', '1 1 2 2', '0 1 2 2', '0 1 2 3', 'B', 1, ''),
('antique-horse', '3', 'What is the return type of malloc() or calloc()', 'void *', 'int *', 'void **', 'Pointer of allocated memory location', 'A', 1, ''),
('antique-horse', '4', 'Which of the following statement is correct?', 'The default value for an argument cannot be function call ', 'C++ allows the redefinition of a default parameter', 'Both A and B', 'C++ does not allow the redefinition of a default parameter', 'D', 1, ''),
('antique-horse', '5', 'Which of the following can be overloaded?', 'Objects', 'Functions ', 'Operators', 'Both B and C', 'D', 1, ''),
('antique-horse', '6', 'Specify the 2 library functions to dynamically allocate memory?', 'malloc() and mealloc()', 'alloc() and mealloc()', 'malloc() and calloc()', 'memalloc() and faralloc()', 'C', 1, ''),
('antique-horse', '7', 'Point out the error in the program\nstruct emp\n{\n	int ecode;\n	struct emp e;\n};', 'Error: in structure declaration', 'Linker error', 'No error', 'Run time error', 'A', 1, ''),
('antique-horse', '8', '#include <iostream>\nusing namespace std;\nint main()\n{\n	for (int i = 10; i > 6; i = i - 2)\n    	    cout << i;\n	for (int i = -5; i > -7; i--)\n    	    cout << i + 1;\n	return 0;\n}', '1086- -6', '108-4-5', '108-5-6', '86-4-5', 'B', 1, ''),
('antique-horse', '9', 'Which member function is used to determine whether the stream object is currently associated with a file?', 'is_open', 'buf', 'string', 'none of the above', 'A', 1, ''),
('antique-horse', '10', '#include <iostream>\nusing namespace std;\n\nclass Test {\n    static int i;\n    int j;\n};\n\nint Test::i;\n\nint main() {\n    cout<<sizeof(Test);\n    return 0;\n}\nAssume size of int as 4 bytes', '4', '8', 'Compile Error', 'Run time Error', 'A', 2, ''),
('antique-horse', '11', 'When can we have two classes with same name?', 'Not possible', 'In different files', 'Different namespace', 'Anywhere', 'C', 1, ''),
('antique-horse', '12', ' #include <iostream>\nusing namespace std;\n\nclass X {\npublic: X()\n    	{ cout<<\"X\"; }\n    	~X()\n    	{ cout<<\"~X\"; }\n};\nclass Y : public X {\npublic: Y()\n    	{ cout<<\"Y\"; }\n    	~Y()\n    	{ cout<<\"~Y\"; }\n};\nint main() {\n	Y obj;\n	return 0;\n}', 'XY~X~Y', 'XY~Y~X', 'X~XY~Y', 'X~X~YY', 'B', 1, ''),
('antique-horse', '13', '#include <stdio.h>\nint main()\n{\n	int a = 1, b = 2, c = 3;\n	char d = 0;\n	if (a, b, c, d) {\n    	printf(\"enter in the if\\n\");\n	}\n	printf(\"not enterd\\n\");\n	return 0;\n}', 'enter in the if', 'not entered', 'run time error', 'segmentation fault', 'B', 2, ''),
('antique-horse', '14', '#include <iostream>\nusing namespace std;\nint main()\n{\n cout<<\"Hello\";;;;;\n return 0;\n}', 'Compilation Error', 'Runtime Error', 'Hello', 'Hello;;;;', 'C', 1, ''),
('antique-horse', '15', 'The two statements that can be used to change the flow of control are ________', 'if and while', 'if and switch', 'switch and do-while', 'break and continue', 'B', 1, ''),
('antique-horse', '16', 'If p and q are assigned values 2 and 3 respectively then the statement p=q++', 'Gives an error message', 'Assigns a value 4 to p', 'Assigns a value 3 to p', 'Assigns a value 5 to p', 'C', 1, ''),
('antique-horse', '17', '#include <iostream>\nusing namespace std;\nint main()\n{\n	int i, x[5], y, z[5];\n	for (i = 0; i < 5; i++) {\n    	    x[i] = i;\n    	    z[i] = i + 3;\n    	    y = z[i];\n    	    x[i] = y++;\n	}\n	for (i = 0; i < 5; i++)\n    	    cout << x[i] << \" \";\n	return 0;\n}', '3 4 5 6 7', '4 5 6 7 8', '2 3 4 5 6', 'none of above', 'A', 2, ''),
('antique-horse', '18', '#include <stdio.h>\n#define square(x) (x * x)\n\nint main()\n{\n	int x, y = 1;\n	x = square(y + 1);\n	printf(\"%d\\n\", x);\n	return 0;\n}\n', 'Error', '4', '3', 'Garbage Value', 'C', 1, ''),
('antique-horse', '19', 'If a variable is a pointer to a structure, then which of the following operator is used to access data members of the structure through the pointer variable?', '.', '*', '&', '->', 'D', 1, ''),
('antique-horse', '20', '#include <stdio.h>\nint main()\n{\n	int i=3, *j, k;\n	j = &i;\n	printf(“%d\\n”, i**j*i+*j);\n	return 0;\n}', '30', '27', '9', '3', 'A', 1, ''),
('antique-horse', '21', 'For automatic objects, constructors and destructors are called each time the objects', 'Enter and leave scope', 'Inherit parent class', 'Are Constructed', 'Are destroyed', 'A', 1, ''),
('antique-horse', '22', '#include <iostream>\nusing namespace std;\nint n(char, int);\nint (*p) (char, int) = n;\nint main()\n{\n	(*p)(\'d\', 9);\n	p(10, 9);\n	return 0;\n}\n\nint n(char c, int i)\n{\n	cout << c <<  i;\n	return 0;\n}', 'd9\n9', 'd9d9', 'd9', 'd9109', 'A', 2, ''),
('antique-horse', '23', 'void main()\n{\n	int a = 1;\n	switch(a)\n	{\n    	case 1: cout<<\"One\";\n    	case 2: cout<<\"Two\";\n    	case 3: cout<<\"Three\";\n    	default: cout<<\"Default\";\n	}\n\n}', 'One', 'OneTwoThree', 'Default', 'OneTwoThreeDefault', 'D', 1, ''),
('antique-horse', '24', '#include <stdio.h>\nint main()\n{\n	int val = 1;\n\n	do {\n    	    val++;\n    	    ++val;\n	} while (val++ > 25);\n	printf(\"%d\\n\", val);\n	return 0;\n}', '25', '3', '4', '26', 'C', 1, ''),
('antique-horse', '25', '#include <stdio.h>\nvoid main()\n{\n	printf(6 + \"Geeks for Geeks\");\n}', '6Geeks for Geeks', 'Geeks for Geeks', 'for Geeks', 'Compile time error', 'C', 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `username` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qid` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ans` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`username`, `test_id`, `qid`, `ans`) VALUES
('vivek', 'groovy-uakari', '13', 'b'),
('vivek', 'groovy-uakari', '6', 'c'),
('vivek', 'groovy-uakari', '8', 'a'),
('vivek', 'groovy-uakari', '7', 'd'),
('vivek', 'groovy-uakari', '22', 'a'),
('vivekkairi', 'topaz-caterpillar', '12', 'a'),
('vivekkairi', 'topaz-caterpillar', '16', 'c'),
('vivekkairi', 'topaz-caterpillar', '22', 'c'),
('vivekkairi', 'topaz-caterpillar', '11', 'b'),
('vivekkairi', 'topaz-caterpillar', '2', 'a'),
('vivek', 'spotted-caracal', '4', 'a'),
('vivek', 'spotted-caracal', '16', 'c'),
('vivek', 'spotted-caracal', '7', 'd'),
('jeevan', 'dynamic-beetle', '16', 'c'),
('jeevan', 'spiritual-sturgeon', '3', 'a'),
('jeevan', 'spiritual-sturgeon', '7', 'a'),
('jeevan', 'spiritual-sturgeon', '22', 'a'),
('jeevan', 'spiritual-sturgeon', '12', 'a'),
('jeevan', 'spiritual-sturgeon', '4', 'a'),
('jeevan', 'spiritual-sturgeon', '11', 'a'),
('jeevan', 'spiritual-sturgeon', '1', 'a'),
('jeevan', 'spiritual-sturgeon', '18', 'a'),
('jeevan', 'spiritual-sturgeon', '10', 'a'),
('jeevan', 'spiritual-sturgeon', '25', 'a'),
('jeevan', 'spiritual-sturgeon', '16', 'a'),
('jeevan', 'spiritual-sturgeon', '24', 'a'),
('jeevan', 'spiritual-sturgeon', '6', 'a'),
('jeevan', 'spiritual-sturgeon', '19', 'a'),
('jeevan', 'spiritual-sturgeon', '20', 'a'),
('jeevan', 'spiritual-sturgeon', '23', 'a'),
('jeevan', 'spiritual-sturgeon', '2', 'a'),
('jeevan', 'spiritual-sturgeon', '9', 'a'),
('jeevan', 'spiritual-sturgeon', '15', 'a'),
('jeevan', 'spiritual-sturgeon', '21', 'a'),
('jeevan', 'spiritual-sturgeon', '8', 'a'),
('jeevan', 'spiritual-sturgeon', '17', 'a'),
('jeevan', 'spiritual-sturgeon', '13', 'a'),
('jeevan', 'spiritual-sturgeon', '14', 'a'),
('jeevan', 'spiritual-sturgeon', '5', 'a'),
('Asur', 'Zircon-ammonite', '7', 'a'),
('Asur', 'Zircon-ammonite', '17', 'b'),
('Asur', 'Zircon-ammonite', '25', 'c'),
('Asur', 'Zircon-ammonite', '6', 'd'),
('Asur', 'Zircon-ammonite', '20', 'b'),
('Asur', 'Zircon-ammonite', '5', 'd'),
('Asur', 'Zircon-ammonite', '2', 'b'),
('jeevan', 'antique-horse', '6', 'b'),
('jeevan', 'antique-horse', '9', 'a'),
('jeevan', 'antique-horse', '4', 'c'),
('jeevan', 'antique-horse', '15', 'd'),
('jeevan', 'antique-horse', '13', 'b'),
('jeevan', 'antique-horse', '22', 'a'),
('jeevan', 'antique-horse', '18', 'c'),
('jeevan', 'antique-horse', '2', 'c'),
('jeevan', 'antique-horse', '10', 'c'),
('abhi', 'antique-horse', '6', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `studenttestinfo`
--

CREATE TABLE `studenttestinfo` (
  `username` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_left` time DEFAULT NULL,
  `completed` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studenttestinfo`
--

INSERT INTO `studenttestinfo` (`username`, `test_id`, `time_left`, `completed`) VALUES
('vivek', 'groovy-uakari', '00:00:00', 1),
('vivekkairi', 'topaz-caterpillar', '00:00:00', 1),
('vivek', 'spotted-caracal', '00:00:00', 1),
('jeevan', 'dynamic-beetle', '00:00:00', 1),
('jeevan', 'spiritual-sturgeon', '00:00:00', 1),
('jeevan', 'rigorous-coyote', '00:00:00', 1),
('Asur', 'Zircon-ammonite', '00:00:00', 1),
('jeevan', 'antique-horse', '00:00:00', 1),
('abhi', 'antique-horse', '00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `username` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_id` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `duration` int(3) DEFAULT NULL,
  `show_ans` int(1) DEFAULT NULL,
  `password` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `topic` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neg_mark` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`username`, `test_id`, `start`, `end`, `duration`, `show_ans`, `password`, `subject`, `topic`, `neg_mark`) VALUES
('vivek', 'groovy-uakari', '2019-10-09 07:30:00', '2019-10-10 07:28:00', 120, 1, 'qwe', 'Programming', 'c', 0),
('vivek', 'topaz-caterpillar', '2019-10-09 08:20:00', '2019-10-10 07:36:00', 300, 1, 'qwe', 'Programming', 'C', 0),
('nikhil', 'spotted-caracal', '2019-10-09 09:49:00', '2019-10-10 09:15:00', 300, 1, 'qwe', 'Programming', 'C', 0),
('jeev', 'dynamic-beetle', '2022-12-15 18:04:00', '2022-12-15 18:14:00', 300, 1, '1234', 'maths', 'maths', 0),
('jeev', 'spiritual-sturgeon', '2022-12-15 18:12:00', '2022-12-15 18:20:00', 300, 1, '1234', 'maths', 'maths', 0),
('jeev', 'rigorous-coyote', '2022-12-16 03:58:00', '2022-12-16 04:08:00', 300, 1, '1234', 'maths', 'maths', 0),
('jeev', 'zircon-ammonite', '2022-12-16 06:20:00', '2022-12-16 10:16:00', 300, 1, '1234', 'maths', 'maths', 0),
('jeev', 'antique-horse', '2022-12-16 07:00:00', '2022-12-17 12:46:00', 300, 0, '1234', 'maths', 'maths', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fathers_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stream` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `register_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `confirmed` tinyint(1) DEFAULT 0,
  `u_type` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `name`, `fathers_name`, `school`, `stream`, `email`, `password`, `register_time`, `confirmed`, `u_type`) VALUES
(15, 'jeevan', 'Jeevan P Rai', NULL, NULL, NULL, 'jeeevanraisonangeri@gmail.com', 'admin123', '2022-12-15 10:11:12', 0, 1),
(16, 'jeev', 'Jeevan P Rai', NULL, NULL, NULL, 'jeeevanraisonangeri@gmail.com', 'admin123', '2022-12-15 16:25:45', 0, 2),
(17, 'Asur', 'Asur', NULL, NULL, NULL, 'asur@gmail.com', 'admin1234', '2022-12-16 06:17:04', 0, 1),
(18, 'abhi', 'abhijna', NULL, NULL, NULL, 'abc@ggg.com', 'abhi22394', '2022-12-16 07:16:57', 0, 1),
(19, '7618752850', 'new name', 'father', 'school', NULL, 'email@gmail.com', 'admin123', '2022-12-24 09:41:26', 0, 1),
(27, '1111111111', 'Jeevan P Rai', 'father', 'school', 'Science', 'jeeevanraisonangeri@gmail.com', 'admin123', '2022-12-25 05:50:40', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
