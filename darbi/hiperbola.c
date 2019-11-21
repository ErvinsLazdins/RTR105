
#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    /* Define temporary variables */
    double value;
    double result;

    /* Assign the value we will find the acos of */
    value = 0.5;

    /* Calculate the Arc Cosine of value */
    result = cos(value);

    /* Display the result of the calculation */
    printf("The Arc Cosine of %f is %f\n", value, result);

    return 0;
}
