#include "sim.h"

#define COURANT_NUMBER_SQR (1.0 / 10.0)
#define DELTA_T (1.0 / 20)
#define AMPLITUDE (3.0)
#define INIT_REFLECTION_COEFF (0.5)
#define LIMIT (10.0)

void initGrids(float grids[2][SIM_X_SIZE][SIM_Y_SIZE])
{
    for (int i = 0; i < 2; i++) 
    {
        for (int x = 0; x < SIM_X_SIZE; x++)
        {
            for (int y = 0; y < SIM_Y_SIZE; y++)
            {
                grids[i][x][y] = 0.0f;
            }
        }
    }
}

typedef float (*gridPtr)[SIM_X_SIZE][SIM_Y_SIZE];

void emulationStep(gridPtr grid1, gridPtr grid2, float reflectionCoeff, 
    float t, int sourceX, int sourceY)
{
    gridPtr resultGrid = grid2;
    

    // Inner grid
    for (int x = 1; x < SIM_X_SIZE - 1; x++)
    {
        for (int y = 1; y < SIM_Y_SIZE - 1; y++)
        {
            float timeTerm = 2 * (*grid1)[x][y] - (*grid2)[x][y];
            float spaceTerm = (*grid1)[x + 1][y] + (*grid1)[x - 1][y] 
                + (*grid1)[x][y + 1] + (*grid1)[x][y - 1]
                - 4 * (*grid1)[x][y];
            (*resultGrid)[x][y] = timeTerm + COURANT_NUMBER_SQR * spaceTerm;
        }
    }

    // Cells at edges (except for those in corners)
    float onePlusR = 1.0 + reflectionCoeff;
    for (int y = 1; y < SIM_Y_SIZE - 1; y++)
    {
        {
            float timeTerm = 2 * (*grid1)[0][y] - (*grid2)[0][y];
            float spaceTerm = onePlusR * (*grid1)[1][y]
                + (*grid1)[0][y + 1] + (*grid1)[0][y - 1]
                - 4 * (*grid1)[0][y];
            (*resultGrid)[0][y] = timeTerm + COURANT_NUMBER_SQR * spaceTerm;
        }

        {
            float timeTerm = 2 * (*grid1)[SIM_X_SIZE - 1][y] - (*grid2)[SIM_X_SIZE - 1][y];
            float spaceTerm = onePlusR * (*grid1)[SIM_X_SIZE - 2][y]
                + (*grid1)[SIM_X_SIZE - 1][y + 1] + (*grid1)[SIM_X_SIZE - 1][y - 1]
                - 4 * (*grid1)[SIM_X_SIZE - 1][y];
            (*resultGrid)[SIM_X_SIZE - 1][y] = timeTerm + COURANT_NUMBER_SQR * spaceTerm;
        }
    }

    for (int x = 1; x < SIM_X_SIZE - 1; x++)
    {
        {
            float timeTerm = 2 * (*grid1)[x][0] - (*grid2)[x][0];
            float spaceTerm = (*grid1)[x + 1][0] + (*grid1)[x - 1][0]
                + onePlusR * (*grid1)[x][1]
                - 4 * (*grid1)[x][0];
            (*resultGrid)[x][0] = timeTerm + COURANT_NUMBER_SQR * spaceTerm;
        }

        {
            float timeTerm = 2 * (*grid1)[x][SIM_Y_SIZE - 1] - (*grid2)[x][SIM_Y_SIZE - 1];
            float spaceTerm = (*grid1)[x + 1][SIM_Y_SIZE - 1] + (*grid1)[x - 1][SIM_Y_SIZE - 1]
                + onePlusR * (*grid1)[x][SIM_Y_SIZE - 2]
                - 4 * (*grid1)[x][SIM_Y_SIZE - 1];
            (*resultGrid)[x][SIM_Y_SIZE - 1] = timeTerm + COURANT_NUMBER_SQR * spaceTerm;
        }
    }

    // Corner cells
    // Top left corner
    {
        float timeTerm = 2 * (*grid1)[0][0] - (*grid2)[0][0];
        float spaceTerm = onePlusR * ((*grid1)[0][1] + (*grid1)[1][0])
            - 4 * (*grid1)[0][0];
        (*resultGrid)[0][0] = timeTerm + COURANT_NUMBER_SQR * spaceTerm;
    }
    // Top right corner
    {
        float timeTerm = 2 * (*grid1)[SIM_X_SIZE - 1][0] - (*grid2)[SIM_X_SIZE - 1][0];
        float spaceTerm = onePlusR * ((*grid1)[SIM_X_SIZE - 1][1] + (*grid1)[SIM_X_SIZE - 2][0])
            - 4 * (*grid1)[SIM_X_SIZE - 1][0];
        (*resultGrid)[SIM_X_SIZE - 1][0] = timeTerm + COURANT_NUMBER_SQR * spaceTerm;
    }
    // Bottom left corner
    {
        float timeTerm = 2 * (*grid1)[0][SIM_Y_SIZE - 1] - (*grid2)[0][SIM_Y_SIZE - 1];
        float spaceTerm = onePlusR * ((*grid1)[0][SIM_Y_SIZE - 2] + (*grid1)[1][SIM_Y_SIZE - 1])
            - 4 * (*grid1)[0][SIM_Y_SIZE - 1];
        (*resultGrid)[0][SIM_Y_SIZE - 1] = timeTerm + COURANT_NUMBER_SQR * spaceTerm;
    }
    // Bottom right corner
    {
        float timeTerm = 2 * (*grid1)[SIM_X_SIZE - 1][SIM_Y_SIZE - 1] - (*grid2)[SIM_X_SIZE - 1][SIM_Y_SIZE - 1];
        float spaceTerm = onePlusR * ((*grid1)[SIM_X_SIZE - 1][SIM_Y_SIZE - 2] + (*grid1)[SIM_X_SIZE - 2][SIM_Y_SIZE - 1])
            - 4 * (*grid1)[SIM_X_SIZE - 1][SIM_Y_SIZE - 1];
        (*resultGrid)[SIM_X_SIZE - 1][SIM_Y_SIZE - 1] = timeTerm + COURANT_NUMBER_SQR * spaceTerm;
    }

    // Change source cell
    float f = AMPLITUDE * simCalcSinus(t);
    (*resultGrid)[sourceX][sourceY] += f;
}

