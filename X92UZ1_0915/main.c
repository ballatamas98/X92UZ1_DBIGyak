#include <stdio.h>
#include <stdlib.h>
void pelda_1();

int main()
{

    pelda_1();
    return 0;
}

void pelda_1(){
    FILE *fp;
    char ch;
    char fnev[50];
    printf("Filenev: ");
    scanf("%s", fnev);
    fp = fopen(fnev, "W");
    printf("Üzenet ");
    while((ch = getchar()) != '#'){
        putch(ch, fp);
    }
    fclose(fp);

    fp = fopen(fnev, "r");
    while ((ch = getc(fp)) !=EOF){
        printf("%c", ch);
    }
    fclose(fp);
     return 0;

}
