[inputY, inputFs] = audioread('firstcall.wav');
[digitalY, digitalFs] = adc(inputY, inputFs);

% subplot(2,1,1)
% plot((0:length(inputY)-1)/inputFs, inputY)
% 
% subplot(2,1,2)
% plot((0:length(digitalY)-1)/digitalFs, digitalY)

% inputPlayer = audioplayer(inputY, inputFs);
% play(inputPlayer)

% digitalPlayer = audioplayer(digitalY, digitalFs);
% play(digitalPlayer)

speechY = lpcvocod(digitalY);

