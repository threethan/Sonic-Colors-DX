/*
 * Copyright (C) 2015 Ganossa (mediehawk@gmail.com)
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of
 * this software and associated documentation files (the "Software"), to deal in
 * the Software with restriction, including without limitation the rights to
 * use and/or sell copies of the Software, and to permit persons to whom the Software
 * is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and the permission notices (this and below) shall
 * be included in all copies or substantial portions of the Software.
 *
 * Permission needs to be specifically granted by the author of the software to any
 * person obtaining a copy of this software and associated documentation files
 * (the "Software"), to deal in the Software without restriction, including without
 * limitation the rights to copy, modify, merge, publish, distribute, and/or
 * sublicense the Software, and subject to the following conditions:
 *
 * The above copyright notice and the permission notices (this and above) shall
 * be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 * Port To Ishiiruka Shader Format by Tino
[configuration]
[OptionRangeFloat]
GUIName = Base Intensity
OptionName = alInt
MinValue = 0.0
MaxValue = 20.0
StepAmount = 0.01
DefaultValue = 10.15
GUIDescription = Base intensity of AL.

[OptionRangeFloat]
GUIName = Threshold
OptionName = alThreshold
MinValue = 0.0
MaxValue = 100.0
StepAmount = 1.0
DefaultValue = 15.0
GUIDescription = Reduces intensity for not bright light.

[OptionBool]
GUIName = Adaptation
OptionName = AL_Adaptation
DefaultValue = true
GUIDescription = Activates adaptation algorithm.

[OptionRangeFloat]
GUIName = AL intensity correction
OptionName = alAdapt
MinValue = 0.0
MaxValue = 4.0
StepAmount = 0.01
DefaultValue = 0.70
GUIDescription = Intensity of AL correction for bright light.

[OptionRangeFloat]
GUIName = AL Multiplier
OptionName = alAdaptBaseMult
MinValue = 0.0
MaxValue = 4.0
StepAmount = 0.01
DefaultValue = 1.00
GUIDescription = Multiplier for adaption applied to the original image.

[OptionRangeFloat]
GUIName = B\W LvL
OptionName = alAdaptBaseBlackLvL
MinValue = 0.0
MaxValue = 4.0
StepAmount = 0.01
DefaultValue = 2.00
GUIDescription = Distinction level of black and white (lower => less distinct).

[OptionBool]
GUIName = Dirt
OptionName = AL_Dirt
DefaultValue = false
GUIDescription = Defines if dirt is used.

[OptionBool]
GUIName = Dirt
OptionName = AL_DirtTex
DefaultValue = false
DependentOption = AL_Dirt
GUIDescription = Defines if dirt texture is used as overlay.

[OptionBool]
GUIName = Vibrance
OptionName = AL_Vibrance
DefaultValue = false
DependentOption = AL_Dirt
GUIDescription = Vibrance of dirt effect.

[OptionRangeInteger]
GUIName = Adaptative Type
OptionName = AL_Adaptive
MinValue = 0
MaxValue = 2
StepAmount = 1
DefaultValue = 0
DependentOption = AL_Dirt
GUIDescription = 0 => Warm, 1 => Cold, 2=> Light Dependent.

[OptionRangeFloat]
GUIName = Dirt Intensity
OptionName = alDirtInt
MinValue = 0.0
MaxValue = 2.0
StepAmount = 0.01
DefaultValue = 1.0
DependentOption = AL_Dirt
GUIDescription = Intensity of dirt effect.

[OptionRangeFloat]
GUIName = Colored Dirt
OptionName = alDirtOVInt
MinValue = 0.0
MaxValue = 2.0
StepAmount = 0.01
DefaultValue = 1.0
DependentOption = AL_Dirt
GUIDescription = Intensity of colored dirt effect.

[OptionBool]
GUIName = Lens
OptionName = AL_Lens
DefaultValue = false
GUIDescription = Lens effect based on AL.

[OptionRangeFloat]
GUIName = Lens threshold
OptionName = alLensThresh
MinValue = 0.0
MaxValue = 1.0
StepAmount = 0.01
DefaultValue = 0.5
DependentOption = AL_Lens
GUIDescription = Reduces intensity of lens effect for not bright light.

[OptionRangeFloat]
GUIName = Lens Intensity
OptionName = alLensInt
MinValue = 0.0
MaxValue = 10.0
StepAmount = 0.01
DefaultValue = 2.0
DependentOption = AL_Lens
GUIDescription = Intensity of lens effect.

[Pass]
EntryPoint = PS_AL_DetectInt
Input0=ColorBuffer
Input0Filter=Linear
Input0Mode=Clamp
OutputScaleNative=0.0333333
[Pass]
EntryPoint = PS_AL_DetectLow
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScaleNative=0.00833
[Pass]
EntryPoint = PS_AL_DetectHigh
Input0=ColorBuffer
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_HGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_VGB
Input0=PreviousPass
Input0Filter=Linear
Input0Mode=Clamp
OutputScale=0.0625
[Pass]
EntryPoint = PS_AL_Magic
Input0=ColorBuffer
Input0Filter=Linear
Input0Mode=Clamp
Input1=PreviousPass
Input1Filter=Linear
Input1Mode=Clamp
Input2=Pass1
Input2Filter=Linear
Input2Mode=Clamp
Input3=Image
Input3Filter=Linear
Input3Mode=Clamp
Input3Source=Textures/LensDB.png
Input4=Image
Input4Filter=Linear
Input4Mode=Clamp
Input4Source=Textures/LensDB2.png
Input5=Image
Input5Filter=Linear
Input5Mode=Clamp
Input5Source=Textures/LensDOV.png
Input6=Image
Input6Filter=Linear
Input6Mode=Clamp
Input6Source=Textures/LensDUV.png
[/configuration]
*/

