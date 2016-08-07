% fuction: draw line chart with certain lineSpec, legend, gird, title, x/y-lable, text 
function drawLineChart()
prop=ones(6,17);
PPerror=0:0.005:0.08;
LineSpec={'r-s','b-o','c->','m-v','g-x', 'y-*'};
Legend={'Yang','Uricar','Xiao','Rajamanoharan','Wu','Baseline'};
category=2;
stage=3;
prop(1,:)=[0 0 0 0.21 2.79 6.67 10.41 12.91 14.25 15.06 15.66 16.05 16.30 16.51 16.62 16.76 16.78]./17.57;
prop(2,:)=[0 0 0 0 0.16 1.66 5.15 8.40 10.23 11.43 12.31 12.91 13.48 13.93 14.25 14.61 14.96]./17.57;
prop(3,:)=[0 0 0 0.67 3.81 7.41 10.37 12.45 13.69 14.43 15.03 15.28 15.52 15.63 15.73 15.84 15.84]./17.57;
prop(4,:)=[0 0 0 0.43 2.40 5.22 8.82 11.47 12.91 13.79 14.36 14.75 15.10 15.31 15.70 15.80 15.91]./17.57;
prop(5,:)=[0 0 0 0.21 1.55 4.97 8.50 10.80 12.17 13.05 13.62 13.97 14.22 14.50 14.61 14.71 14.78]./17.57;
prop(6,:)=[0 0 0 0.14 1.20 3.60 6.14 8.01 9.21 10.20 10.72 11.01 11.29 11.39 11.47 11.61 11.64]./17.57;
        
figure
for i=1:size(prop,1)
    plot(PPerror(:),prop(i,:),LineSpec{1,i});
%     text(PPerror(5),prop(i,5),' \leftarrow justTest', 'Color', 'red', 'fontsize', 8);
    hold on;
end
% axis([0 0.08 0 1.5]);  % [x_start x_end y_start y_end]
legend(Legend{1,:});
grid on;
title(['Cumulative Error Distribution s',num2str(stage),'-tc',num2str(category)]);
xlabel('Normalized Point-to-Point Error');
ylabel('Images Proportion');

end