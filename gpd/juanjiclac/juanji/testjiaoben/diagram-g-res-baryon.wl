(* ::Package:: *)

(* ::Input:: *)
(*(*\:8ba1\:7b97\:901a\:5e38\:90e8\:5206\:7684\:5377\:79ef\:ff0c\:4e0d\:5305\:542b\[Delta],u quark part*)*)


(* ::Input:: *)
(*(*GPD\:4e2d\:ff0cDGLAP\:548cERBL\:4e4b\:95f4\:533a\:522b\:5728\:4e8ey\:ff0c\[Beta]\:8303\:56f4\:ff0c\:4ee5\:53ca\:53ea\:6709ERBL\:6709Dterm\:4e3a\:4e86\:548cGDA\:4e00\:81f4\:ff0c\:6ce8\:610f\:8f93\:5165\:7684H\:4e2dx\:548c\[Beta]\:4e4b\:95f4\:7684\:5173\:7cfb*)*)
(*(*DGLAP\:548cERBL\:5171\:540c\:7684\:662f\:5728\:5206\:88c2\:51fd\:6570\:4e0ay\:7684\:8303\:56f4\:90fd\:662f0~1-\[Xi]*)*)


(* ::Input:: *)
(*(*GDA\:90e8\:5206\:611f\:89c9\:627e\:4e0d\:5230\:7279\:522b\:597d\:7684\:6587\:7ae0\:6a21\:578b\:ff0c\:5148\:628a\:5e08\:5144\:7684\:5f62\:5f0f\:653e\:8fdb\:6765*)*)
(*(*GDA\:7684\:5206\:88c2\:51fd\:6570y\:8303\:56f4\:662f1-\[Xi]~1+\[Xi]*)*)


(* ::Input:: *)
(*(*\:65b9\:4fbf\:6539\:52a8\[Xi]*)*)


(* ::Input:: *)
(*\[Xi]c=0.1*)


(* ::Input:: *)
(*spfan=Import["G:\\calc-online\\gpd\\pic\\pic3Dlist-g-\[Xi]1-L1.wdx"];*)
(*f2n=Query[2,1]@spfan;*)
(*f1n=Query[1,1]@spfan;*)
(*lf2n=Interpolation[Flatten[f2n,1]];*)
(*sf2[x_,t_]=lf2n[x,t];*)
(*lf1n=Interpolation[Flatten[f1n,1]];*)
(*sf1[x_,t_]=lf1n[x,t];*)
(*g2n=Query[2,2]@spfan;*)
(*g1n=Query[1,2]@spfan;*)
(*lg2n=Interpolation[Flatten[g2n,1]];*)
(*sg2[x_,t_]=lg2n[x,t];*)
(*lg1n=Interpolation[Flatten[g1n,1]];*)
(*sg1[x_,t_]=lg1n[x,t];*)


(* ::Input:: *)
(*(*GPD H of u in proton*)*)


(* ::Input:: *)
(*h0=((Gamma[2*b0+2]*((1-Abs[\[Beta]])^2-\[Alpha]^2)^b0/(2^(2*b0+1)*(Gamma[b0+1])^2*(1-Abs[\[Beta]])^(2b0+1)))/.{\[Alpha]->(x-\[Beta])/\[Xi]})/\[Xi];*)
(*qH=(A0*x^A1*(1-x)^A2*Exp[A3*x](1+Exp[A4]*x)^A5)/x;*)
(*fH=\[Alpha]1*(1-x)^3*Log[1/x]+Bq (1-x)^3+Aq*x*(1-x)^2;*)
(*Hq=(qH*Exp[t*fH])/.{x->\[Beta]};*)
(*Hp=h0*Hq;*)
(*NHu[x_,\[Xi]_,t_]=Hp/.{A0->1.7199,A1->0.5526,A2->2.9009,A3->-2.3502,A4->1.6123,A5->1.5917,\[Alpha]1->0.9,Bq->0.59,Aq->1.22,b0->2};*)


(* ::Input:: *)
(*(*GDA H of u in proton*)*)


