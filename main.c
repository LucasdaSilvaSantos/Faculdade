//Aluno: Lucas da Silva Santos - ADS2
#include <stdio.h>
#include <stdlib.h>

int main()
{
    char c, p;
    int AnoNascimento=0, AnoAtual=0, AnoBissexto=0, DiasVivos=0, DiasVividosP=0, continuar=0, AnoFuturo=0,DiasFuturos=0, AnoNscP=0;

    do{
        printf("Insira o seu nome: ");
        scanf("%s", &c);
        printf("Insira o ano de seu nascimento: ");
        scanf("%d", &AnoNascimento);
        printf("Insira o Ano Atual: ");
        scanf("%d", &AnoAtual);

        AnoBissexto=Calc_Bissexto(AnoNascimento,AnoAtual,AnoBissexto);

        DiasVivos=(AnoAtual-AnoNascimento);
        DiasVivos=DiasVivos*365+AnoBissexto;

        printf("\nDias vividos: %d", DiasVivos);


        printf("\nAno Futuro: ");
        scanf("%d",&AnoFuturo);

        AnoBissexto=0;

        AnoBissexto=Calc_Bissexto(AnoNascimento,AnoFuturo,AnoBissexto);

        DiasFuturos=(AnoFuturo - AnoNascimento);
        DiasFuturos=DiasFuturos*365 + AnoBissexto;


        printf("\nDias vividos até o ano futuro: %d", DiasFuturos);

        AnoBissexto=0;
        printf("\nInforme o nome de outra pessoa: ");
        scanf("%s", &p);
        printf("\nInforme o ano de nascimento da outra pessoa: ");
        scanf("%d", &AnoNscP);

        AnoBissexto=Calc_Bissexto(AnoNscP,AnoAtual,AnoBissexto);

        DiasVividosP=(AnoAtual - AnoNscP);
        DiasVividosP=DiasVividosP*365 + AnoBissexto;

        printf("\nDias VIvidos: %d",DiasVividosP);

        if(DiasVividosP > DiasVivos){
            printf("\nA segunda pessoas viveu mais tempo.");
        } else{
            printf("\nA primeira pessoa viveu mais tempo");
        }



        printf("\nCOntinuar\n 1-Outra Pessoa\n 0-Encerrar o programa\n");
        scanf("%d", &continuar);

    }while(continuar!=0);


    return 0;
}







int Calc_Bissexto(int AnoNascimento, int AnoAtual, int AnoBissexto){
    for(int i= AnoNascimento; i <= AnoAtual; i++){
            if((i%4==0) && (i%100!=0)){
            AnoBissexto++;
            }else if((i%4==0) && (i%100==0) && (i%400==0)){
            AnoBissexto++;
            }
        }


        return AnoBissexto;

}
