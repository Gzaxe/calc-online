(* ::Package:: *)

(* ::Input:: *)
(*(*\:8ba1\:7b97\:901a\:5e38\:90e8\:5206\:7684\:5377\:79ef\:ff0c\:4e0d\:5305\:542b\[Delta]\:ff0c\:8fd9\:662fpi\:4ecb\:5b50\:4f5c\:4e3a\:8f93\:5165*)*)


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
(**)


(* ::Input:: *)
(*spfan=Import["G:\\calc-online\\gpd\\pic\\pic3Dlist-g-\[Xi]1-L1.wdx"];*)
(*f2n=Query[2,1]@spfan;*)
(*f1n=Query[1,1]@spfan;*)
(*lf2n=Interpolation[Flatten[f2n,1]];*)
(*sf2[x_,t_]=lf2n[x+\[Xi]c,t];*)
(*lf1n=Interpolation[Flatten[f1n,1]];*)
(*sf1[x_,t_]=lf1n[x+\[Xi]c,t];*)
(*g2n=Query[2,2]@spfan;*)
(*g1n=Query[1,2]@spfan;*)
(*lg2n=Interpolation[Flatten[g2n,1]];*)
(*sg2[x_,t_]=lg2n[x+\[Xi]c,t];*)
(*lg1n=Interpolation[Flatten[g1n,1]];*)
(*sg1[x_,t_]=lg1n[x+\[Xi]c,t];*)


(* ::Input:: *)
(*(*Input*)*)


(* ::Input:: *)
(*(*GPD H of u in pi*)*)


(* ::Input:: *)
(*Hq1=(Gamma[2*b0+2]*((1-Abs[\[Beta]])^2-\[Alpha]^2)^b0/(2^(2*b0+1)*(Gamma[b0+1])^2*(1-Abs[\[Beta]])^(2b0+1)))*0.838*\[Beta]^(0.7-1) (1-\[Beta])^2.03 (1+13.8\[Beta]^2)/(1-t/0.6241);*)
(*Hqa=(Hq1/.{\[Alpha]->(x-\[Beta])/\[Xi]})/\[Xi];*)
(*NHu[x_,\[Xi]_,t_]=Hqa/.{b0->2};*)


(* ::Input:: *)
(*(*GDA H of u in pi*)*)


(* ::Input:: *)
(*\[CapitalPhi][z_,\[Eta]_,s_]=(2*(2\[Eta]-1)*(Gamma[2*b0+2]*((1-Abs[\[Beta]])^2-\[Alpha]^2)^b0/(2^(2*b0+1)*(Gamma[b0+1])^2*(1-Abs[\[Beta]])^(2b0+1)))*0.838*\[Beta]^(0.7-1) (1-\[Beta])^2.03 (1+13.8\[Beta]^2)/(1-s/0.6241))/.{\[Alpha]->(2z-1)-\[Beta](2\[Eta]-1),b0->2};*)
(**)
(*Da[z_,\[Eta]_,s_]=0;*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*(*D term, notice H=H+D, E=E-D\:ff0c\:4f46\:662f\:8fd9\:662f\:8f93\:5165\:6a21\:578b\:6240\:4ee5\:5377\:79ef\:7684\:65f6\:5019D\:8ddf\:7740\:6a21\:578b\:8d70\:ff0c\:6781\:5316GPD\:6ca1\:6709Dterm\:ff0cD\:53ea\:5b58\:5728\:4e8eERBL\:6bb5pi\:4ecb\:5b50\:6709D\:ff0c\:6ce8\:610fpi\:4ecb\:5b50\:7684D\:53ea\:6709\:52a0\:53f7*)*)


(* ::Input:: *)
(*Dterm[x_,\[Xi]_,t_]=0;*)


(* ::Input:: *)
(*(*Dterm=15*(x)*(1-(x)^2)*ad/(4*(1-t/(\[CapitalLambda]d^2))^2);*)
(*Du[x_,t_]=Dterm/.{ad\[Rule]-0.56,*)
(*\[CapitalLambda]d\[Rule]0.81};*)*)


