deepnet=alexnet; % initializing the alexnet
%Save layer
ly=deepnet.Layers;
%Extract first layer
inlayer=ly(1);
insz=inlayer.InputSize;
outlayer=ly(end);
categorynames = outlayer.Classes;