(* ::Input:: *)
(*h02=(Gamma[2*b0+2]*((1-Abs[\[Beta]])^2-\[Alpha]^2)^b0/(2^(2*b0+1)*(Gamma[b0+1])^2*(1-Abs[\[Beta]])^(2b0+1)))/.{\[Alpha]->(2z-1)-\[Beta](2\[Eta]-1)};*)
(*Hpda=2(2\[Eta]-1)*h02*Hq;*)
(*NHDAu[z_,\[Eta]_,t_]=Hpda/.{A0->1.7199,A1->0.5526,A2->2.9009,A3->-2.3502,A4->1.6123,A5->1.5917,\[Alpha]1->0.9,Bq->0.59,Aq->1.22,b0->2};*)


(* ::Input:: *)
(*(*GPD E of u in proton*)*)


(* ::Input:: *)
(*qE=Nq*\[Kappa]q*x^(-\[Alpha]e)*(1-x)^(\[Beta]q)/.{Nq->Gamma[2-\[Alpha]e+\[Beta]q]/(Gamma[1-\[Alpha]e]*Gamma[1+\[Beta]q])};*)
(*fE=\[Alpha]2*(1-x)^3*Log[1/x]+Dq (1-x)^3+Cq*x*(1-x)^2;*)
(*Eq=(qE*Exp[t*fE])/.{x->\[Beta]};*)
(*Ep=h0*Eq;*)
(*NEu[x_,\[Xi]_,t_]=Ep/.{\[Kappa]q->1.67,\[Alpha]e->0.55,\[Beta]q->3.99,\[Alpha]2->0.9,Dq->0.38,Cq->1.22,b0->2};*)


(* ::Input:: *)
(*(*GDA E part*)*)


(* ::Input:: *)
(*Epda=2(2\[Eta]-1)*h02*Eq;*)
(*NEDAu[z_,\[Eta]_,t_]=Epda/.{\[Kappa]q->1.67,\[Alpha]e->0.55,\[Beta]q->3.99,\[Alpha]2->0.9,Dq->0.38,Cq->1.22,b0->2};*)


(* ::Input:: *)
(*(*D term, notice H=H+D, E=E-D,Dterm=15*(x)*(1-(x)^2)*ad/(4*(1-t/(\[CapitalLambda]d^2))^2);*)*)


(* ::Input:: *)
(*Dterm=0;*)
(*Du[x_,t_]=Dterm/.{ad->-0.56,*)
(*\[CapitalLambda]d->0.81};*)


(* ::Input:: *)
(*(*DGLAP part*)*)
(*(*\:6709\:4e24\:4e2a\:662f\:56e0\:4e3ay\:7684\:8303\:56f4\:548cdglap\:8303\:56f4\:4e0d\:91cd\:5408*)*)


(* ::Input:: *)
(*HDGu[x_,\[Xi]_,t_]=(1/(1-y))*sf1[y,t]*NHu[x/(1-y),\[Xi]/(1-y),t];*)
(**)
(*EDGu[x_,\[Xi]_,t_]=(1/(1-y))*sg1[y,t]*NEu[x/(1-y),\[Xi]/(1-y),t];*)
(*HDGu2[x_,\[Xi]_,t_]=(1/(1-y))*sf2[y,t]*NHu[x/(1-y),\[Xi]/(1-y),t];*)
(**)
(*EDGu2[x_,\[Xi]_,t_]=(1/(1-y))*sg2[y,t]*NEu[x/(1-y),\[Xi]/(1-y),t];*)
(**)


(* ::Input:: *)
(*(*two example*)*)


(* ::Input:: *)
(*NIntegrate[HDGu[0.5,0.1,-1],{y,0,1-0.5},{\[Beta],(0.5-0.1)/(1-y-0.1),(0.5+0.1)/(1-y+0.1)}]*)


(* ::Input:: *)
(*NIntegrate[EDGu[0.5,0.1,-1],{y,0,1-0.5},{\[Beta],(0.5-0.1)/(1-y-0.1),(0.5+0.1)/(1-y+0.1)}]*)