void PS_AL_DetectInt()
{
  SetOutput(Sample());
}
void PS_AL_DetectLow()
{
  float4 detectLow = float4(0.0, 0.0, 0.0, 0.0);

  for (float i = 0.0; i <= 1; i += 0.03125)
  {
    for (float j = 0.0; j <= 1; j += 0.03125)
    {
      detectLow.xyz += SampleLocation(float2(i, j)).xyz;
    }
  }
  detectLow.xyz /= 32 * 32;
  SetOutput(detectLow);
}

void PS_AL_DetectHigh()
{
  float4 x = Sample();
  x = float4(x.rgb * pow(abs(max(x.r, max(x.g, x.b))), 2.0), 1.0f);

  float base = (x.r + x.g + x.b); base /= 3;

  float nR = (x.r * 2) - base;
  float nG = (x.g * 2) - base;
  float nB = (x.b * 2) - base;

  if (nR < 0)
  {
    nG += nR / 2;
    nB += nR / 2;
    nR = 0;
  }
  if (nG < 0)
  {
    nB += nG / 2;
    if (nR > -nG / 2) nR += nG / 2; else nR = 0;
    nG = 0;
  }
  if (nB < 0)
  {
    if (nR > -nB / 2) nR += nB / 2; else nR = 0;
    if (nG > -nB / 2) nG += nB / 2; else nG = 0;
    nB = 0;
  }

  if (nR > 1)
  {
    nG += (nR - 1) / 2;
    nB += (nR - 1) / 2;
    nR = 1;
  }
  if (nG > 1)
  {
    nB += (nG - 1) / 2;
    if (nR + (nG - 1) < 1) nR += (nG - 1) / 2; else nR = 1;
    nG = 1;
  }
  if (nB > 1)
  {
    if (nR + (nB - 1) < 1) nR += (nB - 1) / 2; else nR = 1;
    if (nG + (nB - 1) < 1) nG += (nB - 1) / 2; else nG = 1;
    nB = 1;
  }
  x.r = nR; x.g = nG; x.b = nB;
  SetOutput(x);
}




