%include "boot.inc"
SECTION LOADER vstart=LOADER_BASE_ADDR
    mov byte [gs:0x00],'H'
    mov byte [gs:0x01],0xA4

    mov byte [gs:0x02],'E'
    mov byte [gs:0x03],0xA4

    mov byte [gs:0x04],'L'
    mov byte [gs:0x05],0xA4

    mov byte [gs:0x06],'L'
    mov byte [gs:0x07],0xA4

    mov byte [gs:0x08],'O'
    mov byte [gs:0x09],0xA4

    mov byte [gs:0x0A],' '
    mov byte [gs:0x0B],0xA4

    mov byte [gs:0x0C],'L'
    mov byte [gs:0x0D],0xA4

    mov byte [gs:0x0E],'O'
    mov byte [gs:0x0F],0xA4

    mov byte [gs:0x10],'A'
    mov byte [gs:0x11],0xA4

    mov byte [gs:0x12],'D'
    mov byte [gs:0x13],0xA4

    mov byte [gs:0x14],'E'
    mov byte [gs:0x15],0xA4

    mov byte [gs:0x16],'R'
    mov byte [gs:0x17],0xA4

    mov byte [gs:0x18],'.'
    mov byte [gs:0x19],0xA4

    jmp $
