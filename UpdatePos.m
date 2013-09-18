% Perform car motion.
function out = UpdatePos(SpeedVec, CSpace) %Car motion
out = CSpace .* 0;
indices = find(CSpace);
for i = 1 : length(indices) - 1
    id = CSpace(indices(i));
    out(indices(i) + SpeedVec(i)) = id;
end
if indices(end) + SpeedVec(end) <= length(CSpace)
    out(indices(end) + SpeedVec(end)) = CSpace(indices(end));
end
end