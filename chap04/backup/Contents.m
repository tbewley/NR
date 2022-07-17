% =============================== CHAPTER 4: LINEAR ALGEBRA ===============================
% Attendant to the text <a href="matlab:web('http://numerical-renaissance.com/')">Numerical Renaissance: simulation, optimization, & control</a>
% Files in Chapter 4 of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>:
%   Bidiagonalization          - function [A,U,V] = Bidiagonalization(A,m,n)
%   BidiagonalizationTest      - script BidiagonalizationTest
%   CALE                       - function X=CALE(A,Q)
%   CALEtest                   - script CALEtest
%   CARE                       - function X=CARE(A,S,Q)
%   CAREtest                   - script CAREtest
%   Cholesky                   - function [A] = Cholesky(A,n)
%   CholeskyIncomplete         - function [A] = CholeskyIncomplete(A,n)
%   CholeskyIncompleteTest     - script CholeskyIncompleteTest
%   CholeskyTest               - script CholeskyTest
%   DALE                       - function X=DALE(F,Q,n)
%   DALEtest                   - script DALEtest
%   DARE                       - function X=DARE(F,S,Q,n)
%   DAREdoubling               - function X=DAREdoubling(F,S,Q,n,steps)
%   DAREtest                   - script DAREtest
%   Eig                        - function [lam,S]=Eig(S,type)
%   EigGeneral                 - function [lam] = EigGeneral(A)
%   EigGeneralTest             - script EigGeneralTest
%   EigHermitian               - function [lam] = EigHermitian(A)
%   EigHermitianTest           - script EigHermitianTest
%   EigReal                    - function [lam] = EigReal(A)                            
%   EigRealTest                - script EigRealTest
%   EigTest                    - script EigTest
%   Hessenberg                 - function [A,V] = Hessenberg(A)
%   HessenbergTest             - script HessenbergTest
%   QRcgs                      - function [A,R] = QRcgs(A)
%   QRcgsTest                  - script QRcgsTest
%   QRFastGivensHessenberg     - function [A,Q] = QRFastGivensHessenberg(A) 
%   QRFastGivensHessenbergTest - script QRFastGivensHessenbergTest
%   QRGivensHessenberg         - function [A,Q] = QRGivensHessenberg(A)
%   QRGivensHessenbergTest     - script QRGivensHessenbergTest
%   QRGivensTridiag            - function [b,c,a,cc,ss] = QRGivensTridiag(a,b,c)
%   QRGivensTridiagTest        - script QRGivensTridiagTest
%   QRHouseholder              - function [A,Q,pi,r] = QRHouseholder(A)
%   QRHouseholderTest          - script QRHouseholderTest
%   QRmgs                      - function [A,R,pi,r] = QRmgs(A)
%   QRmgsTest                  - script QRmgsTest
%   RDE                        - function X=RDE(X,F,S,Q,n,steps)
%   RDEtest                    - script RDEtest
%   ReorderSchur               - function [U,T]=ReorderSchur(U,T,type,e)
%   ReorderSchurTest           - script ReorderSchurTest
%   Roots                      - function x = Roots(a)
%   RootsTest                  - script RootsTest
%   Schur                      - function [U,T]=Schur(U,type)
%   SchurTest                  - script SchurTest
%   ShiftedInversePower        - function [S,T] = ShiftedInversePower(A,mu)
%   ShiftedInversePowerTest    - script ShiftedInversePowerTest
%   SVD                        - function [S,U,V,r] = SVD(A)
%   SVDTest                    - script SVDTest
%   Sylvester                  - function X=Sylvester(A,B,C,g,m,n)
%   SylvesterTest              - script SylvesterTest
%   WireTest                   - function WireTest
% <a href="matlab:help NRchap03"><-previous</a> ========== please read the <a href="matlab:help NRcopyleft">copyleft</a>, and please <a href="matlab:help NRsupport">support</a> us! =========== <a href="matlab:help NRchap05">next-></a>
