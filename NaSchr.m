%%
% 
% Copyright (c) 2013 Codinfox(codinfox.me)
% 
% 
% Permission is hereby granted, free of charge, to any person obtaining a copy
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
% copies of the Software, and to permit persons to whom the Software is
% furnished to do so, subject to the following conditions:
% 
% The above copyright notice and this permission notice shall be included in
% all copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
% THE SOFTWARE.
% 


%%


clc
clear


%% CONSTANTS
RoadLen = 107;
vmax = 5;
SimTime = 1000;
GenCarPoss = 0.5;
Randomization = 0.3;
Pausetime = 0.1;


%% INITIALIZATION
CarNum = ceil(SimTime * (GenCarPoss + 0.1));
CSpace = zeros(1, RoadLen);
SpeedVec = zeros(1, CarNum);

CarID = 1;

%%
for i = 1 : SimTime
    DrawingCellSpace(CSpace); % Copyright of the function DrawingCellSpace belongs to BJTU.
    pause(Pausetime);
    
    dis = GetDistanceBetweenCars(CSpace);
    if (isempty(dis))
        [CSpace, CarID] = GenerateNewCar(CSpace, CarID, GenCarPoss);
        continue;
    end;
    ids = GetCarIDs(CSpace);
    vec = SpeedVec(ids);
    vRef = RefreshSpeed(vec, dis, vmax, Randomization);
    
    SpeedVec(ids) = vRef;
    CSpace = UpdatePos(vRef, CSpace);
    
    [CSpace, CarID] = GenerateNewCar(CSpace, CarID, GenCarPoss);
    
end

