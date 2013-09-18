% Generate new cars
function [CSpace, CarID] = GenerateNewCar(CSpace, CarID_current, poss)
[addID, CarID] = Gen(CSpace, CarID_current, poss);
if addID ~= 0
    CSpace(1) = addID;
end;
end

function [out,CarID_new] = Gen(CSpace, CarID_current, poss)
out = 0;
CarID_new = CarID_current;
if (isSatisfy(CSpace) && rand < poss)
    out = CarID_current;
    CarID_new = CarID_current + 1;
end
end

function out = isSatisfy(CSpace)
out = CSpace(1) == 0;
end