void PS_AL_HGB()
{
  const float2 AL_t = sin((float2(1.0, 1.0) * GetTime()) / float2(62.8, 31.4)) * 6.28;
  const float2 GEMFX_PIXEL_SIZE = float2(1.0f, 1.0f) / (GetResolution() / 16.0);
  const float sampleOffsets[5] = { 0.0, 2.4347826, 4.3478260, 6.2608695, 8.1739130 };
  const float sampleWeights[5] = { 0.16818994, 0.27276957, 0.111690125, 0.024067905, 0.0021112196 };
  float2 texcoord = GetFragmentCoord();

  float4 hgb = SampleLocation(texcoord) * sampleWeights[0];
  hgb = float4(max(hgb.rgb - GetOption(alThreshold), 0.0), hgb.a);
  float stepMult = 1.08 + (AL_t.x / 100) * 0.02;

  if ((texcoord.x + sampleOffsets[1] * GEMFX_PIXEL_SIZE.x) < 1.05)
    hgb += SampleLocation(texcoord + float2(sampleOffsets[1] * GEMFX_PIXEL_SIZE.x, 0.0)) * sampleWeights[1] * stepMult;
  if ((texcoord.x - sampleOffsets[1] * GEMFX_PIXEL_SIZE.x) > -0.05)
    hgb += SampleLocation(texcoord - float2(sampleOffsets[1] * GEMFX_PIXEL_SIZE.x, 0.0)) * sampleWeights[1] * stepMult;

  if ((texcoord.x + sampleOffsets[2] * GEMFX_PIXEL_SIZE.x) < 1.05)
    hgb += SampleLocation(texcoord + float2(sampleOffsets[2] * GEMFX_PIXEL_SIZE.x, 0.0)) * sampleWeights[2] * stepMult;
  if ((texcoord.x - sampleOffsets[2] * GEMFX_PIXEL_SIZE.x) > -0.05)
    hgb += SampleLocation(texcoord - float2(sampleOffsets[2] * GEMFX_PIXEL_SIZE.x, 0.0)) * sampleWeights[2] * stepMult;

  if ((texcoord.x + sampleOffsets[3] * GEMFX_PIXEL_SIZE.x) < 1.05)
    hgb += SampleLocation(texcoord + float2(sampleOffsets[3] * GEMFX_PIXEL_SIZE.x, 0.0)) * sampleWeights[3] * stepMult;
  if ((texcoord.x - sampleOffsets[3] * GEMFX_PIXEL_SIZE.x) > -0.05)
    hgb += SampleLocation(texcoord - float2(sampleOffsets[3] * GEMFX_PIXEL_SIZE.x, 0.0)) * sampleWeights[3] * stepMult;

  if ((texcoord.x + sampleOffsets[4] * GEMFX_PIXEL_SIZE.x) < 1.05)
    hgb += SampleLocation(texcoord + float2(sampleOffsets[4] * GEMFX_PIXEL_SIZE.x, 0.0)) * sampleWeights[4] * stepMult;
  if ((texcoord.x - sampleOffsets[4] * GEMFX_PIXEL_SIZE.x) > -0.05)
    hgb += SampleLocation(texcoord - float2(sampleOffsets[4] * GEMFX_PIXEL_SIZE.x, 0.0)) * sampleWeights[4] * stepMult;
  SetOutput(hgb);
}

