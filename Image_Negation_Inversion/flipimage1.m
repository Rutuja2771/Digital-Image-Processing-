i = imread('strawberries.jpg');
neg=255-i;
neg=i;
for row=1:size(i,1)
 for col=1:size(i,2)
  neg(row,col,:)=255-i(row,col,:);
 end
end
subplot (131)
imshow (i)
title ("original image")
subplot (132)
imshow (neg)
title ("negative image")
[x, y, z] = size(i);
for plane = 1 : z
   len = x;
   for j = 1 : x
     for k = 1 : y
       if j < x/2
         temp = i(j, k, plane);
         i(j, k, plane) = i(len, k, plane);
         i(len, k, plane) = temp;
       end
     end
     len = len - 1;
   end
end
subplot (133)
imshow(i);
title('Vertically flipped image');