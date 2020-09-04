/*
 * adc.xc
 *
 *  Created on: 06 рту. 2020 у.
 *      Author: Oleg
 */


#include <stdio.h>
#include <xscope.h>
#include <xs1.h>
#include <timer.h>
#include <platform.h>
#include "customdefines.h"

out port port_dfs = PORT_DFS;

void set_dfs(int dfs)
{
    port_dfs <: (dfs << 1);
}

void AudioHwInit(chanend ?c_codec)
{

}

void AudioHwConfig(unsigned samFreq, unsigned mClk, chanend ?c_codec, unsigned dsdMode,
    unsigned sampRes_DAC, unsigned sampRes_ADC)
{
    switch(samFreq)
    {
    case 44100:
    case 48000:
        set_dfs(0);
        break;

    case 88200:
    case 96000:
        set_dfs(1);
        break;

    case 176400:
    case 192000:
        set_dfs(2);
        break;

    default:
        set_dfs(2);
        break;
    }
}

void AudioHwConfigBitrate(unsigned SamplesOr)
{

}

void UserReadHIDButtons(unsigned char hidData[])
{
    hidData[0] = 0;
}
