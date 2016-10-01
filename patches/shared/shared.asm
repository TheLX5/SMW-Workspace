@asar 1.37

; Using !shared_asm_included as an include guard here so that this file can be
; included from multiple source files at once without causing redefinitions	
	
; This file contains a bunch of useful helper functions for Asar
; Shoutout to Alcaro for pointing me into the right direction on some of those

; NOTE: It is advised to set math round to off in your patch if you want all of
;       the functions in here to behave reliably, independent of input values

!shared_asm_included ?= 0

if !shared_asm_included == 0

	!shared_asm_included = 1
	


	; Private section
		
	{	
		; Check if we're in an SA-1 ROM
		; If so, enable SA-1 mapping
	
		!use_sa1_mapping = 0
		
		!num_sprite_table_slots = 12		; The number of sprite slots available (12 in regular ROM, 22 in SA-1 ROM)
		
		if read1($00FFD5) == $23
			!use_sa1_mapping = 1
			
			!num_sprite_table_slots = 22
			
			sa1rom
		endif
	
	
	
		; A constant which we use in a few places where we need to apply int logic to doubles
		; Take this as the maximum double we can add to 0.0 without reaching 1.0 yet
		!magic_zero = 0.999999999
		
	
	
		; Returns 1 if value >= 0 and 0 otherwise
		; Note that we subtract !magic_zero from value, because >> casts our expression to an unsigned int,
		; which means that this function would otherwise not work accurately for values between -1.0 and 0.0,
		; because they would be truncated to 0.0 and thus result in 1 instead of 0
		; This may not be 100% accurate, because we're working with doubles here, but it was the best solution I could find
		function is_greater_equal_zero(value) = 1-((value-!magic_zero)>>31)
		
		
		; Returns 1 if value is 0 and 0 otherwise
		; We use 1-!magic_zero here to test value against the next-smallest possible double below value
		; If both function calls return different results, value must be 0
		; This may not be 100% accurate, because we're working with doubles here, but it was the best solution I could find
		; For internal use only
		
		function is_zero(value) = is_greater_equal_zero(value)^is_greater_equal_zero(value-(1-!magic_zero))
	}
	
	
	
	; Public section
	
	
	; Returns false if statement == 0 and true otherwise, but only works reliably for integers
	
	function select(statement, true, false) = false+((true-false)*(1-is_zero(statement)))
	
	
	
	; Returns the absolute value of value
	
	function abs(value) = select(is_greater_equal_zero(value), value, -value)
	
	
	; Returns 1 if value > 0, -1 if value < 0 and 0 otherwise
	
	function sign(value) = value/abs(select(is_zero(value), 1, value))
	
	
	; Returns 0 if value < 0, 1 if value > 0 and 0.5 otherwise
	
	function heaviside_step(value) = (1+sign(value))/2
	
	
	
	
	
	; Returns 1 if value == 0 and 0 otherwise
	; Original version abused the fact that certain operations like "or" cast their operands to an unsigned int in Asar
	; Replaced by is_zero() function, which I consider more reliable (I think the original version would have stopped
	; working, anyways, once setting math round to off, in which case values like -2*Pi etc. should have resulted in 1)
	; Leaving the original implementation here just in case, though
	
	; function not(value) = cos(value)|0
	function not(value) = is_zero(value)
	
	
	; Returns 1 if val_a == val_b and 0 otherwise
	
	function equal(val_a, val_b) = not(val_a-val_b)	
	
	
	; Returns 1 if val_a < val_b and 0 otherwise
	
	function less(val_a, val_b) = 1-is_greater_equal_zero(val_a-val_b)
	
	
	; Returns 1 if val_a > val_b and 0 otherwise
	
	function greater(val_a, val_b) = 1-is_greater_equal_zero(val_b-val_a)
	
	
	; Returns 1 if val_a <= val_b and 0 otherwise
	
	function less_equal(val_a, val_b) = not(greater(val_a, val_b))
	
	
	; Returns 1 if val_a >= val_b and 0 otherwise
	
	function greater_equal(val_a, val_b) = not(less(val_a, val_b))
	
	
	
	
	
	; Returns 1 if (val_a != 0) && (val_b != 0) and 0 otherwise
	
	function logical_and(val_a, val_b) = not(not(val_a*val_b))
	
	
	; Returns 0 if (val_a != 0) && (val_b != 0) and 1 otherwise
	
	function logical_nand(val_a, val_b) = not(logical_and(val_a, val_b))
	
	
	; Returns 1 if (val_a != 0) || (val_b != 0) and 0 ohterwise
	
	function logical_or(val_a, val_b) = logical_nand(logical_nand(val_a, val_a), logical_nand(val_b, val_b))
	
	
	; Returns 0 if (val_a != 0) || (val_b != 0) and 1 ohterwise
	
	function logical_nor(val_a, val_b) = logical_nand(logical_nand(val_a, val_a), logical_nand(val_b, val_b))
	
	
	; Returns 1 if ((val_a != 0) && (val_b == 0)) || ((val_a == 0) && (val_b != 0)) and 0 otherwise
	
	function logical_xor(val_a, val_b) = logical_and(logical_or(val_a, val_b), not(logical_and(val_a, val_b)))
	
	
	
	
	
	; Returns val_a if val_a < val_b and val_b otherwise
	
	function min(val_a, val_b) = select(less(val_a, val_b), val_a, val_b)
	
	
	; Returns val_a if val_a > val_b and val_b otherwise
	
	function max(val_a, val_b) = select(greater(val_a, val_b), val_a, val_b)
	
	
	; Returns minimum if value < minimum, maximum if value > maximum and value otherwise
	
	function clamp(value, minimum, maximum) = select(less(value, minimum), minimum, select(greater(value, maximum), maximum, value))		
		
	
	; Returns value if value > 0 and 0 otherwise
	
	function ramp(value) = (value+abs(value))/2
	
	
	
	
	
	; Returns the bank byte of an address (e.g. returns $24 for address $2482FA)
	
	function get_bank_byte(address) = (address&$FF0000)>>16
	
	
	
	; Private section
	
	{	
		; Remaps address to new_base if range_start <= address <= range_end
		; For internal use only
		
		function remap_range(address, range_start, range_end, new_base) = select(greater_equal(address, range_start), select(less_equal(address, range_end), address-range_start+new_base, address), address)
		
		
		; Remaps address to new_base if address == comparand
		; For internal use only
		
		function remap_address(address, comparand, new_base) = remap_range(address, comparand, comparand, new_base)
		
		
		
		; Returns 1 if bank_byte lies in a range of banks where mirrors exist from $0000 to $7FFF and 0 otherwise
		; For internal use only
		
		function has_mirrors(bank_byte) = not(logical_or(logical_and(greater_equal(bank_byte, $40), less_equal(bank_byte, $7F)), logical_and(greater_equal(bank_byte, $C0), less_equal(bank_byte, $FF))))
		
		
		
		; Returns 1 if current_pc lies within a bank where RAM mirrors exist from $0000 to $1FFF and address lies
		; between $7E0000 and $7E1FFF, otherwise returns 0
		; For internal use only
		
		function has_ram_mirrors(current_pc, address) = logical_and(has_mirrors(get_bank_byte(current_pc)), logical_and(greater_equal(address, $7E0000), less_equal(address, $7E1FFF)))
		
		
		
		; Shortens an address if its bank byte lies within range bank_range_start to bank_range_end and its word address
		; lies within range mirror_range_start to mirror_range_end and mirrors exist inside the bank current_pc lies in
		; For internal use only
		
		function shorten_if_in_range(current_pc, address, bank_range_start, bank_range_end, mirror_range_start, mirror_range_end) =	select(logical_and(logical_or(has_mirrors(get_bank_byte(current_pc)), has_ram_mirrors(current_pc, address)), logical_and(greater_equal(get_bank_byte(address), bank_range_start), less_equal(get_bank_byte(address), bank_range_end))), remap_range(address, (address&$FF0000)|mirror_range_start, (address&$FF0000)|mirror_range_end, $000000|mirror_range_start), address)
		
		
		
		; Shortens a long address if it lies within a range where mirrors exist for it inside the bank current_pc lies in
		; (e.g. current_pc is $008000 and address is in range $7E0000 to $7E1FFF, $010000 to $017FFF, $810000 to $81FFFF etc.)
		; For internal use only
		
		function shorten_if_mirrored(current_pc, address) = shorten_if_in_range(current_pc, shorten_if_in_range(current_pc, shorten_if_in_range(current_pc, address, $7E, $7E, $0000, $1FFF), $80, $BF, $0000, $7FFF), $00, $3F, $0000, $7FFF)
		
		
		
		; Originally, the code was meant to automatically detect what bank it's in and do some remapping if running from inside a bank that doesn't have mirrors
		; However, due to Asar limitations, this is either not possible or just not very practical, so let's just do away with it and always assume we're in bank $00
		; For internal use only
		
		!current_pc ?= $008000
		
		
		
		; Maps a RAM address from a sprite table correctly, depending on whether we need SA-1 mapping or not
		; For internal use only
		
		function remap_sprite_table_ram(address) = select(!use_sa1_mapping, remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(shorten_if_mirrored(!current_pc, address), $00AA, $00B5, $309E), $00B6, $00C1, $30B6), $00C2, $00CD, $30D8), $009E, $00A9, $3200), $00D8, $00E3, $3216), $00E4, $00EF, $322C), $14C8, $14D3, $3242), $14D4, $14DF, $3258), $14E0, $14EB, $326E), $151C, $1527, $3284), $1528, $1533, $329A), $1534, $153F, $32B0), $1540, $154B, $32C6), $154C, $1557, $32DC), $1558, $1563, $32F2), $1564, $156F, $3308), $1570, $157B, $331E), $157C, $1587, $3334), $1588, $1593, $334A), $1594, $159F, $3360), $15A0, $15AB, $3376), $15AC, $15B7, $338C), $15EA, $15F5, $33A2), $15F6, $1601, $33B8), $1602, $160D, $33CE), $160E, $1619, $33E4), $163E, $1649, $33FA), $187B, $1886, $3410), $14EC, $14F7, $74C8), $14F8, $1503, $74DE), $1504, $150F, $74F4), $1510, $151B, $750A), $15B8, $15C3, $7520), $15C4, $15CF, $7536), $15D0, $15DB, $754C), $15DC, $15E7, $7562), $161A, $1625, $7578), $1626, $1631, $758E), $1632, $163D, $75A4), $190F, $191A, $7658), $1FD6, $1FE1, $766E), $1FE2, $1FED, $7FD6), $164A, $1655, $75BA), $1656, $1661, $75D0), $1662, $166D, $75EA), $166E, $1679, $7600), $167A, $1685, $7616), $1686, $1691, $762C), $186C, $1877, $7642), address)
	}

	
	
	; Public section
	
	; Maps a RAM address correctly, depending on whether we need SA-1 mapping or not
	
	function remap_ram(address) = select(!use_sa1_mapping, remap_address(remap_address(remap_address(remap_address(remap_address(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_range(remap_sprite_table_ram(shorten_if_mirrored(!current_pc, address)), $0000, $00FF, $3000), $0100, $1FFF, $6100), $7EC800, $7EFFFF, $40C800), $7FC800, $7FFFFF, $41C800), $7F9A7B, $7F9C7A, $418800), $700000, $7007FF, $41C000), $700800, $7027FF, $41A000), $7FAB10, $6040), $7FAB1C, $6056), $7FAB28, $6057), $7FAB34, $606D), $7FAB9E, $6083), address)
	
	
	
	; Maps a ROM address correctly, depending on whether we need SA-1 mapping or not
	; NOTE: This doesn't work in conjunction with autoclean, because autoclean is lazy and just treats the function as a label instead of resolving it
	
	function remap_rom(address) = address|select(!use_sa1_mapping, $000000, $800000)
	
	
	
	; Maps a bank correctly, depending on whether we need SA-1 mapping or not
	
	function remap_bank(bankbyte) = bankbyte|select(!use_sa1_mapping, $00, $80)
	
	
	
	
	
	; Now some helper functions for working with fixed point values (as used by mode 7, for example)
	; When working with decimal numbers, make sure to put "math round off" somewhere at the top of your patch, otherwise you'll get ridiculous results
	
	
	; Returns the fractional part of a decimal number as a negative or positive number
	
	function sawtooth(decimal_number) = decimal_number%1
	
	
	; Returns the fractional part of a decimal number
	
	function frac(decimal_number) = sawtooth(decimal_number)*select(less(decimal_number, 0), -1, 1)
	
	
	; Returns the truncated value of a decimal number
	
	function trunc(decimal_number) = decimal_number|0
	
	
	; Returns the floor of a decimal number
	
	function floor(decimal_number) = select(less(decimal_number, 0), trunc(decimal_number-!magic_zero), trunc(decimal_number))
	
	
	; Returns the ceiling of a decimal number
	
	function ceiling(decimal_number) = select(less(decimal_number, 0), trunc(decimal_number), trunc(decimal_number+!magic_zero))
	
	
	; Returns decimal_number rounded to nearest integer value
	
	function round(decimal_number) = trunc(decimal_number+(sign(decimal_number)*0.5))
	
	
	
	; Private section
	
	{
		; Converts a positive 16-bit fixed point representation to a decimal number
		; For internal use only
		
		function fixed_16_to_decimal_positive(fixed_representation) = ((fixed_representation&$FF00)>>8)+((fixed_representation&$FF)/$100)
	}
	
	
	
	; Public section
	
	; Converts a decimal number to a 16-bit signed fixed point representation (such as used by mode 7)
	
	function decimal_to_fixed_16(decimal_number) = (min(((clamp(decimal_number, -128, 128)+128)*$100)|0, $FFFF)+$8000)&$FFFF
	
	
	; Converts a 16-bit fixed point representation to a decimal number
	
	function fixed_16_to_decimal(fixed_representation) = fixed_16_to_decimal_positive(select(less(fixed_representation, $8000), fixed_representation, (fixed_representation-1)^$FFFF))*select(less(fixed_representation, $8000), 1, -1)
	
	
	; Converts a decimal number to a 13-bit signed int (such as used by mode 7)
	
	function decimal_to_int_13(decimal_number) = (((clamp(decimal_number, -4096, 4095)&$80000000)>>19)&$1000)|(clamp(decimal_number, -4096, 4095)&$0FFF)
	
	
	
	; Resolves to "stz address" if address lies in an address range supported by stz and otherwise to "lda #$00 : sta address"
	
	macro sta_zero_or_stz(address)
		if less(<address>, $010000)
			stz <address>		
		else
			lda #$00
			sta <address>
		endif
	endmacro
	
	
	; Resolves to "inc address" if address lies in an address range supported by inc and otherwise to "lda #$01 : sta address"
	
	macro sta_one_or_inc(address)
		if less(<address>, $010000)
			inc <address>		
		else
			lda #$01
			sta <address>
		endif
	endmacro
	
	
	
	; Includes
	
	incsrc includes/print_implementation.asm
		
endif
