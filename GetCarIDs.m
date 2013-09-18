%Get the ID of each car on the road
function out = GetCarIDs(CSpace)
indices = find(CSpace);
out = CSpace(indices);
end
