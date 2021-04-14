%% Import data from text file
% Script for importing data from the following text file:

% Auto-generated by MATLAB on 19-Jan-2021 16:51:28

%% Setup the Import Options
opts = delimitedTextImportOptions("NumVariables", 128);
% Specify column names and types
opts.VariableNames = ["Var1", "Avantisensor1EMG1", "Var3", "Avantisensor1ACCX1", "Var5", "Avantisensor1ACCY1", "Var7", "Avantisensor1ACCZ1", "Var9", "Avantisensor2EMG2", "Var11", "Avantisensor2ACCX2", "Var13", "Avantisensor2ACCY2", "Var15", "Avantisensor2ACCZ2", "Var17", "Trignosensor3EMG3", "Var19", "Trignosensor3Acc3X", "Var21", "Trignosensor3Acc3Y", "Var23", "Trignosensor3Acc3Z", "Var25", "Trignosensor4EMG4", "Var27", "Trignosensor4Acc4X", "Var29", "Trignosensor4Acc4Y", "Var31", "Trignosensor4Acc4Z", "Var33", "Trignosensor5EMG5", "Var35", "Trignosensor5Acc5X", "Var37", "Trignosensor5Acc5Y", "Var39", "Trignosensor5Acc5Z", "Var41", "Avantisensor6EMG6", "Var43", "Avantisensor6ACCX6", "Var45", "Avantisensor6ACCY6", "Var47", "Avantisensor6ACCZ6", "Var49", "Avantisensor7EMG7", "Var51", "Avantisensor7ACCX7", "Var53", "Avantisensor7ACCY7", "Var55", "Avantisensor7ACCZ7", "Var57", "Trignosensor8EMG8", "Var59", "Trignosensor8Acc8X", "Var61", "Trignosensor8Acc8Y", "Var63", "Trignosensor8Acc8Z", "Var65", "Trignosensor9EMG9", "Var67", "Trignosensor9Acc9X", "Var69", "Trignosensor9Acc9Y", "Var71", "Trignosensor9Acc9Z", "Var73", "Avantisensor10EMG10", "Var75", "Avantisensor10ACCX10", "Var77", "Avantisensor10ACCY10", "Var79", "Avantisensor10ACCZ10", "Var81", "Trignosensor11EMG11", "Var83", "Trignosensor11Acc11X", "Var85", "Trignosensor11Acc11Y", "Var87", "Trignosensor11Acc11Z", "Var89", "Trignosensor12EMG12", "Var91", "Trignosensor12Acc12X", "Var93", "Trignosensor12Acc12Y", "Var95", "Trignosensor12Acc12Z", "Var97", "Trignosensor13EMG13", "Var99", "Trignosensor13Acc13X", "Var101", "Trignosensor13Acc13Y", "Var103", "Trignosensor13Acc13Z", "Var105", "Trignosensor14EMG14", "Var107", "Trignosensor14Acc14X", "Var109", "Trignosensor14Acc14Y", "Var111", "Trignosensor14Acc14Z", "Var113", "Trignosensor15EMG15", "Var115", "Trignosensor15Acc15X", "Var117", "Trignosensor15Acc15Y", "Var119", "Trignosensor15Acc15Z", "Var121", "TrignoAnalogInputAdapter16Analog16A", "Var123", "TrignoAnalogInputAdapter16Analog16B", "Var125", "TrignoAnalogInputAdapter16Analog16C", "Var127", "TrignoAnalogInputAdapter16Analog16D"];
opts.SelectedVariableNames = ["Avantisensor1EMG1", "Avantisensor1ACCX1", "Avantisensor1ACCY1", "Avantisensor1ACCZ1", "Avantisensor2EMG2", "Avantisensor2ACCX2", "Avantisensor2ACCY2", "Avantisensor2ACCZ2", "Trignosensor3EMG3", "Trignosensor3Acc3X", "Trignosensor3Acc3Y", "Trignosensor3Acc3Z", "Trignosensor4EMG4", "Trignosensor4Acc4X", "Trignosensor4Acc4Y", "Trignosensor4Acc4Z", "Trignosensor5EMG5", "Trignosensor5Acc5X", "Trignosensor5Acc5Y", "Trignosensor5Acc5Z", "Avantisensor6EMG6", "Avantisensor6ACCX6", "Avantisensor6ACCY6", "Avantisensor6ACCZ6", "Avantisensor7EMG7", "Avantisensor7ACCX7", "Avantisensor7ACCY7", "Avantisensor7ACCZ7", "Trignosensor8EMG8", "Trignosensor8Acc8X", "Trignosensor8Acc8Y", "Trignosensor8Acc8Z", "Trignosensor9EMG9", "Trignosensor9Acc9X", "Trignosensor9Acc9Y", "Trignosensor9Acc9Z", "Avantisensor10EMG10", "Avantisensor10ACCX10", "Avantisensor10ACCY10", "Avantisensor10ACCZ10", "Trignosensor11EMG11", "Trignosensor11Acc11X", "Trignosensor11Acc11Y", "Trignosensor11Acc11Z", "Trignosensor12EMG12", "Trignosensor12Acc12X", "Trignosensor12Acc12Y", "Trignosensor12Acc12Z", "Trignosensor13EMG13", "Trignosensor13Acc13X", "Trignosensor13Acc13Y", "Trignosensor13Acc13Z", "Trignosensor14EMG14", "Trignosensor14Acc14X", "Trignosensor14Acc14Y", "Trignosensor14Acc14Z", "Trignosensor15EMG15", "Trignosensor15Acc15X", "Trignosensor15Acc15Y", "Trignosensor15Acc15Z", "TrignoAnalogInputAdapter16Analog16A", "TrignoAnalogInputAdapter16Analog16B", "TrignoAnalogInputAdapter16Analog16C", "TrignoAnalogInputAdapter16Analog16D"];
opts.VariableTypes = ["string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double", "string", "double"];
opts = setvaropts(opts, [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99, 101, 103, 105, 107, 109, 111, 113, 115, 117, 119, 121, 123, 125, 127], "WhitespaceRule", "preserve");
opts = setvaropts(opts, [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39, 41, 43, 45, 47, 49, 51, 53, 55, 57, 59, 61, 63, 65, 67, 69, 71, 73, 75, 77, 79, 81, 83, 85, 87, 89, 91, 93, 95, 97, 99, 101, 103, 105, 107, 109, 111, 113, 115, 117, 119, 121, 123, 125, 127], "EmptyFieldRule", "auto");
opts.ExtraColumnsRule = "ignore";
opts.EmptyLineRule = "read";
opts.Delimiter = ",";

