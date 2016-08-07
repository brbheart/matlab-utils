function videoReadWrite(src_path, dst_path)
vin = VideoReader(src_path);
% vout = vision.VideoFileWriter(dst_path, 'FrameRate', vin.FrameRate);
% num_frames = vin.NumberOfFrames;
% for i = 1:num_frames
%     frame = read(vin, i);
%     frame = insertShape(frame,'Line',[10, 10, 100, 100],'LineWidth', 2,'Color', {'green'} );   %just test.
%     step(vout, frame);
% end
% release(vout);
vout = VideoWriter(dst_path);
vout.FrameRate = vin.FrameRate;
open(vout);
num_frames = vin.NumberOfFrames;
for i = 1:num_frames
    frame = read(vin, i);
    frame = insertShape(frame,'Line',[10, 10, 100, 100],'LineWidth', 2,'Color', {'green'} );   %just test.
    writeVideo(vout, frame);
end
close(vout);