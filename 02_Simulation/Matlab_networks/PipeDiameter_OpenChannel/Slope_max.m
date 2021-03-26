



alpha = 0:0.001:pi;

for i=1:length(alpha)
    if (abs(1-cos(alpha(i)))< 10^-2)
    cos_alpha(i)=cos(alpha(i));
    end
end

alpha_max = acos(cos_alpha(length(cos_alpha)))
S_max = atan(alpha_max)
alpha_deg = acos(cos_alpha(length(cos_alpha)))*180/pi;