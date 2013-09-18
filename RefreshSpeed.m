% Update the speed of each car.
function out = RefreshSpeed(SpeedVec, Distances, vmax, poss)

for i = 1 : length(SpeedVec) 

    if SpeedVec(i) + 1 < Distances(i) %Acceleration
        SpeedVec(i) = SpeedVec(i) + 1;
        if SpeedVec(i) > vmax
            SpeedVec(i) = vmax;
        end
    elseif SpeedVec(i) >= Distances(i) && i < length(SpeedVec) %Slowing down
        SpeedVec(i) = Distances(i) - 1;
    end
    
    if rand < poss %Randomization
        SpeedVec(i) = SpeedVec(i) - 1;
        if SpeedVec(i) < 0
            SpeedVec(i) = 0;
        end
    end 
end
out = SpeedVec;
end