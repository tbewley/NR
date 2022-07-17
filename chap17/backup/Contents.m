% ------------------------------ CHAPTER 20: LINEAR SYSTEMS -------------------------------
% Attendant to the text  <a href="matlab:web('http://numerical-renaissance.com/')">Numerical Renaissance: simulation, optimization, & control</a>
% Files in Chapter 20 of <a href="matlab:help NRC">Numerical Renaissance Codebase 1.0</a>:
%   ShowSys               - function ShowSys(A,B,C,[D])
%   ShowSysTest           - script <a href="matlab:ShowSysTest">ShowSysTest</a>
%   SSTransform           - function [A,B,C]=SSTransform(A,B,C,R)
%   SSTransformTest       - script <a href="matlab:SSTransformTest">SSTransformTest</a>
%   MatrixExponential     - function [Phi]=MatrixExponential(A,t)
%   MatrixExponentialTest - script <a href="matlab:MatrixExponentialTest">MatrixExponentialTest</a>
%   SS2TF                 - function [b,a]=SS2TF(A,B,C,[D])
%   SS2TFTest             - script <a href="matlab:SS2TFTest">SS2TFTest</a>
%   MaxEnergyGrowth       - function [thetamax,x0]=MaxEnergyGrowth(A,Q,tau,[MODE])
%   MaxEnergyGrowthTest   - script <a href="matlab:MaxEnergyGrowthTest">MaxEnergyGrowthTest</a>
%   TFnorm                - function x=TFnorm(A,B,C,[p],[MODE])
%   TFnormTest            - script <a href="matlab:TFnormTest">TFnormTest</a>
%   TF2Markov             - function [m]=TF2Markov(b,a)
%   TF2MarkovTest         - script <a href="matlab:TF2MarkovTest">TF2MarkovTest</a>
%   SS2Markov             - function [m]=SS2Markov(A,B,C,D,p)
%   SS2MarkovTest         - script <a href="matlab:SS2MarkovTest">SS2MarkovTest</a>
%   TF2SS                 - function [A,B,C,D]=TF2SS(b,a,[FORM])
%   TF2SSTest             - script <a href="matlab:TF2SSTest">TF2SSTest</a>
%   CtrbMatrix            - function [CM,r] = CtrbMatrix(A,B)
%   CtrbMatrixTest        - script <a href="matlab:CtrbMatrixTest">CtrbMatrixTest</a>
%   CtrbGrammian          - function [P,r] = CtrbGrammian(A,B,[MODE])
%   CtrbGrammianTest      - script <a href="matlab:CtrbGrammianTest">CtrbGrammianTest</a>
%   ObsvMatrix            - function [OM,r] = ObsvMatrix(A,C)
%   ObsvMatrixTest        - script <a href="matlab:ObsvMatrixTest">ObsvMatrixTest</a>
%   ObsvGrammian          - function [Q,r] = ObsvGrammian(A,C,[MODE])
%   ObsvGrammianTest      - script <a href="matlab:ObsvGrammianTest">ObsvGrammianTest</a>
%   SS2CanonicalForm      - function [A,B,C,r1,r2,r3,r4]=SS2CanonicalForm(A,B,C,FORM)
%   SS2CanonicalFormTest  - script <a href="matlab:SS2CanonicalFormTest">SS2CanonicalFormTest</a>
%   BalancedForm          - function [A,B,C,HankelSingValues]=BalancedForm(A,B,C,[MODE])
%   BalancedFormTest      - script <a href="matlab:BalancedFormTest">BalancedFormTest</a>
% <a href="matlab:help NRchap19"><-previous</a> ---------- please read the <a href="matlab:help NRcopyleft">copyleft</a>, and please <a href="matlab:help NRsupport">support</a> us! ----------- <a href="matlab:help NRchap21">next-></a>
