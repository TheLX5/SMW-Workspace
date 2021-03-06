; Actual dialogues go here.

%textstart()


;-------------------------------------------------------

Message0000:	; Message 000-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$A0,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

.body
db $FD,"Welcome! This is Dinosaur Land.",$FD,$FD
db "In this strange land we find that Princess Toadstool "
db "is missing again!",$FD
db $FD,"Looks like Bowser is at it again!",$FD,$FD
db $FF

;-------------------------------------------------------

Message0001:	; Message 000-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "Hooray! Thank you for rescuing me. "
db "My name is Yoshi. On my way to rescue my friends, "
db "Bowser trapped me in that egg."
db $FA,$FF

;-------------------------------------------------------

Message0002:	; Message 001-1

;-------------------------------------------------------

Message0003:	; Message 001-2

;-------------------------------------------------------

Message0004:	; Message 002-1

;-------------------------------------------------------

Message0005:	; Message 002-2

;-------------------------------------------------------

Message0006:	; Message 003-1

;-------------------------------------------------------

Message0007:	; Message 003-2

;-------------------------------------------------------

Message0008:	; Message 004-1

;-------------------------------------------------------

Message0009:	; Message 004-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "This is a Ghost House. Can you find the exit? "
db "Hee, hee, hee... Don't get lost!"
db $FA,$FF

;-------------------------------------------------------

Message000A:	; Message 005-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "You can slide the screen left or right by pressing "
db "the L or R Buttons on top of the controller.",$FA,$ED
db "You may be able to see further ahead."
db $FA,$FF

;-------------------------------------------------------

Message000B:	; Message 005-2

;-------------------------------------------------------

Message000C:	; Message 006-1

;-------------------------------------------------------

Message000D:	; Message 006-2

;-------------------------------------------------------

Message000E:	; Message 007-1

;-------------------------------------------------------

Message000F:	; Message 007-2

;-------------------------------------------------------

Message0010:	; Message 008-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$A0,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

.body
db $EE,$1A
dw $02E0
db $EE,$1B
dw $0000
db $FD
db "- SWITCH PALACE -",$FD,$FD
db "The power of the switch you have pushed will turn",$FD
db $F3,$06,$AD,$F3,$07," into ",$F3,$06,$AE,$F3,$07," .",$FD
db $FD,"Your progress will also be saved.",$FD,$FD
db $FF

;-------------------------------------------------------

Message0011:	; Message 008-2

;-------------------------------------------------------

Message0012:	; Message 009-1

;-------------------------------------------------------

Message0013:	; Message 009-2

;-------------------------------------------------------

Message0014:	; Message 00A-1

;-------------------------------------------------------

Message0015:	; Message 00A-2

;-------------------------------------------------------

Message0016:	; Message 00B-1

;-------------------------------------------------------

Message0017:	; Message 00B-2

;-------------------------------------------------------

Message0018:	; Message 00C-1

;-------------------------------------------------------

Message0019:	; Message 00C-2

;-------------------------------------------------------

Message001A:	; Message 00D-1

;-------------------------------------------------------

Message001B:	; Message 00D-2

;-------------------------------------------------------

Message001C:	; Message 00E-1

;-------------------------------------------------------

Message001D:	; Message 00E-2

;-------------------------------------------------------

Message001E:	; Message 00F-1

;-------------------------------------------------------

Message001F:	; Message 00F-2

;-------------------------------------------------------

Message0020:	; Message 010-1

;-------------------------------------------------------

Message0021:	; Message 010-2

;-------------------------------------------------------

Message0022:	; Message 011-1

;-------------------------------------------------------

Message0023:	; Message 011-2

;-------------------------------------------------------

Message0024:	; Message 012-1

;-------------------------------------------------------

Message0025:	; Message 012-2

;-------------------------------------------------------

Message0026:	; Message 013-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "There are five entrances to the Star World in Dinosaur Land."
db $FA,$ED
db "Find them all and you can travel between many different places."
db $FA,$FF

;-------------------------------------------------------

Message0027:	; Message 013-2

;-------------------------------------------------------

Message0028:	; Message 014-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$A0,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

.body
db $EE,$1A
dw $2F3F
db $EE,$1B
dw $0000
db $FD
db "- SWITCH PALACE -",$FD,$FD
db "The power of the switch you have pushed will turn",$FD
db $F3,$06,$AD,$F3,$07," into ",$F3,$06,$AE,$F3,$07," .",$FD
db $FD,"Your progress will also be saved.",$FD,$FD
db $FF

