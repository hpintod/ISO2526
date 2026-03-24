# Autor: Hector Pinto Diaz
# Fecha: 24/03/2026
# Debéis de crear un script en Python que tenga un menú con 4 opciones. El programa acaba cuando se
# introduce la opción 4. Se debe comprobar que el usuario que ejecuta el script es el root.
# ▪ Opción 1: Muestra información del SSOO e información de la CPU.
# ▪ Opción 2: Pedir un usuario. Si existe, se muestra información sobre él, si no, se crea.
# ▪ Opción 3: Pedir al usuario un directorio. Comprobar si existe y si es un directorio, en caso contrario, lo crea.
# ▪ Opción 4: Salir.
import os
import cpuinfo

file = open("/etc/passwd", mode="r")
listaUsers = file.readlines()

if os.getuid() != 0:
    exit("El usuario no es root")

while True:
    print()
    print("           Menu de opciones:")
    print("---------------------------------------")
    print(" 1. Información del SSOO y CPU")
    print(" 2. Informacion / crear  un usuario")
    print(" 3. Comprobar / crear un directorio")
    print(" 4. Salir")
    print("---------------------------------------")
    opt = input("Ingrese el una opcione: ")
    print()

    match opt:
        case "1":
            print()
            print(os.uname())
            modeloCPU = cpuinfo.get_cpu_info()  # Esto saca un diccionario con la info de la CPU {'brand_raw': '12th Gen Intel(R) Core(TM) i5-12400'}
            print(modeloCPU['brand_raw'])       # Asi podemos buscar algo en el diccionario

        case "2":
            usuario = input("Dime un usuario: ")
            cont = 0
            for i in listaUsers:
                if usuario in i:
                    print()
                    print(i)
                    cont+=1
            if cont == 0:
                print("El usuario no existe, creando...")
                os.system(f"useradd -m {usuario}")

        case "3":
            directorio = input("Dime un directorio: ")
            cont = 0
            if os.path.isdir(directorio) and os.path.exists(directorio):
                print()
                print("El directorio existe.")
                cont+=1
            if cont == 0:
                print("El directorio no existe, creando...")
                os.mkdir(directorio)

        case "4":
            print()
            exit("Saliendo...")

        case _:
            print("Opcion no valida.")