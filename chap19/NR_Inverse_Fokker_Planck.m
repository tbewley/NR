% This code solves the inverse problem of computing v(x) in the Fokker-Planck equation
% that results in a specified PDF p(x).  Problem is discretized on a uniform NxN grid
% over an LxL domain using simple second-order central FD methods.
% We take the second derivative in the wall-normal direction equal to zero at the walls.
% By Thomas Bewley, April 26 2023

clear; format compact; N=101, L=6, d=L/(N-1); x=[-L/2:d:L/2]; y=[-L/2:d:L/2]; verbose=false;
xvbar=[0; 0]; var=[1; 1]; alpha=1; [p,gx,gy,h,phi_exact]=gaussian(N,x,y,xvbar,var,alpha);
integral_of_p=sum(p,'all')*d^2
Z=zeros(N*N,N*N); LAP=Z; NABx=Z; NABy=Z;
for i=1:N
    for j=1:N
        % First identify center, north, south, east, and west points
        c=i+(j-1)*N; n=c+N; s=c-N; e=c+1; w=c-1;  
        % Then, define LAP operator (constants applied later)
        if     i==1 & j==1; LAP(c,c)=-2; LAP(c,n)=1; LAP(c,e)=1; % Corner BCs
        elseif i==1 & j==N; LAP(c,c)=-2; LAP(c,s)=1; LAP(c,e)=1;
        elseif i==N & j==1; LAP(c,c)=-2; LAP(c,n)=1; LAP(c,w)=1;  
        elseif i==N & j==N; LAP(c,c)=-2; LAP(c,s)=1; LAP(c,w)=1;  
        elseif i==1 | i==N; LAP(c,c)=-2; LAP(c,n)=1; LAP(c,s)=1; % Edge BCs
        elseif j==1 | j==N; LAP(c,c)=-2; LAP(c,e)=1; LAP(c,w)=1;
        else   LAP(c,c)=-4; LAP(c,n)=1;  LAP(c,s)=1; LAP(c,e)=1; LAP(c,w)=1; % Interior
        end
        % Then, define NABx and NABy operators (constants applied later)
        if     i==1;        NABx(c,e)=2;  NABx(c,c)=-2;  % West edge
        elseif i==N;        NABx(c,c)=2;  NABx(c,w)=-2;  % East edge
        else                NABx(c,e)=1;  NABx(c,w)=-1;  % Interior
        end
        if     j==1;        NABy(c,n)=2;  NABy(c,c)=-2;  % South edge
        elseif j==N;        NABy(c,c)=2;  NABy(c,s)=-2;  % North edge
        else                NABy(c,n)=1;  NABy(c,s)=-1;  % Interior
        end
    end
end
ii=round(N+1)/2; jj=round(N+1)/2; cc=ii+(jj-1)*N;   % Enforce value of phi at point ii,jj
LAP(cc,:)=0; NABx(cc,:)=0; NABy(cc,:)=0; LAP(cc,cc)=d^2; h(ii,jj)=0;  
if verbose
  size_LAP=size(LAP), rank_LAP=rank(LAP), cond_LAP=cond(LAP) 
end
for i=1:N, for j=1:N, c=i+(j-1)*N;
  g_dot_NAB(c,:)=gx(i,j)*NABx(c,:) + gy(i,j)*NABy(c,:);    % perform g.nabla operation
  RHS(c,1)=h(i,j);                                         % build RHS vector
end, end
LHS=LAP/d^2+g_dot_NAB/(2*d);       % Build LHS matrix while applying constants
PHI=LHS\RHS;
for i=1:N, for j=1:N, c=i+(j-1)*N; phi_num(i,j)=PHI(c); end, end % rearrange PHI as matrix
figure(6); mesh(x,y,phi_num);  title('numerically determined phi(x,y)'), xlabel('x'), ylabel('y')
axis([x(1) x(end) y(1) y(end)  min(min(phi_exact)) max(max(phi_num))])
figure(6); mesh(x,y,phi_num-phi_exact);  title('numerically determined phi(x,y)'), xlabel('x'), ylabel('y')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [p,gx,gy,h,phi]=gaussian(N,x,y,xvbar,var,alpha)
P=diag(var)
for i=1:N
    for j=1:N
        xv=[x(i); y(j)];
        p(i,j) = ((2*pi)^2*det(P))^(-1/2)*exp(-(xv-xvbar)'*inv(P)*(xv-xvbar)/2);
        gx(i,j)= -(xv(1)-xvbar(1))/var(1);
        gy(i,j)= -(xv(2)-xvbar(2))/var(2);
        h(i,j) = alpha*(-1/var(1) + (xv(1)-xvbar(1))^2/var(1)^2 ...
                        -1/var(2) + (xv(2)-xvbar(2))^2/var(2)^2);
        phi(i,j)=-(x(i)^2+y(j)^2)/2;
    end
end
  figure(1); mesh(x,y,p);   title('p(x,y)'),  xlabel('x'), ylabel('y')
  figure(2); mesh(x,y,gx);  title('gx(x,y)'), xlabel('x'), ylabel('y')
  figure(3); mesh(x,y,gy);  title('gy(x,y)'), xlabel('x'), ylabel('y')
  figure(4); mesh(x,y,h);   title('h(x,y)'),  xlabel('x'), ylabel('y')
  figure(5); mesh(x,y,phi); title('exact value for phi(x,y)'),  xlabel('x'), ylabel('y')
  axis([x(1) x(end) y(1) y(end) min(min(phi)) 0]),
end % end function gaussian
