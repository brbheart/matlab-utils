% function: draw shape on the image(two methods)
% shape: n*2
function img = drawShape(img, shape)
img = insertShape(img, 'FilledCircle', [shape(:, 1), shape(:, 2), 3], 'Color', {'green'});
hold on
text(shape(:,1), shape(:, 2), num2str(k), 'Color', 'red', 'fontsize', 8);
hold off

% imshow(img);
% hold on;
% plot(shape(:, 1), shape(:, 2), 'w*');
end