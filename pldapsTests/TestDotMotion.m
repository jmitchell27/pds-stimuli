function p = TestDotMotion(p)

p = pdsDefaultTrialStructure(p); 

stimuli.setupRandomSeed(p);

defaultColors(p);
p.trial.stimulus.eyeW=8;

p.defaultParameters.pldaps.trialFunction='dotmotion.dotTrial';

sn='stimulus';
%% Timing
 
% setup timing paramters
Params=struct();
Params.preTrial     = ceil(1*p.trial.display.frate);
Params.fixWait      = ceil(1*p.trial.display.frate);
Params.fixHold      = 10;
Params.preStim      = 50;
Params.targOnset    = ceil(.1*p.trial.display.frate);
Params.targHold     = 1;
Params.targDuration = inf;

% setup motion parameters
Params.nDirections=8;
Params.speeds=15;
Params.coherences=1;
Params.lifetime=5;
Params.maxRadius
% 
% 
% 
% motion1=struct('type',@stimuli.dots, ...
%     'dotSize', .3, ...
%     'speed', 15, ...
%     'direction', 0:10:360, ...
%     'coherence', 1, ...
%     'mode', 1, ...
%     'dist', 1, ...
%     'bandwidth', 10, ...
%     'lifetime', 5, ...
%     'maxRadius', 100, ...
%     'position', [0 0]);
% 
% % p.trial.(sn).motion1.
% 
% 
% % p.trial.(sn).
% d=stimuli.dots(p.trial.display.ptr, ...
%     'size', 5, ...
%     'speed', 5, ... 
%     'direction', 90, ...
%     'numDots', 30, ...
%     'coherence', .5, ...
%     'mode', 1, ...
%     'dist', 1, ...
%     'bandwdth', 50, ...
%     'lifetime', 5, ...
%     'maxRadius', 100, ...
%     'position', [500 500]);
% 
hFix=stimuli.fixation(p.trial.display.overlayptr, ...
    'centreSize', p.trial.(sn).fixdotW/2, ...
    'surroundSize', p.trial.(sn).fixdotW, ...
    'position', p.trial.display.ctr(1:2));
% 
% d.beforeTrial
% 
% 
% 
% %%
% 
% d.drawDots;
% f.drawFixation
% d.afterFrame;
% Screen('Flip', p.trial.display.ptr, 0);
% 
% d.moveDots;