cd('Y:\Dulce\R01_Nimbus2021\NimG_Boyan\EMG\Session 2\PC1\Rename')
idx=0;
for t=[1:9 13:17]
    %     idx=idx+1;
    %     tend=[ 319001,246001,271001,5711001,1075001,539001];
    l=0;
    if t<10
%         EMGdata= readtable(['C:\Users\dum5\OneDrive - University of Pittsburgh\aResearch_Studies\Young_LongAdaptation\YL03\PC1\Trial0',num2str(t),'.csv'], opts);
            EMGdata= readtable(['Y:\Dulce\R01_Nimbus2021\NimG_Boyan\EMG\Session 2\PC1\Rename\Trial0',num2str(t),'.csv'], opts);
        % Convert to output type
    else
        EMGdata= readtable(['Y:\Dulce\R01_Nimbus2021\NimG_Boyan\EMG\Session 2\PC1\Rename\Trial',num2str(t),'.csv'], opts);
%         EMGdata= readtable(['C:\Users\dum5\OneDrive - University of Pittsburgh\aResearch_Studies\Young_LongAdaptation\YL03\PC1\Trial',num2str(t),'.csv'], opts);
        
        %             EMGdata= readtable("C:\Users\dum5\OneDrive - University of Pittsburgh\aResearch_Studies\Young_LongAdaptation\YL02\PC2\Rename\Trial09.csv", opts);
        
    end
    tend=height(EMGdata);
    for i=2:600000:tend %4874001 %164001
        % Specify range and delimiter
        l=l+1;
%         opts.DataLines = [i, 600000+i];
%         opts.Delimiter = ",";
        
        
        % Import the data
        % EMGdata= readtable("Z:\Users\Dulce\Nexus\EMG05\PC2\EMG05\Long_Trigger__Rep_1.0.csv", opts);
        %         if t<10
        %             EMGdata= readtable(['C:\Users\dum5\OneDrive - University of Pittsburgh\aResearch_Studies\Young_LongAdaptation\YL03\PC1\Trial0',num2str(t),'.csv'], opts);
        %             % Convert to output type
        %         else
        %             EMGdata= readtable(['C:\Users\dum5\OneDrive - University of Pittsburgh\aResearch_Studies\Young_LongAdaptation\YL03\PC1\Trial',num2str(t),'.csv'], opts);
        %
        %             %             EMGdata= readtable("C:\Users\dum5\OneDrive - University of Pittsburgh\aResearch_Studies\Young_LongAdaptation\YL02\PC2\Rename\Trial09.csv", opts);
        %
        %         end
        range=i:600000+i;
        
        if range(end)<tend
            data=EMGdata(i:600000+i ,:);
        else
            data=EMGdata(i:end,:);
        end
        
        EMGdata2 = table2array(data);
        
        if t<10
            save(['EMG_Trial0',num2str(t),'_' num2str(l),'.mat'], 'EMGdata2')
        else
            save(['EMG_Trial',num2str(t),'_' num2str(l),'.mat'], 'EMGdata2')
        end
        
    end
end

%% Clear temporary variables
clear opts