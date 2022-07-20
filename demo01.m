clear all;  close all;  clc;
% ����˵����FCM�������ǳ�����
img = double(imread('brain_n.tif'));
clusterNum = 2;
[ Unow, center, now_obj_fcn ] = FCMforImage( img, clusterNum );
figure;
subplot(2,2,1); imshow(img,[]);
for i=1:clusterNum
    subplot(2,2,i+1);
    imshow(Unow(:,:,i),[]);
end