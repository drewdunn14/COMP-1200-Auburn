

function output = wilks(kgLifted,kgBodyWeight)
 % This function calculates the Wilks Coefficient for MD.
 aCoeff = -216.0475144;
 bCoeff = 16.2606339;
 cCoeff = -0.002388645;
 dCoeff =  -0.00113732;
 eCoeff = 7.01863e-06;
 fCoeff = -1.291e-08;
 output = ((kgLifted * 500) ./ (aCoeff + (bCoeff*kgBodyWeight) + (cCoeff*kgBodyWeight^2) + (dCoeff*kgBodyWeight^3)...
     + (eCoeff*kgBodyWeight^4) + (fCoeff*kgBodyWeight^5)));
 end