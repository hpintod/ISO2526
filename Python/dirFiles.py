# Autor: Hector Pinto Diaz
# Fecha: 25/03/2026
# Dado un fichero denominado rutas.txt, que contiene el nombre de ficheros y
# directorios que ya deben existir, introducir en 2 listas diferentes cada uno de
# ellos, es decir, en una lista los ficheros y en otra los directorios (habrá que
# comprobar línea a línea si lo leído es un fichero o un directorio).
# ▪ Posteriormente, se le pedirá al usuario qué elija una opción:
# ▪ A- Pedir nombre de fichero y eliminarlo.
# ▪ B- Pedir nombre de directorio y mostrar su información.
# ▪ C- Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino.
# ▪ D- Mostrar lista elegida por el usuario
# ▪ E- Salir

import os
import shutil


file = open("rutas.txt", mode="r")
rutas = file.readlines()

if not os.path.exists("Directorios"):
    os.mkdir("Directorios")

if not os.path.exists("Ficheros"):
    os.mkdir("Ficheros")

for i in rutas:
    f = i.strip()
    if os.path.isdir(f):
        print(f"Directorio: {f}")
        print()
        os.system(f"cp -r {f} Directorios")
    elif os.path.isfile(f):
        print(f"Fichero: {f}")
        print()
        shutil.copy(f, "Ficheros")
    else:
        print(f"{f} no es un directorio o fichero.")
        print()
file.close()


while True:
    print("\n           Menu de opciones:")
    print("---------------------------------------")
    print(" A. Eliminar fichero")
    print(" B. Mostrar informacion directorio")
    print(" C. Copiar fichero")
    print(" D. Mostrar lista")
    print(" E. Salir")
    print("---------------------------------------")
    opt = input("Ingrese el una opcione: ")

    match opt:
        case "A":
            fich = input("Ingrese el nombre del fichero de  la lista: ")
            if os.path.isfile(f"Ficheros/{fich}"):
                os.system(f"rm Ficheros/{fich}")
            else:
                print(f"La opcion no es un fichero.")

        case "B":
            dir = input("Ingrese el nombre del directorio de la lista: ")
            if os.path.isdir(f"Directorios/{dir}"):
                os.system(f"ls -la  Directorios/{dir}")
            else:
                print(f"La ruta no es un directorio.")

        case "C":
            fich = input("Ingrese el nombre del fichero de la lista: ")
            des = input("Ingrese el nombre del destino: ")
            if os.path.isfile(f"Ficheros/{fich}"):
                if os.path.isdir("Directorios"):
                    shutil.copy(f"Ficheros/{fich}", des)
                else:
                    print("El destinno no existe.")
            else:
                print("La opcion no es un fichero.")

        case "D":
            dirfich = input("¿ficheros o directorios?: ")
            if dirfich == "ficheros":
                os.system("ls -la Ficheros")
            elif dirfich == "directorios":
                os.system("ls -la Directorios")
            else:
                print("Opcion no valida.")

        case "E":
            exit("\nSaliendo...")

        case _:
            print("Opcion no valida.")