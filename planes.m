%   Burak Tekin
%   Contact: iletisim@buraktekin.net
%   Department of Computer Science
%   Created: 31 October 2013


function f = planes(img_path)
%   Planes: will show the original image and all the eight 1-bit planes.
%   f(x,y)=greylevel,
%   8-bit image 'Lena.jpg' considered as being compose of eight 1-bit
%   planes with the plane that is the lowest-order bit, and plane 8 the
%   highest-order bit.

%   From lowest-order bit to highest-order bit (1 to 8);
Image = imread(img_path);
information = imfinfo(img_path);
bitdepth = information.BitDepth;

figure(1)
for i = 1:bitdepth
    %   generate planes...
    subplot(2,4,i);
    B = bitget(Image, i); 
    h = imshow(logical(B), 'InitialMag',100, 'Border','tight');
    title(num2str(i));
    set(h);
end
%   display the original one.
imshow(Image, 'Border', 'tight');

end

