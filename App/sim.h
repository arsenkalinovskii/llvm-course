#ifndef SIM_H
#define SIM_H

#define SIM_X_SIZE 512//512
#define SIM_Y_SIZE 512//256

#ifndef __sim__
void simInit();
void app();
void simExit();
void simFlush();
void simPutPixel(int x, int y, int argb);
int simRand();
int simHasClick();
int simHasScroll();
int simGetClick();
int simGetScroll();
float simCalcSinus(float);
#endif // __sim__

#endif // SIM_H