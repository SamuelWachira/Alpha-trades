%fit a random signal and predict one step ahead.
function[direction,pred]=ar_signal(rtn)
mdl=arima(1,0,0);
estmdl=estimate(mdl,rtn);
[pred,ymse]=forecast(estmdl,1);
if  pred>0
    direction=1; %buy
elseif pred<0
    direction=0; %sell
end