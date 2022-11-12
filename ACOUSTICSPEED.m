clc
clear all;
close all;
T=30;
% S=30;
% temp_C
% function sspeed = salt_water_c(temp_C, depth, sal);
% %   Calculate sound speed [m/s] in sea water as function of temperature
% %   [degree C], depth [meter], and salinity in parts per thousand [ppt] 
% %   using nine-term Mackenzie equation that yelds standard error of sound 
% %   speed estimate =0.070m/s.  For near surface depth, typical values of salinity 
% %   are in the range from 30 to 40 ppt (at t=0-30C).  Examples of calculations: 
% %   1511.2= salt_water_c(17, 1, 33.6); 
% %   1482.3 = salt_water_c(3.51, 1200, 33.51);
% %
% %
% sspeed  = 1448.96 + 4.591 .* temp_C - 5.304 *10^-2 .* temp_C .^2 + 2.374*10^-4 .* temp_C .^3 ...
%     +1.340 .* (sal-35) + 1.630 *10^-2 .* depth + 1.675 *10^-7 .* depth .^2 ...
%     -1.025*10^-2 .* temp_C .* (sal-35) - 7.139 *10^-13 .* temp_C .*depth .^3; 
%     
%     return
d=[];
q=[];
r=[];
for z=100:1000:8000; 
%     for T=0:1:30
        for S=30:0.5:37
            c = 1448.96 + 4.591*T - 5.304e-2*T.^2 + 2.374e-4*T.^3 + 1.340*(S - 35) + 1.630e-2*z + 1.675e-7*z.^2 - 1.025e-2*(S - 35) - 7.139e-13*T.*z.^3;
        d=[d c];
        end
%     end
      q=[q;d];
      d=[];;% C=1448.96+4.591*T-0.05304*T^2+0.0002374*T^3+1.340*(S-35)+0.0163*Z+1.675*10^-7*Z^2-0.01025*T*(S-35)-7.139*10^-13*T*Z^3end
end
