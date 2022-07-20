% Access the trained model 
net = alexnet;
% See details of the architecture 
net.Layers ;
% Read the image to classify 
[query_fname, query_pathname] = uigetfile('*.jpg; *.png; *.bmp', 'Select query image');
I = imread(query_fname); 
% Adjust size of the image 
sz = net.Layers(1).InputSize;
I = I(1:sz(1),1:sz(2),1:sz(3)); 
% Classify the image using AlexNet 
label = classify(net, I) 
% Show the image and the classification results 
figure 
imshow(I) 
text(10,20,char(label),'Color','red')