;-------------------------------------------------------

Message0029:	; Message 014-2

;-------------------------------------------------------

Message002A:	; Message 015-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "The red dot areas on the map have two different exits.",$FA,$ED
db "If you have the time and skill, be sure to look for them."
db $FA,$FF

;-------------------------------------------------------

Message002B:	; Message 015-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "Use Mario's cape to soar through the air! "
db "Run fast, jump, and hold the Y Button.",$FA,$ED
db "To keep balance, use left and right on the Control Pad."
db $FA,$FF

;-------------------------------------------------------

Message002C:	; Message 016-1

;-------------------------------------------------------

Message002D:	; Message 016-2

;-------------------------------------------------------

Message002E:	; Message 017-1

;-------------------------------------------------------

Message002F:	; Message 017-2

;-------------------------------------------------------

Message0030:	; Message 018-1

;-------------------------------------------------------

Message0031:	; Message 018-2

;-------------------------------------------------------

Message0032:	; Message 019-1

;-------------------------------------------------------

Message0033:	; Message 019-2

;-------------------------------------------------------

Message0034:	; Message 01A-1

;-------------------------------------------------------

Message0035:	; Message 01A-2

;-------------------------------------------------------

Message0036:	; Message 01B-1

;-------------------------------------------------------

Message0037:	; Message 01B-2

;-------------------------------------------------------

Message0038:	; Message 01C-1

;-------------------------------------------------------

Message0039:	; Message 01C-2

;-------------------------------------------------------

Message003A:	; Message 01D-1

;-------------------------------------------------------

Message003B:	; Message 01D-2

;-------------------------------------------------------

Message003C:	; Message 01E-1

;-------------------------------------------------------

Message003D:	; Message 01E-2

;-------------------------------------------------------

Message003E:	; Message 01F-1

;-------------------------------------------------------

Message003F:	; Message 01F-2

;-------------------------------------------------------

Message0040:	; Message 020-1

;-------------------------------------------------------

Message0041:	; Message 020-2

;-------------------------------------------------------

Message0042:	; Message 021-1

;-------------------------------------------------------

Message0043:	; Message 021-2

;-------------------------------------------------------

Message0044:	; Message 022-1

;-------------------------------------------------------

Message0045:	; Message 022-2

;-------------------------------------------------------

Message0046:	; Message 023-1

;-------------------------------------------------------

Message0047:	; Message 023-2

;-------------------------------------------------------

Message0048:	; Message 024-1

;-------------------------------------------------------

Message0049:	; Message 024-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "Here, the coins you collect or the time remaining "
db "can change your progress.",$FA,$ED
db "Can you find the special goal?"
db $FA,$FF

;-------------------------------------------------------

Message004A:	; Message 101-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "Press Up on the Control Pad while jumping and you can "
db "cling to the fence.",$FA,$ED
db "To go in the door at the end of this area, use Up also."
db $FA,$FF

;-------------------------------------------------------

Message004B:	; Message 101-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

.body
db $FD
db "-POINT OF ADVICE-",$FA,$ED
db "One of Yoshi's friends is trapped in the castle by Iggy Koopa."
db $FA,$ED
db "To defeat him, push him into the lava pool."
db $FA,$FF

;-------------------------------------------------------

Message004C:	; Message 102-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "You get Bonus Stars if you cut the tape at the end of each area."
db $FA,$ED
db "If you collect 100 Bonus Stars you can play a fun bonus game."
db $FA,$FF

;-------------------------------------------------------

Message004D:	; Message 102-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "If you are in an area that you have already cleared, "
db "you can return to the map screen by pressing START, then SELECT."
db $FA,$FF

;-------------------------------------------------------

Message004E:	; Message 103-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "When you stomp on an enemy, you can jump high if you hold "
db "the jump button.",$FA,$ED
db "Use Up on the Control Pad to jump high in the shallow water."
db $FA,$FF

;-------------------------------------------------------

Message004F:	; Message 103-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

.body
db $FD
db "-POINT OF ADVICE-",$FA,$ED
db "The big coins are Dragon Coins. If you pick up five of these "
db "in one area, you get an extra Mario."
db $FA,$FF

;-------------------------------------------------------

Message0050:	; Message 104-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

