#/bin/sh
image_name=RT-AX82U_386.5_2_puresqubi
to_image_name=RAX50_386.5_2_puresqubi
if [ -f "../image/$image_name.w" ]; then
touch rootfs && \
	./hostTools/packet -k ../image/RT-AX82U_386.5_2_puresqubi.w -b compatible_RAX50.txt -oall $to_image_name \
			-i ./ambitCfg.h && \
	rm -f rootfs _*.chk
else
	echo "$image_name does not exist!"
fi