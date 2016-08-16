#include <stdio.h>
#include <string.h>

/*
 * argv1	map file	(string)
 * argv2	gps x		(integer)
 * argv3	gps y		(integer)
 * argv4	display range x	(integer square)
 * argv5	display range y (integer square)
 */
int main(int argc, char **argv)
{
	char map[1024][1024] = {0};
	char buff[1024] = {0};
	int i = 0;
	int xstart = 0;
	int ystart = 0;
	int xend = 0;
	int yend = 0;
	int xgps = atoi(argv[2]) - 1;
	int ygps = atoi(argv[3]) - 1;
	int halfdelimx = atoi(argv[4])/2;
	int halfdelimy = atoi(argv[5])/2;
	int loopx, loopy;
	if(argc!=6)
		return 0;

	FILE *fd = fopen(argv[1], "r");
	
	while (fgets(buff, 1024, fd) != NULL) 
	{
		strcpy(map[i], buff);
		i++;
	}
	xstart = xgps - halfdelimx;
	ystart = ygps - halfdelimy;

	xend = xgps + halfdelimx;
	yend = ygps + halfdelimy;

	if (xstart < 0) {
		xstart = 0;
		xend = atoi(argv[4]);
	}
	if (ystart < 0) {
		ystart = 0;
		yend = atoi(argv[5]);
	}

	if (map[ygps][xgps] == ' ') {
	} else {

	//printf("line added: %d startx: %d starty: %d endx: %d endy: %d\n", i, xstart, ystart, xend, yend);

	for (loopy = ystart;loopy < yend;loopy++) {
		for (loopx=xstart;loopx<xend;loopx++) {
			if (loopx == xgps && loopy == ygps) {
				printf("#");
			} else {
				if (map[loopy][loopx] == '\n') {
				} else {
					printf("%c",map[loopy][loopx]);
				}
			}
		}
		printf("\n");
	}
	}

}