db $EE,$1A
dw $03E0
db $EE,$1B
dw $0000

.body
db "Hello! Sorry I'm not home, but I have gone to rescue my friends "
db "who were captured by Bowser.",$FA,$ED
db $FD,$F3,$06
db "- Yoshi ",$AC
db $FA,$FF

;-------------------------------------------------------

Message0051:	; Message 104-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "It is possible to fill in the dotted line blocks.",$FA,$ED
db "To fill in the yellow ones, just go west then north to "
db "the top of the mountain."
db $FA,$FF

;-------------------------------------------------------

Message0052:	; Message 105-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

.body
db $FD
db "-POINT OF ADVICE-",$FA,$ED
db "You can hold an extra item in the box at the top of the screen."
db $FA,$ED
db "To use it, press the SELECT Button."
db $FA,$FF

;-------------------------------------------------------

Message0053:	; Message 105-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

.body
db $FD
db "-POINT OF ADVICE-",$FA,$ED
db "To pick up a shell, use the X or Y Button.",$FA,$ED
db "To throw a shell upwards, look up and let go of the button."
db $FA,$FF

;-------------------------------------------------------

Message0054:	; Message 106-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "To do a spin jump, press the A Button.",$FA,$ED
db "A Super Mario spin jump can break some of the blocks and "
db "defeat some of the tougher enemies."
db $FA,$FF


;-------------------------------------------------------

Message0055:	; Message 106-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

.body
db $FD
db "-POINT OF ADVICE-",$FA,$ED
db "This gate marks the middle of this area.",$FA,$ED
db "By cutting the tape here, you can continue from close to "
db "this point."
db $FA,$FF

;-------------------------------------------------------

Message0056:	; Message 107-1

;-------------------------------------------------------

Message0057:	; Message 107-2

;-------------------------------------------------------

Message0058:	; Message 108-1

;-------------------------------------------------------

Message0059:	; Message 108-2

;-------------------------------------------------------

Message005A:	; Message 109-1

;-------------------------------------------------------

Message005B:	; Message 109-2

;-------------------------------------------------------

Message005C:	; Message 10A-1

;-------------------------------------------------------

Message005D:	; Message 10A-2

;-------------------------------------------------------

Message005E:	; Message 10B-1

;-------------------------------------------------------

Message005F:	; Message 10B-2

;-------------------------------------------------------

Message0060:	; Message 10C-1

;-------------------------------------------------------

Message0061:	; Message 10C-2

;-------------------------------------------------------

Message0062:	; Message 10D-1

;-------------------------------------------------------

Message0063:	; Message 10D-2

;-------------------------------------------------------

Message0064:	; Message 10E-1

;-------------------------------------------------------

Message0065:	; Message 10E-2

;-------------------------------------------------------

Message0066:	; Message 10F-1

;-------------------------------------------------------

Message0067:	; Message 10F-2

;-------------------------------------------------------

Message0068:	; Message 110-1

;-------------------------------------------------------

Message0069:	; Message 110-2

;-------------------------------------------------------

Message006A:	; Message 111-1

;-------------------------------------------------------

Message006B:	; Message 111-2

;-------------------------------------------------------

Message006C:	; Message 112-1

;-------------------------------------------------------

Message006D:	; Message 112-2

;-------------------------------------------------------

Message006E:	; Message 113-1

;-------------------------------------------------------

Message006F:	; Message 113-2

;-------------------------------------------------------

Message0070:	; Message 114-1

;-------------------------------------------------------

Message0071:	; Message 114-2

;-------------------------------------------------------

Message0072:	; Message 115-1

;-------------------------------------------------------

Message0073:	; Message 115-2

;-------------------------------------------------------

Message0074:	; Message 116-1

;-------------------------------------------------------

Message0075:	; Message 116-2

;-------------------------------------------------------

Message0076:	; Message 117-1

;-------------------------------------------------------

Message0077:	; Message 117-2

;-------------------------------------------------------

Message0078:	; Message 118-1

;-------------------------------------------------------

Message0079:	; Message 118-2

;-------------------------------------------------------

Message007A:	; Message 119-1

;-------------------------------------------------------

Message007B:	; Message 119-2

;-------------------------------------------------------

Message007C:	; Message 11A-1

;-------------------------------------------------------

Message007D:	; Message 11A-2

;-------------------------------------------------------

Message007E:	; Message 11B-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$A0,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

