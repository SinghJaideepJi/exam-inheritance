pragma experimental ABIEncoderV2;

interface IStudentRecord{
    struct Student{
        address addr;
        string name;
        Status status;
    }
    
    enum Status{ADMITTED, SUSPENDED, WAITLIST}
    
    function reg(Student calldata _student) external;
}

contract RegisterStudent is IStudentRecord{
    uint8 counter = 0;
    mapping (uint8 =>Student) studentRecords;

    function reg(Student memory _student) public {
        studentRecords[++counter] = _student;
    }
    
    // event Registered(address _addr, Status _status);
    
    function registerStudent(Student memory _student) public;
}

contract RegisterClass10 is RegisterStudent{

    function registerStudent(Student memory _student) public{
        
        reg(_student);
    }

    
}
