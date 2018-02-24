import sys

f = open(sys.argv[1], 'r')
for i in f:
	vet = i.split()
	page = i.split()[0].split('.') #['x', 'y', 'z', 'w','v'] - vetor de caracteres
	if(len(vet) == 2):
		value = i.split()[1].split()[0] # string
	else:
		value = ''
	file = open('page'+ page[2],'a')
	file.write('.'.join(page) + ',' + value + '\n')
	file.close()

f.close()

