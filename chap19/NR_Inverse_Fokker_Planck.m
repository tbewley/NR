% This code solves the inverse problem of computing v(x) in the Fokker-Planck equation
% that results in a specified PDF p(x).  Problem is discretized on a uniform NxN grid
% over an LxL domain using simple second-order central FD methods.
% We take the second derivative in the wall-normal direction equal to zero at the walls.
% By Thomas Bewley, April 26 2023

clear; close all; format compact; N=101, L=6, d=L/(N-1); x=[-L/2:d:L/2]; y=[-L/2:d:L/2];
xvbar=[0; 0]; var=[1; 1]; alpha=1; [p,gx,gy,h,phi_exact]=gaussian(N,x,y,xvbar,var,alpha);
integral_of_p=sum(p,'all')*d^2; Z=zeros(N*N,N*N); LAP=Z; NABx=Z; NABy=Z;
for i=1:N
    for j=1:N
        % First identify center, north, south, east, and west points
        c=i+(j-1)*N; n  =c+N;   s  =c-N;   e  =c+1; w  =c-1;
                     nn =c+2*N; ss =c-2*N; ee =c+2; ww =c-2; 
                     nnn=c+3*N; sss=c-3*N; eee=c+3; www=c-3; 
        % Then, define LAP operator (constants applied later)
        if     i==1 & j==1; LAP(c,c)=-2; LAP(c,n)=3; LAP(c,nn)=-3; LAP(c,nnn)=1; LAP(c,e)=3; LAP(c,ee)=-3; LAP(c,eee)=1; % Corner BCs,
        elseif i==1 & j==N; LAP(c,c)=-2; LAP(c,s)=3; LAP(c,ss)=-3; LAP(c,sss)=1; LAP(c,e)=3; LAP(c,ee)=-3; LAP(c,eee)=1; % derived from
        elseif i==N & j==1; LAP(c,c)=-2; LAP(c,n)=3; LAP(c,nn)=-3; LAP(c,nnn)=1; LAP(c,w)=3; LAP(c,ww)=-3; LAP(c,www)=1; % curvature extrapolation
        elseif i==N & j==N; LAP(c,c)=-2; LAP(c,s)=3; LAP(c,ss)=-3; LAP(c,sss)=1; LAP(c,w)=3; LAP(c,ww)=-3; LAP(c,www)=1; % along edges

%         elseif i==1; LAP(c,c)=-1; LAP(c,n)=1; LAP(c,s)=1; LAP(c,e)=-2; LAP(c,ee)=1; % Edge BCs (forward difference operor into domain)
%         elseif i==N; LAP(c,c)=-1; LAP(c,n)=1; LAP(c,s)=1; LAP(c,w)=-2; LAP(c,ww)=1;
%         elseif j==1; LAP(c,c)=-1; LAP(c,e)=1; LAP(c,w)=1; LAP(c,n)=-2; LAP(c,nn)=1;
%         elseif j==N; LAP(c,c)=-1; LAP(c,e)=1; LAP(c,w)=1; LAP(c,s)=-2; LAP(c,ss)=1;

        elseif i==1; LAP(c,c)=0; LAP(c,n)=1; LAP(c,s)=1; LAP(c,e)=-5; LAP(c,ee)=4; LAP(c,eee)=-1; % Edge BCs (forward difference operor into domain)
        elseif i==N; LAP(c,c)=0; LAP(c,n)=1; LAP(c,s)=1; LAP(c,w)=-5; LAP(c,ww)=4; LAP(c,www)=-1;
        elseif j==1; LAP(c,c)=0; LAP(c,e)=1; LAP(c,w)=1; LAP(c,n)=-5; LAP(c,nn)=4; LAP(c,nnn)=-1;
        elseif j==N; LAP(c,c)=0; LAP(c,e)=1; LAP(c,w)=1; LAP(c,s)=-5; LAP(c,ss)=4; LAP(c,sss)=-1;

        else   LAP(c,c)=-4; LAP(c,n)=1;  LAP(c,s)=1; LAP(c,e)=1; LAP(c,w)=1;        % Interior
        end
        % And, define NABx and NABy operators (constants applied later)
        if     i==1;        NABx(c,c)=-3/2; NABx(c,e)= 2; NABx(c,ee)=-1/2; % West edge
        elseif i==N;        NABx(c,c)= 3/2; NABx(c,w)=-2; NABx(c,ww)= 1/2; % East edge
        else                NABx(c,e)= 1/2; NABx(c,w)=-1/2;                % Interior
        end
        if     j==1;        NABy(c,c)=-3/2; NABy(c,n)= 2; NABy(c,nn)=-1/2; % South edge
        elseif j==N;        NABy(c,c)= 3/2; NABy(c,s)=-2; NABy(c,ss)= 1/2; % North edge
        else                NABy(c,n)= 1/2; NABy(c,s)=-1/2;                % Interior
        end
    end
end
% Enforce value of phi at center point (so set nabla and h equal to zero at center point)
i=round(N+1)/2; j=round(N+1)/2; c=i+(j-1)*N; LAP(c,:)=0; LAP(c,c)=d^2; NABx(c,:)=0; NABy(c,:)=0; h(i,j)=0;

% Corner points are done via curvature extrapolation along edges (so set nabla and h equal to zero at corners)
for i=1:N-1:N, for j=1:N-1:N, c=i+(j-1)*N; NABx(c,:)=0; NABy(c,:)=0; h(i,j)=0; end, end

for i=1:N, for j=1:N, c=i+(j-1)*N;
  g_dot_NAB(c,:)=gx(i,j)*NABx(c,:)+gy(i,j)*NABy(c,:); RHS(c,1)=h(i,j);  % calculate g.nabla, build RHS vector                                
end, end
LHS=LAP/d^2+g_dot_NAB/d; PHI=LHS\RHS;   % Build LHS matrix while applying constants, and solve system

for i=1:N, for j=1:N, c=i+(j-1)*N; phi_num(i,j)=PHI(c); end, end % rearrange PHI as matrix and plot
figure(6); mesh(x,y,phi_num);  title('numerically determined phi(x,y)'), xlabel('x'), ylabel('y')
axis([x(1) x(end) y(1) y(end)  min(min(phi_exact)) max(max(phi_num))])
figure(7); mesh(x,y,phi_num-phi_exact);  title('phi error(x,y)'), xlabel('x'), ylabel('y')
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
  axis([x(1) x(end) y(1) y(end) min(min(phi)) 0]), pause(0.001)
end % end function gaussian
