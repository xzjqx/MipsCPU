import sys;

g = [];
now = 0;
fi = open(sys.argv[1], 'rb');
buf = fi.readline();
while(buf):
	#g.append(buf[::-1].encode('hex'));
	g.append(buf)
	buf = fi.readline();
fi.close();

print "case (rom_addr)"
for i in g :
	#print "		x\"%s\" when x\"%03x\", "%(i, now);
	#print "     x\"{id}\"".format(id =i) + " when \"{0:b}\",".format(now)
	print "%d: rom_data = 32'h%s;"%(now,i[:-2])
	now += 4
print "default: rom_data = 0;"
print "endcase"
    