void PS_AL_VGB()
{
  const float2 AL_t = sin((float2(1.0, 1.0) * GetTime()) / float2(62.8, 31.4)) * 6.28;
  const float2 GEMFX_PIXEL_SIZE = float2(1.0f, 1.0f) / (GetResolution() / 16.0);
  const float sampleOffsets[5] = { 0.0, 2.4347826, 4.3478260, 6.2608695, 8.1739130 };
  const float sampleWeights[5] = { 0.16818994, 0.27276957, 0.111690125, 0.024067905, 0.0021112196 };
  float2 texcoord = GetFragmentCoord();
  float4 vgb = SampleLocation(texcoord) * sampleWeights[0];
  vgb = float4(max(vgb.rgb - GetOption(alThreshold), 0.0), vgb.a);
  float stepMult = 1.08 + (AL_t.x / 100) * 0.02;

  if ((texcoord.y + sampleOffsets[1] * GEMFX_PIXEL_SIZE.y) < 1.05)
    vgb += SampleLocation(texcoord + float2(0.0, sampleOffsets[1] * GEMFX_PIXEL_SIZE.y)) * sampleWeights[1] * stepMult;
  if ((texcoord.y - sampleOffsets[1] * GEMFX_PIXEL_SIZE.y) > -0.05)
    vgb += SampleLocation(texcoord - float2(0.0, sampleOffsets[1] * GEMFX_PIXEL_SIZE.y)) * sampleWeights[1] * stepMult;

  if ((texcoord.y + sampleOffsets[2] * GEMFX_PIXEL_SIZE.y) < 1.05)
    vgb += SampleLocation(texcoord + float2(0.0, sampleOffsets[2] * GEMFX_PIXEL_SIZE.y)) * sampleWeights[2] * stepMult;
  if ((texcoord.y - sampleOffsets[2] * GEMFX_PIXEL_SIZE.y) > -0.05)
    vgb += SampleLocation(texcoord - float2(0.0, sampleOffsets[2] * GEMFX_PIXEL_SIZE.y)) * sampleWeights[2] * stepMult;

  if ((texcoord.y + sampleOffsets[3] * GEMFX_PIXEL_SIZE.y) < 1.05)
    vgb += SampleLocation(texcoord + float2(0.0, sampleOffsets[3] * GEMFX_PIXEL_SIZE.y)) * sampleWeights[3] * stepMult;
  if ((texcoord.y - sampleOffsets[3] * GEMFX_PIXEL_SIZE.y) > -0.05)
    vgb += SampleLocation(texcoord - float2(0.0, sampleOffsets[3] * GEMFX_PIXEL_SIZE.y)) * sampleWeights[3] * stepMult;

  if ((texcoord.y + sampleOffsets[4] * GEMFX_PIXEL_SIZE.y) < 1.05)
    vgb += SampleLocation(texcoord + float2(0.0, sampleOffsets[4] * GEMFX_PIXEL_SIZE.y)) * sampleWeights[4] * stepMult;
  if ((texcoord.y - sampleOffsets[4] * GEMFX_PIXEL_SIZE.y) > -0.05)
    vgb += SampleLocation(texcoord - float2(0.0, sampleOffsets[4] * GEMFX_PIXEL_SIZE.y)) * sampleWeights[4] * stepMult;
  SetOutput(vgb);
}

