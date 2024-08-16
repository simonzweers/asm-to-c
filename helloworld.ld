ENTRY(_start)

SECTIONS
{
	.text : {
		. = ALIGN(4);
		*(.text)
		*(.text*)
	}
}