(* ::Input:: *)
(*inHDGu[x_,\[Xi]_,t_]:=NIntegrate[HDGu[x,\[Xi],t],{y,0,1-x},{\[Beta],(x-\[Xi])/(1-y-\[Xi]),(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)
(*inEDGu[x_,\[Xi]_,t_]:=NIntegrate[EDGu[x,\[Xi],t],{y,0,1-x},{\[Beta],(x-\[Xi])/(1-y-\[Xi]),(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)
(*inHDGu2[x_,\[Xi]_,t_]:=NIntegrate[HDGu[x,\[Xi],t],{y,0,2\[Xi]},{\[Beta],(x-\[Xi])/(1-y-\[Xi]),(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[HDGu2[x,\[Xi],t],{y,2\[Xi],1-x},{\[Beta],(x-\[Xi])/(1-y-\[Xi]),(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)
(*inEDGu2[x_,\[Xi]_,t_]:=NIntegrate[EDGu[x,\[Xi],t],{y,0,2\[Xi]},{\[Beta],(x-\[Xi])/(1-y-\[Xi]),(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[EDGu2[x,\[Xi],t],{y,2\[Xi],1-x},{\[Beta],(x-\[Xi])/(1-y-\[Xi]),(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)


(* ::Input:: *)
(*inHDGu[0.5,0.1,-1]*)


(* ::Input:: *)
(*inEDGu[0.5,0.1,-1]*)


(* ::Input:: *)
(*(*t\:4e0a\:9650\:968f\[Xi]\:53d8\:5316*)*)
(*tm=(3.5268839999999995` \[Xi]c^2)/(-1.`+\[Xi]c^2);*)
(*t2=Floor[tm,0.1];*)


(* ::Input:: *)
(*Hdg1=ParallelTable[{{x,t},inHDGu[x,\[Xi]c,t]},{x,Range[1-2*\[Xi]c,1,0.05]},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)
(*Edg1=ParallelTable[{{x,t},inEDGu[x,\[Xi]c,t]},{x,Range[1-2*\[Xi]c,1,0.05]},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)
(*Hdg2=ParallelTable[{{x,t},inHDGu2[x,\[Xi]c,t]},{x,Join[Range[\[Xi]c,\[Xi]c+0.04,0.005],Range[\[Xi]c+0.05,1-2*\[Xi]c,0.05]]},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)
(*Edg2=ParallelTable[{{x,t},inEDGu2[x,\[Xi]c,t]},{x,Join[Range[\[Xi]c,\[Xi]c+0.04,0.005],Range[\[Xi]c+0.05,1-2*\[Xi]c,0.05]]},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*(*ERBL part*)*)


(* ::Input:: *)
(*HERu[x_,\[Xi]_,t_]=(1/(1-y))*sf1[y,t]*NHu[x/(1-y),\[Xi]/(1-y),t];*)
(*HDtermuer[x_,\[Xi]_,t_]=(1/(1-y))*sf1[y,t]*Du[x/\[Xi],t];*)
(*EERu[x_,\[Xi]_,t_]=(1/(1-y))*sg1[y,t]*NEu[x/(1-y),\[Xi]/(1-y),t];*)
(*EDtermuer[x_,\[Xi]_,t_]=(1/(1-y))*sg1[y,t]*Du[x/\[Xi],t];*)
(**)
(*HERu2[x_,\[Xi]_,t_]=(1/(1-y))*sf2[y,t]*NHu[x/(1-y),\[Xi]/(1-y),t];*)
(*HDtermuer2[x_,\[Xi]_,t_]=(1/(1-y))*sf2[y,t]*Du[x/\[Xi],t];*)
(*EERu2[x_,\[Xi]_,t_]=(1/(1-y))*sg2[y,t]*NEu[x/(1-y),\[Xi]/(1-y),t];*)
(*EDtermuer2[x_,\[Xi]_,t_]=(1/(1-y))*sg2[y,t]*Du[x/\[Xi],t];*)


(* ::Input:: *)
(*NIntegrate[HERu[0.01,0.1,-1],{y,0,1-0.1},{\[Beta],0,(0.01+0.1)/(1-y+0.1)}]+NIntegrate[HDtermuer[0.01,0.1,-1],{y,0,1-0.1}]*)


(* ::Input:: *)
(*NIntegrate[EERu[0.01,0.1,-1],{y,0,1-0.1},{\[Beta],0,(0.01+0.1)/(1-y+0.1)}]-NIntegrate[EDtermuer[0.01,0.1,-1],{y,0,1-0.1}]*)


(* ::Input:: *)
(*inHERu[x_,\[Xi]_,t_]:=NIntegrate[HERu[x,\[Xi],t],{y,0,2\[Xi]},{\[Beta],0,(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[HDtermuer[x,\[Xi],t],{y,0,2\[Xi]},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[HERu2[x,\[Xi],t],{y,2\[Xi],1-\[Xi]},{\[Beta],0,(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[HDtermuer2[x,\[Xi],t],{y,2\[Xi],1-\[Xi]},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)
(*inEERu[x_,\[Xi]_,t_]:=NIntegrate[EERu[x,\[Xi],t],{y,0,2\[Xi]},{\[Beta],0,(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]-NIntegrate[EDtermuer[x,\[Xi],t],{y,0,2\[Xi]},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[EERu2[x,\[Xi],t],{y,2\[Xi],1-\[Xi]},{\[Beta],0,(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]-NIntegrate[EDtermuer2[x,\[Xi],t],{y,2\[Xi],1-\[Xi]},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)


(* ::Input:: *)
(*inHERu[0.01,0.1,-1]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*inEERu[0.01,0.1,-1]*)


(* ::Input:: *)
(*(*\:7531\:4e8eDterm\:5728x=0\:7684\:65f6\:5019=0\:6240\:4ee5\:4f1a\:51fa\:73b0\:8b66\:544a*)*)


(* ::Input:: *)
(*Her=ParallelTable[{{x,t},inHERu[x,\[Xi]c,t]},{x,-\[Xi]c,\[Xi]c,0.01},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)
(*Eer=ParallelTable[{{x,t},inEERu[x,\[Xi]c,t]},{x,-\[Xi]c,\[Xi]c,0.01},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)


(* ::Input:: *)
(*(*GDA part*)*)


(* ::Input:: *)
(*HDAu[x_,\[Xi]_,t_]=(1/(1-y))*(1/(2))*sf2[y,t]*NHDAu[(x/\[Xi]+1)/2,((1-y)/\[Xi]+1)/2,t];*)
(*HDtermuda[x_,\[Xi]_,t_]=(1/(1-y))*(1/(2))*sf2[y,t]*2Du[x/\[Xi],t];*)
(*EDAu[x_,\[Xi]_,t_]=(1/(1-y))*(1/(2))*sg2[y,t]*NEDAu[(x/\[Xi]+1)/2,((1-y)/\[Xi]+1)/2,t];*)
(*EDtermuda[x_,\[Xi]_,t_]=(1/(1-y))*(1/(2))*sg2[y,t]*2Du[x/\[Xi],t];*)


(* ::Input:: *)
(*HDtermudat[x_,\[Xi]_,t_]=(1/(1-y+\[Xi]))*(1/(2))*sf2[y,t]*2Du[x/\[Xi],t];*)
(*EDtermudat[x_,\[Xi]_,t_]=(1/(1-y+\[Xi]))*(1/(2))*sg2[y,t]*2Du[x/\[Xi],t];*)


(* ::Input:: *)
(*tdH[x_,\[Xi]_,t_]:=NIntegrate[HDtermudat[x,\[Xi],t],{y,1-\[Xi],1+\[Xi]},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)
(*tdE[x_,\[Xi]_,t_]:=NIntegrate[EDtermudat[x,\[Xi],t],{y,1-\[Xi],1+\[Xi]},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]*)


(* ::Input:: *)
(*inHDAu[x_,\[Xi]_,t_]:=NIntegrate[HDAu[x,\[Xi],t],{y,1-\[Xi],1-x},{\[Beta],0,(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[HDAu[x,\[Xi],t],{y,1-x,1+\[Xi]},{\[Beta],0,(x-\[Xi])/(1-y-\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)
(*inEDAu[x_,\[Xi]_,t_]:=NIntegrate[EDAu[x,\[Xi],t],{y,1-\[Xi],1-x},{\[Beta],0,(x+\[Xi])/(1-y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[EDAu[x,\[Xi],t],{y,1-x,1+\[Xi]},{\[Beta],0,(x-\[Xi])/(1-y-\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)


(* ::Input:: *)
(*Hda=ParallelTable[{{x,t},inHDAu[x,\[Xi]c,t]},{x,-\[Xi]c,\[Xi]c,0.01},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)
(*Eda=ParallelTable[{{x,t},inEDAu[x,\[Xi]c,t]},{x,-\[Xi]c,\[Xi]c,0.01},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)


(* ::Input:: *)
(*(*export*)*)
(*data=<|"H"-><|"DG1"->Hdg1,"DG2"->Hdg2,"ER"->Her,"DA"->Hda|>,"E"-><|"DG1"->Edg1,"DG2"->Edg2,"ER"->Eer,"DA"->Eda|>|>;*)
(*path=FileNameJoin[{"G:\\calc-online\\gpd\\3dre",*)
(*"gpd3d-g-up-xi1-baryon.wdx"}];*)
(*Export[path,data]*)