.body
db $EE,$1A
dw $0017
db $EE,$1B
dw $0000
db $FD
db "- SWITCH PALACE -",$FD,$FD
db "The power of the switch you have pushed will turn",$FD
db $F3,$06,$AD,$F3,$07," into ",$F3,$06,$AE,$F3,$07," .",$FD
db $FD,"Your progress will also be saved.",$FD,$FD
db $FF

;-------------------------------------------------------

Message007F:	; Message 11B-2

;-------------------------------------------------------

Message0080:	; Message 11C-1

;-------------------------------------------------------

Message0081:	; Message 11C-2

;-------------------------------------------------------

Message0082:	; Message 11D-1

;-------------------------------------------------------

Message0083:	; Message 11D-2

;-------------------------------------------------------

Message0084:	; Message 11E-1

;-------------------------------------------------------

Message0085:	; Message 11E-2

;-------------------------------------------------------

Message0086:	; Message 11F-1

;-------------------------------------------------------

Message0087:	; Message 11F-2

;-------------------------------------------------------

Message0088:	; Message 120-1

;-------------------------------------------------------

Message0089:	; Message 120-2

;-------------------------------------------------------

Message008A:	; Message 121-1
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$A0,%00100000
dw $7FFF,$0000
db %11111100
db %00001111,$13,$13,$23,$29

.body
db $EE,$1A
dw $6DAD
db $EE,$1B
dw $0000
db $FD
db "- SWITCH PALACE -",$FD,$FD
db "The power of the switch you have pushed will turn",$FD
db $F3,$06,$AD,$F3,$07," into ",$F3,$06,$AE,$F3,$07," .",$FD
db $FD,"Your progress will also be saved.",$FD,$FD
db $FF

;-------------------------------------------------------

Message008B:	; Message 121-2

;-------------------------------------------------------

Message008C:	; Message 122-1

;-------------------------------------------------------

Message008D:	; Message 122-2

;-------------------------------------------------------

Message008E:	; Message 123-1

;-------------------------------------------------------

Message008F:	; Message 123-2

;-------------------------------------------------------

Message0090:	; Message 124-1

;-------------------------------------------------------

Message0091:	; Message 124-2

;-------------------------------------------------------

Message0092:	; Message 125-1

;-------------------------------------------------------

Message0093:	; Message 125-2

;-------------------------------------------------------

Message0094:	; Message 126-1

;-------------------------------------------------------

Message0095:	; Message 126-2

;-------------------------------------------------------

Message0096:	; Message 127-1

;-------------------------------------------------------

Message0097:	; Message 127-2

;-------------------------------------------------------

Message0098:	; Message 128-1

;-------------------------------------------------------

Message0099:	; Message 128-2

;-------------------------------------------------------

Message009A:	; Message 129-1

;-------------------------------------------------------

Message009B:	; Message 129-2

;-------------------------------------------------------

Message009C:	; Message 12A-1

;-------------------------------------------------------

Message009D:	; Message 12A-2
.header
db $00
db %00001000,%01111000,%11010001,%11000000,$01,%00100000
dw $7FFF,$0000
db %11110100
db %00001111,$13,$13,$23,$29

.body
db "Amazing! Few have made it this far. Beyond lies the Special Zone."
db $FA,$ED
db "Complete it and you can explore a strange new world. GOOD LUCK!"
db $FA,$FF

;-------------------------------------------------------

Message009E:	; Message 12B-1

;-------------------------------------------------------

Message009F:	; Message 12B-2

;-------------------------------------------------------

Message00A0:	; Message 12C-1

;-------------------------------------------------------

Message00A1:	; Message 12C-2

;-------------------------------------------------------

Message00A2:	; Message 12D-1

;-------------------------------------------------------

Message00A3:	; Message 12D-2

;-------------------------------------------------------

Message00A4:	; Message 12E-1

;-------------------------------------------------------

Message00A5:	; Message 12E-2

;-------------------------------------------------------

Message00A6:	; Message 12F-1

;-------------------------------------------------------

Message00A7:	; Message 12F-2

;-------------------------------------------------------

Message00A8:	; Message 130-1

;-------------------------------------------------------

Message00A9:	; Message 130-2

;-------------------------------------------------------

Message00AA:	; Message 131-1

;-------------------------------------------------------

Message00AB:	; Message 131-2

;-------------------------------------------------------

Message00AC:	; Message 132-1

;-------------------------------------------------------

