I have written 3 smart contracts. IStudentRecord is an Interface contract, RegisterStudent is an ﻿﻿﻿﻿﻿﻿Abstract contract that implements the Interface IStudentRecord.

Finally RegisterClass10 inherits RegisterStudent and implements the abstract function registerStudent.

The contract flow is very simple - the registerStudent function inside RegisterClass10 is called to enroll a student.

registerStudent function in turn calls reg function which updated the student count and stores the address in a mapping studentRecords.

The Interface also defines an enum Status which stores whether the student is admitted, on waitlist or suspended from school.

This contract excercises the following concepts - 
Structs, enums, functions, abstract contracts, interfaces, 