function c = iwantcolor(N, Nselect, testPlot)
% we got u covered
% Just some nice looking color sets.
% Many are hand-picked from https://medialab.github.io/iwanthue/
% Don't forget your 'blue, red' Matlab default pair,
% Or, the cooler 'k', 'r' one-two punch.
    if nargin < 2
        Nselect = [];
    end
    if nargin < 3 || isempty(testPlot)
        testPlot = false;
    end
    if ischar(N) % How are you feleeling?
        switch lower(N)
            case {'k', 'r', 'g', 'y', 'b', 'm', 'c', 'w'}
                c = bitget(find('krgybmcw'==N)-1,1:3);
                % https://stackoverflow.com/questions/4922383/how-can-i-convert-a-color-name-to-a-3-element-rgb-vector
            case 'green'
                c = [ 0.3020    0.6863    0.2902];
            case 'red'
                c = [0.8941    0.1020    0.1098];
            case 'goodbad'
                c = [iwantcolor('green'); iwantcolor('red')];
            case 'goodbadugly'
                c = [iwantcolor('goodbad'); 0 0 0];
            case 'gray'
                c = [128,128,128]./256;
            case 'colorblind'
               c = [111,172,93;...
                    105,126,213;...
                    188,125,57;...
                    147,80,161;...
                    185,70,99]./256;
            case 'light'
                c = [229,187,153;...
                    156,192,236;...
                    184,216,167;...
                    229,175,212;...
                    130,216,216]./256;
            case 'dark'
                c = [40,67,81;...
                    96,50,38;...
                    44,79,48;...
                    78,48,79;...
                    62,61,31]./256;
            case 'default'
                c = [101,135,205;...
                    203,79,66;...
                    74,172,141;...
                    201,132,67;...
                    198,92,138;...
                    163,97,199;...
                    154,150,63;...
                    100,172,72]./256;
            case {'matlabdefault', 'defaultmatlab'}
                c = [      0    0.4470    0.7410
                        0.8500    0.3250    0.0980
                        0.9290    0.6940    0.1250
                        0.4940    0.1840    0.5560
                        0.4660    0.6740    0.1880
                        0.3010    0.7450    0.9330
                        0.6350    0.0780    0.1840];% Meh
            case 'shades'
                c = [230,255,240;...
                    59,33,28;...
                    204,169,159;...
                    46,73,85;...
                    83,73,51]./256;
            case 'tarnish'
                c = [193,163,177;...
                    58,90,107;...
                    128,170,170;...
                    128,110,89;...
                    117,108,132]./256;
            case 'pastel'
                c = [142,181,147;...
                    194,174,227;...
                    255,243,201;...
                    164,234,255;...
                    255,185,200]./256;
            case 'pimp'
                c = [232,135,237;...
                    1,162,42;...
                    2,105,214;...
                    224,123,0;...
                    174,0,88]./256;
            case 'intense'
                c = [104,129,177;...
                    198,82,59;...
                    143,76,191;...
                    99,161,86;...
                    175,81,122;...
                    164,130,68]./256;
            case 'fluo'
                c = [1,213,249;...
                    165,255,39;...
                    255,205,89;...
                    113,255,191]./256;
            case 'all'
                c = [196,81,89;...
                    146,178,186;...
                    132,199,97;...
                    189,151,76;...
                    143,82,183;...
                    78,64,68]./256;
            case 'criticality'
                c = [    0.1211    0.4688    0.7031
                            0.8510    0.3725    0.0078
                            0.4588    0.4392    0.7020
                            0.9059    0.1608    0.5412
                            0.4000    0.6510    0.1176
                            0.9020    0.6706    0.0078];
            case 'starfishtoast'
                c = [49,174,203;... % A blue
                    222,69,42;... % A red
                    103,191,97;... % A green
                    136,111,202;... % A violet
                    203,90,151;... % A pink
                    237,195,54;... % A yellow
                    149,110,41;... % A brown
                    243,120,45]./256; % An orange
            case 'celldensitydreadd'
                c = iwantcolor('starfishtoast');
            case 'celldensity'
                c = iwantcolor('matlabdefault');
            otherwise
                error('Wrong')
        end
    else % A number, so pick a good set for N lines
        switch N
            case 1
                % What's your favourite color? I don't mind a green
                c = [103,191,97]./256;
            case 2
                c = [156,149,77;...
                     176,103,163]./256; % Apparently the best for two classes
            case 3
                c = [203,103,81;...
                    122,164,87;...
                    158,110,189]./256;
            case 4
                c = [201,109,68;...
                    119,122,205;...
                    122,164,86;...
                    198,89,153]./256;
            case 5
                c = [200,112,64;...
                    73,173,173;...
                    127,163,73;...
                    141,112,20;...
                    202,86,134]./256;
            case 6
                c = [203,95,70;...
                    91,169,98;...
                    173,151,62;...
                    102,144,206;...
                    200,89,144;...
                    149,101,202]./256;
            case 7
                c = [105,128,206;...
                    112,168,69;...
                    203,94,63;...
                    74,172,141;...
                    200,87,123;...
                    181,145,65;...
                    180,96,189]./256;
            case 8
                c = [105,128,206;...
                    112,168,69;...
                    203,94,63;...
                    74,172,141;...
                    200,87,123;...
                    181,145,65;...
                    180,96,189]./256;
            case 9
                c = [127,207,87;...
                    155,77,194;...
                    79,50,94;...
                    214,81,91;...
                    160,152,196;...
                    206,176,82;...
                    141,203,177;...
                    139,79,62;...
                    77,99,62]./256;
            otherwise
                c = iwantcolor('default');
        end
    end
    if ~isempty(Nselect)
        c = repmat(c, 100, 1);
        c = c(1:Nselect, :);
    end
    
    if testPlot
        hold on
        x = 0:0.01:1;
        for n = 1:10
            plot(x, x.^n, '-', 'Color', c(n, :), 'LineWidth', 3)
        end
        hold off
    end
end
