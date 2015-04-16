module spec.common;

enum OperationCode : ubyte
{
	NOP = 0x00, SYSCALL = 0x01, INVALID = 0x0F,

	NOT = 0x10, AND = 0x11, OR = 0x12, XOR = 0x13, SHL = 0x14, SHR = 0x15, SAL = 0x16, SAR = 0x17, SCL = 0x18, SCR = 0x19,

	INC = 0x20, DEC = 0x21, IPADD = 0x22, IPSUB = 0x23, ADD = 0x24, SUB = 0x25, UMUL = 0x28, UDIV = 0x29, MUL = 0x2A, DIV = 0x2B,

	CMP = 0x30, JMP = 0x31, JE = 0x32, JNE = 0x33, JGR = 0x34, JLS = 0x35, JHG = 0x36, JLW = 0x37,

	MOV = 0x40, INT = 0x41, SLI = 0x42, CLI = 0x43, HLT = 0x4F
}

enum ubyte opcodeNumerShift = 0u;
enum ubyte opcodeRangeShift = 4u;
enum ubyte readFlagsShift = 8u;
enum ubyte writeFlagsShift = 12u;
enum ubyte indirectFlagsShift = 16u;
enum ubyte directFlagsShift = 20u;
enum ubyte paramCountShift = 24u;
enum ubyte byteCountShift = 28u;

enum uint opcodeNumerMask = 0xFu << opcodeNumerShift;
enum uint opcodeRangeMask = 0xFu << opcodeRangeShift;
enum uint readFlagsMask = 0xFu << readFlagsShift;
enum uint writeFlagsMask = 0xFu << writeFlagsShift;
enum uint indirectFlagsMask = 0xFu << indirectFlagsShift;
enum uint directFlagsMask = 0xFu << directFlagsShift;
enum uint paramCountMask = 0xFu << paramCountShift;
enum uint byteCountMask = 0xFu << byteCountShift;