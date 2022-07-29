figure(2); clf; axis([-2 2 -.2 1.2]); xlabel('x'); ylabel('u'); hold on;
[q,x]=NR_Wave1D_Newmark_Pade(4,4,1.0,128,.01);
figure(2); plot(x,q,'b-');
[q,x]=NR_Wave1D_Newmark_Pade(4,4,1.0,128,.02);
figure(2); plot(x,q,'r--');
[q,x]=NR_Wave1D_Newmark_Pade(4,4,1.0,128,.04);
figure(2); plot(x,q,'k-.');
set(gca,'box','on')
% print -depsc NR_Wave1D_Newmark_Pade1.eps
