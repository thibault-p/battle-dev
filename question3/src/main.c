/*******
 * Read input from STDIN
 * Use printf(...) or fprintf( stdout, ...) to output your result.
 * Use:
 *  localPrint( char* mystring)
 * to display variable in a dedicated area.
 * ***/
#include <stdlib.h>
#include <stdio.h>

int main() {
   char s[1024];

	while (scanf("%s", &s) != EOF) {
		//
		int n = atoi(s);
		if (n < 10)
			printf("ECHEC");
		else
			printf("ZOB");
	}

	// Vous pouvez aussi effectuer votre traitement ici après avoir lu toutes les données 
	return 0;
}
