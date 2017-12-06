example: binary
	objdump -d revread | grep '[0-9a-f]:'| grep -v 'file' | cut -f2 -d':' | cut -f1-7 -d ' '| tr -s ' '| tr '\t' ' ' | sed "s/ $$//g"| sed 's/ /\\x/g'|paste -d '' -s | sed 's/^/"/'| sed 's/$$/"/g' > shellcode.h
	gcc -fno-stack-protector -z execstack example.c -o shellcode
binary:
	nasm -felf64 revread.nasm -o revread.o && ld revread.o -o revread

