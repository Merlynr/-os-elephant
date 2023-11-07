SECTION MBR vstart=0x7c00 ;起始地址编译为0x7c00
    mov ax,cs     ; 因为是jmp 0:0x7c00跳转到MBR的，故cs此时为0。ds、es、ss、fs等sreg只能用通用寄存器赋值，本例采用ax赋值
    mov ds,ax
    mov es,ax
    mov ss,ax
    mov fs,ax
    mov sp,0x7c00 ; 初始化栈指针
    mov ax,0xb800 ; 0xb800为文本显示起始区
    mov gs,ax     ; gs = ax 充当段基址的作用

    ;ah = 0x06,al = 0x00 想要调用int 0x06的BIOS提供的中断对应的函数，即向上移动即完成清屏功能
    ;cx,dx 分别存储左上角与右下角的左边，详情看int 0x06函数调用
    mov ax,0x600
    mov bx,0x700
    mov cx,0
    mov dx,0x184f

    ;调用BIOS中断，实现清屏
    int 0x10

    ;新增功能：直接操作显存部分
    ;预设输出"Hell0er."

    mov byte [gs:0x00],'H'     ;低位字节储存ASCII字符，小端储存内存顺序相反。用关键词byte指定操作数所占空间，因为[gs:0x00]和'H'所占空间均为不定的，所以需要自己指定空间大小
    mov byte [gs:0x01],0xA4    ;背景储存在第二个字节，含字符与背景属性。A表示绿色背景闪烁，4表示前景色为红色

    mov byte [gs:0x02],'e'
    mov byte [gs:0x03],0xA4

    mov byte [gs:0x04],'l'
    mov byte [gs:0x05],0xA4

    mov byte [gs:0x06],'l'
    mov byte [gs:0x07],0xA4

    mov byte [gs:0x08],'0'
    mov byte [gs:0x09],0xA4

    mov byte [gs:0x0A],'e'
    mov byte [gs:0x0B],0xA4

    mov byte [gs:0x0C],'r'
    mov byte [gs:0x0D],0xA4

    mov byte [gs:0x0E],'.'
    mov byte [gs:0x0F],0xA4

    jmp $   ; 执行死循环

    times 510-($-$$) db 0   ; 将512B的剩余部分填充为0
    db 0x55,0xaa   ; 魔数