float saturate(float u)
{
    if (u > LIMIT) u = LIMIT;
    else if (u < -LIMIT) u = -LIMIT;
    return u;
}

void app(void)
{
    float grids[2][SIM_X_SIZE][SIM_Y_SIZE];
    gridPtr grid1 = &grids[0], grid2 = &grids[1];
    initGrids(grids);

    int sourceX = SIM_X_SIZE / 2, sourceY = SIM_Y_SIZE / 2;
    float t = 0.0f;
    float reflectionCoeff = INIT_REFLECTION_COEFF;
    while (1)
    {
        emulationStep(grid1, grid2, reflectionCoeff, t, sourceX, sourceY);
        for (int x = 0; x < SIM_X_SIZE; x++)
        {
            for (int y = 0; y < SIM_Y_SIZE; y++)
            {
                float u = saturate((*grid1)[x][y]);
                float alpha = (u + LIMIT) / (2 * LIMIT);
                int tone = (int)(alpha * 255) & 0xFF;
                int argb = tone | (tone << 8) | (tone << 16) | (0xFF << 24);
                simPutPixel(x, y, argb);
            }
        }
        simFlush();
        if (simHasClick())
        {
            int xy = simGetClick();
            int x = (xy >> 16);
            int y = (xy & 0xFFFF);
            if (x >= 0 && x < SIM_X_SIZE && y >= 0 && y < SIM_Y_SIZE)
                sourceX = x, sourceY = y;
        }
        while (simHasScroll())
        {
            int y = 5 * simGetScroll();
            float deltaCoeff = y / 100.0;
            reflectionCoeff += deltaCoeff;
            if (reflectionCoeff > 1.0) reflectionCoeff = 1.0;
            else if (reflectionCoeff < 0.0) reflectionCoeff = 0.0;
        }
        gridPtr temp = grid1;
        grid1 = grid2;
        grid2 = temp;
        t += DELTA_T;
    }
}