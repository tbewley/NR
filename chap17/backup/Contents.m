% ------------------------------ CHAPTER 20: LINEAR SYSTEMS -------------------------------
% Attendant to the text  <a href="matlab:web('http://numerical-renaissance.com/')">Numerical Renaissance: simulation, optimization, & control</a>
% Files in Chapter 20 of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>:
%   NR_ShowSys               - function NR_ShowSys(A,B,C,[D])
%   NR_ShowSysTest           - script <a href="matlab:NR_ShowSysTest">NR_ShowSysTest</a>
%   NR_SSTransform           - function [A,B,C]=NR_SSTransform(A,B,C,R)
%   NR_SSTransformTest       - script <a href="matlab:NR_SSTransformTest">NR_SSTransformTest</a>
%   NR_MatrixExponential     - function [Phi]=NR_MatrixExponential(A,t)
%   NR_MatrixExponentialTest - script <a href="matlab:NR_MatrixExponentialTest">NR_MatrixExponentialTest</a>
%   NR_SS2TF                 - function [b,a]=NR_SS2TF(A,B,C,[D])
%   NR_SS2TFTest             - script <a href="matlab:NR_SS2TFTest">NR_SS2TFTest</a>
%   NR_MaxEnergyGrowth       - function [thetamax,x0]=NR_MaxEnergyGrowth(A,Q,tau,[MODE])
%   NR_MaxEnergyGrowthTest   - script <a href="matlab:NR_MaxEnergyGrowthTest">NR_MaxEnergyGrowthTest</a>
%   NR_TFnorm                - function x=NR_TFnorm(A,B,C,[p],[MODE])
%   NR_TFnormTest            - script <a href="matlab:NR_TFnormTest">NR_TFnormTest</a>
%   NR_TF2Markov             - function [m]=NR_TF2Markov(b,a)
%   NR_TF2MarkovTest         - script <a href="matlab:NR_TF2MarkovTest">NR_TF2MarkovTest</a>
%   NR_SS2Markov             - function [m]=NR_SS2Markov(A,B,C,D,p)
%   NR_SS2MarkovTest         - script <a href="matlab:NR_SS2MarkovTest">NR_SS2MarkovTest</a>
%   NR_TF2SS                 - function [A,B,C,D]=NR_TF2SS(b,a,[FORM])
%   NR_TF2SSTest             - script <a href="matlab:NR_TF2SSTest">NR_TF2SSTest</a>
%   NR_CtrbMatrix            - function [CM,r] = NR_CtrbMatrix(A,B)
%   NR_CtrbMatrixTest        - script <a href="matlab:NR_CtrbMatrixTest">NR_CtrbMatrixTest</a>
%   NR_CtrbGrammian          - function [P,r] = NR_CtrbGrammian(A,B,[MODE])
%   NR_CtrbGrammianTest      - script <a href="matlab:NR_CtrbGrammianTest">NR_CtrbGrammianTest</a>
%   NR_ObsvMatrix            - function [OM,r] = NR_ObsvMatrix(A,C)
%   NR_ObsvMatrixTest        - script <a href="matlab:NR_ObsvMatrixTest">NR_ObsvMatrixTest</a>
%   NR_ObsvGrammian          - function [Q,r] = NR_ObsvGrammian(A,C,[MODE])
%   NR_ObsvGrammianTest      - script <a href="matlab:NR_ObsvGrammianTest">NR_ObsvGrammianTest</a>
%   NR_SS2CanonicalForm      - function [A,B,C,r1,r2,r3,r4]=NR_SS2CanonicalForm(A,B,C,FORM)
%   NR_SS2CanonicalFormTest  - script <a href="matlab:NR_SS2CanonicalFormTest">NR_SS2CanonicalFormTest</a>
%   NR_BalancedForm          - function [A,B,C,HankelSingValues]=NR_BalancedForm(A,B,C,[MODE])
%   NR_BalancedFormTest      - script <a href="matlab:NR_BalancedFormTest">NR_BalancedFormTest</a>
% <a href="matlab:help NRchap19"><-previous</a> ---------- please read the <a href="matlab:help NRcopyleft">copyleft</a>, and please <a href="matlab:help NRsupport">support</a> us! ----------- <a href="matlab:help NRchap21">next-></a>
