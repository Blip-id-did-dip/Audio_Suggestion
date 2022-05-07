function [source_out] = combine_audio(source1,source2)
%COMBINE_AUDIO Splices two small audio tracks together such that the
%resulting audio could be misconstrued as either source
%   Detailed version to be implimented
if nargin < 2
    recObj = audiorecorder;
    
    disp('Begin recording audio');
for k=3:-1:1
    disp(k)
    pause(1)
end
disp('go')
recordblocking(recObj,3);
source1 = getaudiodata(recObj);
disp('Record sample 2')
for k=3:-1:1
    disp(k)
    pause(1)
end
disp('go')
recordblocking(recObj,3);
source2 = getaudiodata(recObj);
end

source_out = zeros(24000,1);
for k=1:24000
    if mod(k,2)==1
        source_out(k) = source1(k);
    else
        source_out(k) = source2(k);
    end
end

end