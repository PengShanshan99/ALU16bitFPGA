# ALU16bitFPGA
For Computation Structure 1d Project.
To start mannual testing mode, turn on left most switch of the right most group of switch.
    Press button on the left, current configuration of the left 2 groups of switchs will be remembered as input a (each switch represents one bit).
    Press button on the right,current configuration of the left 2 groups of switchs will be remembered as input b.
    The left two groups of led will display the result of the alu function of the remembered inputs a and b.
    To change function, manipulate the 6 switches on the right:
    ADD: 000000
    SUB: 000001
    AND: 011000
    OR: 011110
    XOR: 010110
    A: 011010
    SHL 100000
    SHR 100001
    SRA 100011
    COMPEQ: 110011
    COMPLT: 110101
    COMPLE: 110111
    MULTIPLY: 000010
To start auto testing mode, turn on second left most switch of the right most group of LED.
    There are 15 test cases in total. For each testcase, if it is true, the IO_shield will display its index. If it is false, the IO_shield will display "FAIL".
    Press the center button to start and restart.
    Turn on the 7th switch on the right to pause.
    The testcases are:
    {ADD, ADD_OVR, SUB, SUB_OVR, AND, OR, XOR, A, SHL, SHR, SRA, CMPEQ, CMPLT, CMPLE, MULTIPLY, MOD}
