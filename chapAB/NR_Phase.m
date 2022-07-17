function phi=Phase(a)
phi=atan2(imag(a),real(a));
for i=2:length(a)
  while phi(i)>phi(i-1)+pi, phi(i)=phi(i)-2*pi; end
  while phi(i)<phi(i-1)-pi, phi(i)=phi(i)+2*pi; end
end
end % function Phase
