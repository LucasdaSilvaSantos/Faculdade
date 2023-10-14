#include <stdio.h>
#include <stdlib.h>

//Aluno: Lucas da Silva Santos;


typedef struct {
int comprimento;int largura;int altura;int area;int volume;int metroLinear;
char nome[30];
}parte;


parte Dados(){

parte Dadofinal;
int area=0, volume=0, metroLinear=0;

    printf("Insira o comprimento: ");
    scanf("%d",&Dadofinal.comprimento);
    printf("\nInsira a largura: ");
    scanf("%d",&Dadofinal.largura);
    printf("\nInsira a altura: ");
    scanf("%d",&Dadofinal.altura);
    printf("\nInsira o nome: ");
    scanf(" %s",Dadofinal.nome);


    Dadofinal.area = Dadofinal.comprimento*Dadofinal.largura;
    Dadofinal.volume = Dadofinal.comprimento*Dadofinal.largura*Dadofinal.altura;
    Dadofinal.metroLinear = (Dadofinal.comprimento*2)+(Dadofinal.largura*2);




    return Dadofinal;

}


typedef struct{

    int ano;int mes; int dia;






}data;



data determinaData(){

data dataFinal;



    printf("Insira um ano: ");
    scanf("%d",&dataFinal.ano);
    printf("Insira um mes: ");
    scanf("%d",&dataFinal.mes);
    printf("Insira um dia: ");
    scanf("%d",&dataFinal.dia);




    return dataFinal;
}


int main(){

parte vetor_1[10];
data vetor_2[3];

int maiorVolume=vetor_1[0].volume,menorVolume=vetor_1[0].volume,maiorArea=vetor_1[0].area,areaTotal=0,somaVolume=0,somametroLinear=0;

    for(int i=0;i<3;i++){
        vetor_1[i]=Dados();
        printf("\n");
    }
    for(int i=0;i<3;i++){
            if(vetor_1[i].volume>maiorVolume){
                maiorVolume=vetor_1[i].volume;
            }
            if(vetor_1[i].volume<menorVolume){
                menorVolume=vetor_1[i].volume;
            }
            if(vetor_1[i].area>maiorArea){
                maiorArea=vetor_1[i].area;
            }
    }

    for(int i=0;i<3;i++){
        areaTotal=areaTotal+vetor_1[i].area;
        somaVolume=somaVolume+vetor_1[i].volume;
        somametroLinear=somametroLinear+vetor_1[i].metroLinear;
    }

        printf("\nMaior area: %d",maiorArea);
        printf("\nMaior Volume: %d",maiorVolume);
        printf("\nMenor Volume: %d",menorVolume);
        printf("\nArea Total: %d",areaTotal);
        printf("\nSoma de todos os Volumes: %d",somaVolume);
        printf("\nSoma de todos os metros lineares: %d\n",somametroLinear);
    for(int i=0;i<3;i++){
        vetor_2[i]=determinaData();
        printf("\n");
    }

    for(int i=0;i<3;i++){
        printf("\nA(s) datas sao: %d/%d/%d",vetor_2[i].dia,vetor_2[i].mes,vetor_2[i].ano);
    }


    return 0;
}
