#include <stdio.h>
#include <stdlib.h>
#include <math.h>


int Potencia(int Base, int expoente){
    int basetemp =Base;
    for(int i=1; i < expoente; i++){
        basetemp=basetemp*Base;
    }

    return basetemp;
}



int main()
{
    int Base=0, expoente=0, potencia=0;
    printf("Insira a base da potencia: ");
    scanf("%d",&Base);
    printf("Insira o expoente da potencia: ");
    scanf("%d", &expoente);

    potencia=Potencia(Base,expoente);

    printf("O resultado da potenciaçao e: %d", potencia);

    return 0;
}
