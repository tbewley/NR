% =============================== CHAPTER 4: LINEAR ALGEBRA ===============================
% Attendant to the text <a href="matlab:web('http://numerical-renaissance.com/')">Numerical Renaissance: simulation, optimization, & control</a>
% Files in Chapter 4 of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>:
%   Bidiagonalization          - function [A,U,V] = Bidiagonalization(A,m,n)
%   BidiagonalizationTest      - script BidiagonalizationTest
%   NR_CALE                       - function X=NR_CALE(A,Q)
%   NR_CALEtest                   - script NR_CALEtest
%   NR_CARE                       - function X=NR_CARE(A,S,Q)
%   NR_CAREtest                   - script NR_CAREtest
%   Cholesky                   - function [A] = Cholesky(A,n)
%   CholeskyIncomplete         - function [A] = CholeskyIncomplete(A,n)
%   CholeskyIncompleteTest     - script CholeskyIncompleteTest
%   CholeskyTest               - script CholeskyTest
%   NR_DALE                       - function X=NR_DALE(F,Q,n)
%   NR_DALEtest                   - script NR_DALEtest
%   NR_DARE                       - function X=NR_DARE(F,S,Q,n)
%   NR_DAREdoubling               - function X=NR_DAREdoubling(F,S,Q,n,steps)
%   NR_DAREtest                   - script NR_DAREtest
%   NR_Eig                        - function [lam,S]=NR_Eig(S,type)
%   NR_EigGeneral                 - function [lam] = NR_EigGeneral(A)
%   NR_EigGeneralTest             - script NR_EigGeneralTest
%   NR_EigHermitian               - function [lam] = NR_EigHermitian(A)
%   NR_EigHermitianTest           - script NR_EigHermitianTest
%   NR_EigReal                    - function [lam] = NR_EigReal(A)                            
%   NR_EigRealTest                - script NR_EigRealTest
%   NR_EigTest                    - script NR_EigTest
%   NR_Hessenberg                 - function [A,V] = NR_Hessenberg(A)
%   NR_HessenbergTest             - script NR_HessenbergTest
%   QRcgs                      - function [A,R] = QRcgs(A)
%   QRcgsTest                  - script QRcgsTest
%   NR_QRFastGivensHessenberg     - function [A,Q] = NR_QRFastGivensHessenberg(A) 
%   NR_QRFastGivensHessenbergTest - script NR_QRFastGivensHessenbergTest
%   NR_QRGivensHessenberg         - function [A,Q] = NR_QRGivensHessenberg(A)
%   NR_QRGivensHessenbergTest     - script NR_QRGivensHessenbergTest
%   QRGivensTridiag            - function [b,c,a,cc,ss] = QRGivensTridiag(a,b,c)
%   QRGivensTridiagTest        - script QRGivensTridiagTest
%   QRHouseholder              - function [A,Q,pi,r] = QRHouseholder(A)
%   QRHouseholderTest          - script QRHouseholderTest
%   QRmgs                      - function [A,R,pi,r] = QRmgs(A)
%   QRmgsTest                  - script QRmgsTest
%   NR_RDE                        - function X=NR_RDE(X,F,S,Q,n,steps)
%   NR_RDEtest                    - script NR_RDEtest
%   NR_ReorderSchur               - function [U,T]=NR_ReorderSchur(U,T,type,e)
%   NR_ReorderSchurTest           - script NR_ReorderSchurTest
%   NR_Roots                      - function x = NR_Roots(a)
%   NR_RootsTest                  - script NR_RootsTest
%   NR_Schur                      - function [U,T]=NR_Schur(U,type)
%   NR_SchurTest                  - script NR_SchurTest
%   NR_ShiftedInversePower        - function [S,T] = NR_ShiftedInversePower(A,mu)
%   NR_ShiftedInversePowerTest    - script NR_ShiftedInversePowerTest
%   SVD                        - function [S,U,V,r] = SVD(A)
%   SVDTest                    - script SVDTest
%   NR_Sylvester                  - function X=NR_Sylvester(A,B,C,g,m,n)
%   NR_SylvesterTest              - script NR_SylvesterTest
%   NR_WireTest                   - function NR_WireTest
% <a href="matlab:help NRchap03"><-previous</a> ========== please read the <a href="matlab:help NRcopyleft">copyleft</a>, and please <a href="matlab:help NRsupport">support</a> us! =========== <a href="matlab:help NRchap05">next-></a>
