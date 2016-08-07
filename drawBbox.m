% function: draw bboxLTRB
function frame = drawBbox(frame, bbox)
rec(1,1)=bbox(1);     %four vertex of bbox
rec(1,2)=bbox(2);
rec(2,1)=bbox(3);
rec(2,2)=bbox(2);
rec(3,1)=bbox(3);
rec(3,2)=bbox(4);
rec(4,1)=bbox(1);
rec(4,2)=bbox(4);
for i=1:3
frame = insertShape(frame,'Line',[rec(i,1),rec(i,2),rec(i+1,1),rec(i+1,2)],'LineWidth', 2,'Color', {'red'} );
end
frame = insertShape(frame,'Line',[rec(1,1),rec(1,2),rec(4,1),rec(4,2)],'LineWidth', 2,'Color', {'red'} );

end