%%Calculates the average of each frames 'gradient' and then calculates the
%%average of the gradients to get the average of each frame. Remember to
%%change signal1 to signal2 for mCherry.
data = cellList.meshData
[~,framenumber] = size(data);
frameaveragelist = zeros(1,framenumber);
for frames = 1:framenumber
   [~,numbers] = size(cellList.meshData{1,frames});
   avgcellint = 0;
   nancount = 0;
   for cellnum = 1:numbers
       bazinga = mean(cellList.meshData{1,frames}{1,cellnum}.signal2,'omitnan');
       idx  = isnan(bazinga);
       if isnan(bazinga)
          nancount = nancount+1;
       end
       bazinga(idx,:) = [0,];
       avgcellint = avgcellint + bazinga;
   end
   frameaveragelist(1,frames)= avgcellint/(numbers-nancount);
   nancount = 0; 
end
frameaveragelist = frameaveragelist' 

%%Averages the 3 replicates averages.
n = 3; % average every n values
%%This only works for multiples of 3 image sets. 
%%Averages will get thrown off if not using multiples of 3.  
signalX = arrayfun(@(i) mean(frameaveragelist(i:i+n-1)),1:n:length(frameaveragelist)-n+1)'; % the averaged vector