Message00AD:	; Message 132-2

;-------------------------------------------------------

Message00AE:	; Message 133-1

;-------------------------------------------------------

Message00AF:	; Message 133-2

;-------------------------------------------------------

Message00B0:	; Message 134-1

;-------------------------------------------------------

Message00B1:	; Message 134-2

;-------------------------------------------------------

Message00B2:	; Message 135-1

;-------------------------------------------------------

Message00B3:	; Message 135-2

;-------------------------------------------------------

Message00B4:	; Message 136-1

;-------------------------------------------------------

Message00B5:	; Message 136-2

;-------------------------------------------------------

Message00B6:	; Message 137-1

;-------------------------------------------------------

Message00B7:	; Message 137-2

;-------------------------------------------------------

Message00B8:	; Message 138-1

;-------------------------------------------------------

Message00B9:	; Message 138-2

;-------------------------------------------------------

Message00BA:	; Message 139-1

;-------------------------------------------------------

Message00BB:	; Message 139-2

;-------------------------------------------------------

Message00BC:	; Message 13A-1

;-------------------------------------------------------

Message00BD:	; Message 13A-2

;-------------------------------------------------------

Message00BE:	; Message 13B-1

;-------------------------------------------------------

Message00BF:	; Message 13B-2

;-------------------------------------------------------

Message00C0:

;-------------------------------------------------------

Message00C1:

;-------------------------------------------------------

Message00C2:

;-------------------------------------------------------

Message00C3:

;-------------------------------------------------------

Message00C4:

;-------------------------------------------------------

Message00C5:

;-------------------------------------------------------

Message00C6:

;-------------------------------------------------------

Message00C7:

;-------------------------------------------------------

Message00C8:

;-------------------------------------------------------

Message00C9:

;-------------------------------------------------------

Message00CA:

;-------------------------------------------------------

Message00CB:

;-------------------------------------------------------

Message00CC:

;-------------------------------------------------------

Message00CD:

;-------------------------------------------------------

Message00CE:

;-------------------------------------------------------

Message00CF:

;-------------------------------------------------------

Message00D0:

;-------------------------------------------------------

Message00D1:

;-------------------------------------------------------

Message00D2:

;-------------------------------------------------------

Message00D3:

;-------------------------------------------------------

Message00D4:

;-------------------------------------------------------

Message00D5:

;-------------------------------------------------------

Message00D6:

;-------------------------------------------------------

Message00D7:

;-------------------------------------------------------

Message00D8:

;-------------------------------------------------------

Message00D9:

;-------------------------------------------------------

Message00DA:

;-------------------------------------------------------

Message00DB:

;-------------------------------------------------------

Message00DC:

;-------------------------------------------------------

Message00DD:

;-------------------------------------------------------

Message00DE:

;-------------------------------------------------------

Message00DF:

;-------------------------------------------------------

Message00E0:

;-------------------------------------------------------

Message00E1:

;-------------------------------------------------------

Message00E2:

;-------------------------------------------------------

Message00E3:

;-------------------------------------------------------

Message00E4:

;-------------------------------------------------------

Message00E5:

;-------------------------------------------------------

Message00E6:

;-------------------------------------------------------

Message00E7:

;-------------------------------------------------------

Message00E8:

;-------------------------------------------------------

Message00E9:

;-------------------------------------------------------

Message00EA:

;-------------------------------------------------------

Message00EB:

;-------------------------------------------------------

Message00EC:

;-------------------------------------------------------

Message00ED:

;-------------------------------------------------------

Message00EE:

;-------------------------------------------------------

Message00EF:

;-------------------------------------------------------

Message00F0:

;-------------------------------------------------------

Message00F1:

;-------------------------------------------------------

Message00F2:

;-------------------------------------------------------

Message00F3:

;-------------------------------------------------------

Message00F4:

;-------------------------------------------------------

Message00F5:

;-------------------------------------------------------

Message00F6:

;-------------------------------------------------------

Message00F7:

;-------------------------------------------------------

Message00F8:

;-------------------------------------------------------

Message00F9:

;-------------------------------------------------------

Message00FA:

;-------------------------------------------------------

Message00FB:

;-------------------------------------------------------

Message00FC:

;-------------------------------------------------------

Message00FD:

;-------------------------------------------------------

Message00FE:

;-------------------------------------------------------

Message00FF:

;-------------------------------------------------------


%textend()