(* ::Input:: *)
(*(*DGLAP part*)*)


(* ::Input:: *)
(*HDGu[x_,\[Xi]_,t_]=(1/(y))*sf2[y,t]*NHu[x/(y),\[Xi]/(y),t];*)
(**)
(*EDGu[x_,\[Xi]_,t_]=(1/(y))*sg2[y,t]*NHu[x/(y),\[Xi]/(y),t];*)
(**)


(* ::Input:: *)
(*(*two example*)*)


(* ::Input:: *)
(*NIntegrate[HDGu[0.5,0.1,-1],{y,0.5,1},{\[Beta],(0.5-0.1)/(y-0.1),(0.5+0.1)/(y+0.1)}]*)


(* ::Input:: *)
(*NIntegrate[EDGu[0.5,0.1,-1],{y,0.5,1},{\[Beta],(0.5-0.1)/(y-0.1),(0.5+0.1)/(y+0.1)}]*)


(* ::Input:: *)
(*inHDGu[x_,\[Xi]_,t_]:=NIntegrate[HDGu[x,\[Xi],t],{y,x,1},{\[Beta],(x-\[Xi])/(y-\[Xi]),(x+\[Xi])/(y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)
(*inEDGu[x_,\[Xi]_,t_]:=NIntegrate[EDGu[x,\[Xi],t],{y,x,1},{\[Beta],(x-\[Xi])/(y-\[Xi]),(x+\[Xi])/(y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)


(* ::Input:: *)
(*inHDGu[0.5,0.1,-1]*)


(* ::Input:: *)
(*inEDGu[0.5,0.1,-1]*)


(* ::Input:: *)
(*(*t\:4e0a\:9650\:968f\[Xi]\:53d8\:5316*)*)
(*tm=(3.5268839999999995` \[Xi]c^2)/(-1.`+\[Xi]c^2);*)
(*t2=Floor[tm,0.1];*)


(* ::Input:: *)
(*Hdg=ParallelTable[{{x,t},inHDGu[x,\[Xi]c,t]},{x,Join[Range[\[Xi]c,\[Xi]c+0.04,0.005],Range[\[Xi]c+0.05,1,0.05]]},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)
(*Edg=ParallelTable[{{x,t},inEDGu[x,\[Xi]c,t]},{x,Join[Range[\[Xi]c,\[Xi]c+0.04,0.005],Range[\[Xi]c+0.05,1,0.05]]},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)


(* ::Input:: *)
(*(*ERBL part*)*)


(* ::Input:: *)
(*HERu[x_,\[Xi]_,t_]=(1/(y))*sf2[y,t]*NHu[x/(y),\[Xi]/(y),t];*)
(*HDtermuer[x_,\[Xi]_,t_]=(1/(y))*sf2[y,t]*Dterm[x,\[Xi],t];*)
(*EERu[x_,\[Xi]_,t_]=(1/(y))*sg2[y,t]*NHu[x/(y),\[Xi]/(y),t];*)
(*EDtermuer[x_,\[Xi]_,t_]=(1/(y))*sg2[y,t]*Dterm[x,\[Xi],t];*)


(* ::Input:: *)
(*NIntegrate[HERu[0.01,0.1,-1],{y,0.1,1},{\[Beta],0,(0.01+0.1)/(y+0.1)}]+NIntegrate[HDtermuer[0.01,0.1,-1],{y,0.1,1}]*)


(* ::Input:: *)
(*NIntegrate[EERu[0.01,0.1,-1],{y,0.1,1},{\[Beta],0,(0.01+0.1)/(y+0.1)}]-NIntegrate[EDtermuer[0.01,0.1,-1],{y,0.1,1}]*)


(* ::Input:: *)
(*inHERu[x_,\[Xi]_,t_]:=NIntegrate[HERu[x,\[Xi],t],{y,\[Xi],1},{\[Beta],0,(x+\[Xi])/(y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[HDtermuer[x,\[Xi],t],{y,\[Xi],1},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)
(*inEERu[x_,\[Xi]_,t_]:=NIntegrate[EERu[x,\[Xi],t],{y,\[Xi],1},{\[Beta],0,(x+\[Xi])/(y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[EDtermuer[x,\[Xi],t],{y,\[Xi],1},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)


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
(*HDAu[x_,\[Xi]_,t_]=(1/(y))*(1/(2))*sf1[y,t]*\[CapitalPhi][(x/\[Xi]+1)/2,((y)/\[Xi]+1)/2,t];*)
(*HDtermuda[x_,\[Xi]_,t_]=(1/(y))*(1/(2))*sf1[y,t]*Da[((x/\[Xi]+1)/2),((y/\[Xi]+1)/2),t];*)
(*EDAu[x_,\[Xi]_,t_]=(1/(y))*(1/(2))*sg1[y,t]*\[CapitalPhi][(x/\[Xi]+1)/2,((y)/\[Xi]+1)/2,t];*)
(*EDtermuda[x_,\[Xi]_,t_]=(1/(y))*(1/(2))*sg1[y,t]*Da[((x/\[Xi]+1)/2),((y/\[Xi]+1)/2),t];*)


(* ::Input:: *)
(*(*HDtermudat[x_,\[Xi]_,t_]=(1/(1-y+\[Xi]))*(1/(2))*sf2[y,t]*2Du[x/\[Xi],t];*)
(*EDtermudat[x_,\[Xi]_,t_]=(1/(1-y+\[Xi]))*(1/(2))*sg2[y,t]*2Du[x/\[Xi],t];*)


(* ::Input:: *)
(*(*tdH[x_,\[Xi]_,t_]:=NIntegrate[HDtermudat[x,\[Xi],t],{y,1-\[Xi],1+\[Xi]},MinRecursion\[Rule]10,MaxRecursion\[Rule]50,WorkingPrecision\[Rule]10,AccuracyGoal\[Rule]10];*)
(*tdE[x_,\[Xi]_,t_]:=NIntegrate[EDtermudat[x,\[Xi],t],{y,1-\[Xi],1+\[Xi]},MinRecursion\[Rule]10,MaxRecursion\[Rule]50,WorkingPrecision\[Rule]10,AccuracyGoal\[Rule]10]*)


(* ::Input:: *)
(*inHDAu[x_,\[Xi]_,t_]:=NIntegrate[HDAu[x,\[Xi],t],{y,-\[Xi],x},{\[Beta],0,(x-\[Xi])/(y-\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[HDAu[x,\[Xi],t],{y,x,\[Xi]},{\[Beta],0,(x+\[Xi])/(y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[HDtermuda[x,\[Xi],t],{y,-\[Xi],\[Xi]},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)
(*inEDAu[x_,\[Xi]_,t_]:=NIntegrate[EDAu[x,\[Xi],t],{y,-\[Xi],x},{\[Beta],0,(x-\[Xi])/(y-\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[EDAu[x,\[Xi],t],{y,x,\[Xi]},{\[Beta],0,(x+\[Xi])/(y+\[Xi])},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10]+NIntegrate[EDtermuda[x,\[Xi],t],{y,-\[Xi],\[Xi]},MinRecursion->10,MaxRecursion->50,WorkingPrecision->10,AccuracyGoal->10];*)


(* ::Input:: *)
(*Hda=ParallelTable[{{x,t},inHDAu[x,\[Xi]c,t]},{x,-\[Xi]c,\[Xi]c,0.01},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)
(*Eda=ParallelTable[{{x,t},inEDAu[x,\[Xi]c,t]},{x,-\[Xi]c,\[Xi]c,0.01},{t,Join[Range[-1,t2,0.1],Range[t2+0.003,tm,0.006]]}];*)


(* ::Input:: *)
(*(*export*)*)
(*data=<|"H"-><|"DG"->Hdg,"ER"->Her,"DA"->Hda|>,"E"-><|"DG"->Edg,"ER"->Eer,"DA"->Eda|>|>;*)
(*path=FileNameJoin[{"G:\\calc-online\\gpd\\3dre",*)
(*"gpd3d-g-up-xi1-pi-noD.wdx"}];*)
(*Export[path,data]*)
