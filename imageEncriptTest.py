from PIL import Image

im = 0
pix = 0
size = 0

xorKey=172
INT_BITS = 8 #tamano de bits
despKey = 3
sumKey=172
opcion1 = ""
opcion2 = ""
while(1):
    print("Digite 'e' para encriptar")
    print("Digite 'd' para desencriptar")
    print("Digite 'x' para cerrar la ejecucion")
    opcion1 = input("Opcion: ")
    if(opcion1 == "x"):
        break
    else:
        print("1 para XOR ")
        print("2 para Desplazamiento circular")
        print("3 para Suma ")
        print("4 para Especial ")
        print("Digite 'x' para cerrar la ejecucion")
        opcion2 = input("Opcion: ")
        if(opcion2 == "x"):
            break

        elif(opcion1 == "e"):
            im = Image.open('img.png') # Can be many different formats
            pix = im.load()
            size = im.size
        else:
            im = Image.open('img' + opcion2 + '.png') # Can be many different formats
            pix = im.load()
            size = im.size  
    
	

    for i in range(size[0]):
        for j in range(size[1]):
            pixel = pix[i,j]
            encript = 0
            if(int(opcion2) == 1):
                encript = pixel[0] ^ xorKey
            elif(int(opcion2) == 2):
                if(opcion1=="d"): #shift left
                    encript = ((pixel[0] << despKey)|(pixel[0] >> (8 - despKey)))& 255
                else: # shift right
                    encript = ((pixel[0] >> despKey)|(pixel[0] << (8 - despKey)))& 255
            elif(int(opcion2) == 3):
                if(opcion1=="d"):
                    encript = (pixel[0] - sumKey)&255
                else:
                    encript = (pixel[0] + sumKey)&255
            elif(int(opcion2) == 4):
                if(opcion1=="d"):
                    encript = ((pixel[0] << despKey)|(pixel[0] >> (8 - despKey)))& 255
                else:
                    encript = ((pixel[0] >> despKey)|(pixel[0] << (8 - despKey)))& 255
            tupla = (encript,encript,encript)
            pix[i,j] = tupla

    im.save('img' + opcion2 + '.png')
  
    
