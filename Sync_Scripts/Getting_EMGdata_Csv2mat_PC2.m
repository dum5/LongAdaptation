
function Getting_EMGdata_Csv2mat_PC2(dir, trials)
%% Import data from text file
% Script for importing data from the following text file:
%
%    filename: C:\Users\dum5\OneDrive - University of Pittsburgh\aResearch_Studies\Young_LongAdaptation\YL01\PC2\YL01_Trial01\YL01_Trial01_Plot_and_Store_Rep_2.4.csv
%
% Auto-generated by MATLAB on 20-Jan-2021 10:26:54

%% Setup the Import Options
opts = delimitedTextImportOptions("NumVariables", 128);

opts.VariableNames = ["Var1", "Trignosensor1EMG1", "Var3", "Trignosensor1Acc1X", "Var5", "Trignosensor1Acc1Y", "Var7", "Trignosensor1Acc1Z", "Var9", "Trignosensor2EMG2", "Var11", "Trignosensor2Acc2X", "Var13", "Trignosensor2Acc2Y", "Var15", "Trignosensor2Acc2Z", "Var17", "Trignosensor3EMG3", "Var19", "Trignosensor3Acc3X", "Var21", "Trignosensor3Acc3Y", "Var23", "Trignosensor3Acc3Z", "Var25", "Trignosensor4EMG4", "Var27", "Trignosensor4Acc4X", "Var29", "Trignosensor4Acc4Y", "Var31", "Trignosensor4Acc4Z", "Var33", "Trignosensor5EMG5", "Var35", "Trignosensor5Acc5X", "Var37", "Trignosensor5Acc5Y", "Var39", "Trignosensor5Acc5Z", "Var41", "TrignoFlexsensor6EMG6", "Var43", "Avantisensor7EMG7", "Var45", "Avantisensor7ACCX7", "Var47", "Avantisensor7ACCY7", "Var49", "Avantisensor7ACCZ7", "Var51", "Avantisensor7GYROX7", "Var53", "Avantisensor7GYROY7", "Var55", "Avantisensor7GYROZ7", "Var57", "Trignosensor8EMG8", "Var59", "Trignosensor8Acc8X", "Var61", "Trignosensor8Acc8Y", "Var63", "Trignosensor8Acc8Z", "Var65", "Trignosensor9EMG9", "Var67", "Trignosensor9Acc9X", "Var69", "Trignosensor9Acc9Y", "Var71", "Trignosensor9Acc9Z", "Var73", "Trignosensor10EMG10", "Var75", "Trignosensor10Acc10X", "Var77", "Trignosensor10Acc10Y", "Var79", "Trignosensor10Acc10Z", "Var81", "Trignosensor11EMG11", "Var83", "Trignosensor11Acc11X", "Var85", "Trignosensor11Acc11Y", "Var87", "Trignosensor11Acc11Z", "Var89", "Trignosensor12EMG12", "Var91", "Trignosensor12Acc12X", "Var93", "Trignosensor12Acc12Y", "Var95", "Trignosensor12Acc12Z", "Var97", "Trignosensor13EMG13", "Var99", "Trignosensor13Acc13X", "Var101", "Trignosensor13Acc13Y", "Var103", "Trignosensor13Acc13Z", "Var105", "Trignosensor14EMG14", "Var107", "Trignosensor14Acc14X", "Var109", "Trignosensor14Acc14Y", "Var111", "Trignosensor14Acc14Z", "Var113", "Trignosensor15EMG15", "Var115", "Trignosensor15Acc15X", "Var117", "Trignosensor15Acc15Y", "Var119", "Trignosensor15Acc15Z", "Var121", "TrignoAnalogInputAdapter16Analog16A", "Var123", "TrignoAnalogInputAdapter16Analog16B", "Var125", "TrignoAnalogInputAdapter16Analog16C", "Var127", "TrignoAnalogInputAdapter16Analog16D"];
opts.SelectedVariableNames = ["Trignosensor1EMG1", "Trignosensor1Acc1X", "Trignosensor1Acc1Y", "Trignosensor1Acc1Z", "Trignosensor2EMG2", "Trignosensor2Acc2X", "Trignosensor2Acc2Y", "Trignosensor2Acc2Z", "Trignosensor3EMG3", "Trignosensor3Acc3X", "Trignosensor3Acc3Y", "Trignosensor3Acc3Z", "Trignosensor4EMG4", "Trignosensor4Acc4X", "Trignosensor4Acc4Y", "Trignosensor4Acc4Z", "Trignosensor5EMG5", "Trignosensor5Acc5X", "Trignosensor5Acc5Y", "Trignosensor5Acc5Z", "TrignoFlexsensor6EMG6", "Avantisensor7EMG7", "Avantisensor7ACCX7", "Avantisensor7ACCY7", "Avantisensor7ACCZ7", "Avantisensor7GYROX7", "Avantisensor7GYROY7", "Avantisensor7GYROZ7", "Trignosensor8EMG8", "Trignosensor8Acc8X", "Trignosensor8Acc8Y", "Trignosensor8Acc8Z", "Trignosensor9EMG9", "Trignosensor9Acc9X", "Trignosensor9Acc9Y", "Trignosensor9Acc9Z", "Trignosensor10EMG10", "Trignosensor10Acc10X", "Trignosensor10Acc10Y", "Trignosensor10Acc10Z", "Trignosensor11EMG11", "Trignosensor11Acc11X", "Trignosensor11Acc11Y", "Trignosensor11Acc11Z", "Trignosensor12EMG12", "Trignosensor12Acc12X", "Trignosensor12Acc12Y", "Trignosensor12Acc12Z", "Trignosensor13EMG13", "Trignosensor13Acc13X", "Trignosensor13Acc13Y", "Trignosensor13Acc13Z", "Trignosensor14EMG14", "Trignosensor14Acc14X", "Trignosensor14Acc14Y", "Trignosensor14Acc14Z", "Trignosensor15EMG15", "Trignosensor15Acc15X", "Trignosensor15Acc15Y", "Trignosensor15Acc15Z", "TrignoAnalogInputAdapter16Analog16A", "TrignoAnalogInputAdapter16Analog16B", "TrignoAnalogInputAdapter16Analog16C", "TrignoAnalogInputAdapter16Analog16D"];
opts.VariableTypes = ["string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double"];
opts = setvaropts(opts, [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99, 101, 103, 105, 107, 109, 111, 113, 115, 117, 119, 121, 123, 125, 127], "WhitespaceRule", "preserve");
opts = setvaropts(opts, [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99, 101, 103, 105, 107, 109, 111, 113, 115, 117, 119, 121, 123, 125, 127], "EmptyFieldRule", "auto");
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.Delimiter = ",";

% dir='Y:\Dulce\R01_Nimbus2021\VROG_02\PC2';
cd(dir)

idx=0;
for t=trials
    idx=idx+1;
    
    l=0;
    
    if t<10
        Data= readtable([dir,'\Trial0',num2str(t),'.csv'], opts);
    else
        Data= readtable([dir,'\Trial',num2str(t),'.csv'], opts);
    end
    tend=height(Data);
    for i=2:600000:tend
        % Specify range and delimiter
        l=l+1;
        
        
        range=i:600000+i;
        
        if range(end)<tend
            data=Data(i:600000+i ,:);
        else
            data=Data(i:end,:);
        end
        
        EMGdata = table2array(data);
        if t<10
            save(['EMG_Trial0',num2str(t),'_' num2str(l),'.mat'], 'EMGdata')
        else
            save(['EMG_Trial',num2str(t),'_' num2str(l),'.mat'], 'EMGdata')
        end
        
    end
end
%% Clear temporary variables
clear opts
end