void PS_AL_Magic()
{
  float2 texcoord = GetFragmentCoord();
  float4 base = SampleInput(0);
  float4 high = SampleInput(1);
  float adapt = 0.0;

  if (OptionEnabled(AL_Adaptation))
  {
    //DetectLow
    float4 detectLow = SampleInputLocation(2, float2(0.5, 0.5)) / 4.215;
    float low = sqrt(0.241 * detectLow.r * detectLow.r + 0.691 * detectLow.g * detectLow.g + 0.068 * detectLow.b * detectLow.b);
    //.DetectLow

    low = pow(low * 1.25f, 2);
    adapt = low * (low + 1.0f) * GetOption(alAdapt) * GetOption(alInt) * 5.0f;
  }

  high = min(float4(0.0325f, 0.0325f, 0.0325f, 0.0325f), high) * 1.15f;
  float4 highOrig = high;

  float2 flipcoord = float2(1.0f, 1.0f) - texcoord;
  float4 highFlipOrig = SampleInputLocation(1, flipcoord);
  highFlipOrig = min(float4(0.03f, 0.03f, 0.03f, 0.03f), highFlipOrig) * 1.15f;

  float4 highFlip = highFlipOrig;
  float4 highLensSrc = high;
  /*
  if (OptionEnabled(AL_Dirt))
  {
    float4 dirt = tex2D(dirtSampler, texcoord);
    float4 dirtOVR = tex2D(dirtOVRSampler, texcoord);
    float4 dirtOVB = tex2D(dirtOVBSampler, texcoord);

    float maxhigh = max(high.r, max(high.g, high.b));
    float threshDiff = maxhigh - 3.2f;

    if (threshDiff > 0)
    {
      high.r = (high.r / maxhigh) * 3.2f;
      high.g = (high.g / maxhigh) * 3.2f;
      high.b = (high.b / maxhigh) * 3.2f;
    }

    float4 highDirt = OptionEnabled(AL_DirtTex) ? highOrig * dirt * alDirtInt : highOrig * high * alDirtInt;

    if (AL_Vibrance)
    {
      float2 AL_t = sin((float2(1.0,1.0) * GetTime()) / float2(62.8, 31.4)) * 6.28;
      highDirt *= 1.0f + 0.5f * sin(AL_t.x);
    }

    float highMix = highOrig.r + highOrig.g + highOrig.b;
    float red = highOrig.r / highMix;
    float green = highOrig.g / highMix;
    float blue = highOrig.b / highMix;
    highOrig = highOrig + highDirt;

    if (GetOption(AL_Adaptive) == 2)
    {
      high = high + high * dirtOVR * alDirtOVInt * green;
      high = high + highDirt;
      high = high + highOrig * dirtOVB * alDirtOVInt * blue;
      high = high + highOrig * dirtOVR * alDirtOVInt* red;
    }
    else if (GetOption(AL_Adaptive) == 1)
    {
      high = high + highDirt;
      high = high + highOrig * dirtOVB * alDirtOVInt;
    }
    else
    {
      high = high + highDirt;
      high = high + highOrig * dirtOVR * alDirtOVInt;
    }

    highLensSrc = high * 85.0f * pow(1.25f - (abs(texcoord.x - 0.5f) + abs(texcoord.y - 0.5f)), 2);
  }
  */
  float origBright = max(highLensSrc.r, max(highLensSrc.g, highLensSrc.b));
  float maxOrig = max((1.8f * GetOption(alLensThresh)) - pow(origBright * (0.5f - abs(texcoord.x - 0.5f)), 4), 0.0f);
  float smartWeight = maxOrig * max(abs(flipcoord.x - 0.5f), 0.3f * abs(flipcoord.y - 0.5f)) * (2.2 - 1.2 * (abs(flipcoord.x - 0.5f))) * GetOption(alLensInt);
  smartWeight = min(0.85f, max(0, OptionEnabled(AL_Adaptation) ? smartWeight - adapt : smartWeight));

  if (OptionEnabled(AL_Lens))
  {
    float4 lensDB = SampleInput(3);
    float4 lensDB2 = SampleInput(4);
    float4 lensDOV = SampleInput(5);
    float4 lensDUV = SampleInput(6);
    float4 highLens = highFlip * lensDB * 0.7f * smartWeight;
    high += highLens;

    highLens = highFlipOrig * lensDUV * 1.15f * smartWeight;
    highFlipOrig += highLens;
    high += highLens;

    highLens = highFlipOrig * lensDB2 * 0.7f * smartWeight;
    highFlipOrig += highLens;
    high += highLens;

    highLens = highFlipOrig * lensDOV * 1.15f * smartWeight / 2.0f + highFlipOrig * smartWeight / 2.0f;
    highFlipOrig += highLens;
    high += highLens;
    
  }

  float dither = 0.15 * (1.0 / (pow(2, 10.0) - 1.0));
  dither = lerp(2.0 * dither, -2.0 * dither, frac(dot(texcoord, GetResolution() * float2(1.0 / 16.0, 10.0 / 36.0)) + 0.25));

  if (base.x == 1.0 && base.y == 1.0 && base.z == 1.0)
  {
    SetOutput(base);
  }
  else if (OptionEnabled(AL_Adaptation))
  {
    base.xyz *= max(0.0f, (1.0f - adapt * 0.75f * GetOption(alAdaptBaseMult) * pow(abs(1.0f - (base.x + base.y + base.z) / 3), GetOption(alAdaptBaseBlackLvL))));
    float4 highSampleMix = (1.0 - ((1.0 - base) * (1.0 - high * 1.0))) + dither;
    float4 baseSample = lerp(base, highSampleMix, max(0.0f, GetOption(alInt) - adapt));
    float baseSampleMix = baseSample.r + baseSample.g + baseSample.b;
    SetOutput(baseSampleMix > 0.008 ? baseSample : lerp(base, highSampleMix, max(0.0f, (GetOption(alInt) - adapt) * 0.85f) * baseSampleMix));
  }
  else
  {
    float4 highSampleMix = (1.0 - ((1.0 - base) * (1.0 - high * 1.0))) + dither + adapt;
    float4 baseSample = lerp(base, highSampleMix, GetOption(alInt));
    float baseSampleMix = baseSample.r + baseSample.g + baseSample.b;
    SetOutput(baseSampleMix > 0.008 ? baseSample : lerp(base, highSampleMix, max(0.0f, GetOption(alInt) * 0.85f) * baseSampleMix));
  }
}
