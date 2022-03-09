%Reading the file and creating images frame by frame
v = VideoReader('YOUR FILE LOCATION'); 

for img = 1:v.NumberOfFrames;
    filename=strcat('frame',num2str(img),'.jpg');
    b = read(v, img);
    imwrite(b,filename);
end

%Displaying the image one by one in forward order
for i = 1:img;
    forwardfilename=strcat('frame',num2str(i),'.jpg');
    imshow(forwardfilename,'InitialMagnification',40); %I choose 40 because it worked perfectly for my video size you can choose what fits you
end

%Displaying the image one by one in reverse order
for j = img:-1:1;
    reversefilename=strcat('frame',num2str(j),'.jpg');
    imshow(reversefilename,'InitialMagnification',40);
end
