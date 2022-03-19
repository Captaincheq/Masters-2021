clc;
clear all;
close all;

%picking the images of all formats from both files

palm='C:\Users\Alec\Documents\GitHub\Masters-2021\Advanced Communication Coding\Assignments\Assignment-1';
h_images0=dir(fullfile(palm,'*.jpg'));
total_h0_images=length(h_images0);

for i=1:total_h0_images
    i_names=fullfile(palm,h_images0(i).name);
    i_read=imread(i_names); %reading all corona images
    iread{i}=i_read;
    %i_gray{i}=rgb2gray(iread{i});
    i_binary{i}=im2bw(iread{i});
    i_resize{i}=imresize(i_binary{i},[256 256]); %resizing images to a size 256x256
    %figure, imshow(i_resize)
    J1{i} = imfill(i_resize{i},'holes'); %adding whtite space in hand
    i_resize{i} = imerode(J1{i},strel('disk',1)); %refine edges 
%     imshow(j_resize);
    Glcm{i} = graycomatrix(i_resize{i}); %creating gray-level co-occurrence matrix from images
    Glcm_stats(i) = graycoprops(Glcm{i}); %properties of gray-level co-occurrence matrix
    Contrast(i)=Glcm_stats(i).Contrast; %contrast of grayscale image
  
    Mean_i(i) = mean(mean(i_resize{i})); %mean
    entro(i)= entropy(i_resize{i}); %entropy
end