function [newY, newFs] = adc(y, Fs)
%ADC Analog to Digital Converter
%   Sampling: 8Khz
%   Quantization: 8192 levels, k=13 bits/sample
%   Output: samples of 13 bits sampled at 8Khz

resampledFs = 8000;
[P, Q] = rat(resampledFs/Fs);
resampledY = resample(y, P, Q);

quantBits = 13;
quantT = linspace(min(resampledY), max(resampledY), 2^quantBits);
quantY = interp1(quantT, quantT, resampledY, 'nearest');

newY = quantY;
newFs = resampledFs;

end

