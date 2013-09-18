%Get the distances between cars on the road(CSpace)
function out = GetDistanceBetweenCars(CSpace)
indices = find(CSpace);
if isempty(indices)
    out = [];
    return;
end
out = indices .* 0;
i = 1 : length(indices) - 1;
out(i) = indices(i + 1) - indices(i);
out(length(indices)) = GetDistanceOfFirstCarToExit(CSpace);
end

function out = GetDistanceOfFirstCarToExit(CSpace)
indices = find(CSpace);
out = length(CSpace) - indices(end);
end