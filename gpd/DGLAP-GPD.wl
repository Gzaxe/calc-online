(* ::Package:: *)

Hq=DiracDelta[x-\[Beta]-\[Xi]*\[Alpha]]*(Gamma[2*b0+2]*((1-Abs[\[Beta]])^2-\[Alpha]^2)^b0/(2^(2*b0+1)*(Gamma[b0+1])^2*(1-Abs[\[Beta]])^(2b0+1)))*Nv*\[Beta]^(a-1)*(1-\[Beta])^b1*(1+c*\[Beta]^d)1/(1-t/\[Lambda]^2);
Ha=Assuming[\[Beta]>-1&&\[Beta]<1&&x\[Element]Reals&&\[Xi]\[Element]Reals,Integrate[Hq,{\[Alpha],Abs[\[Beta]]-1,Abs[\[Beta]]+1}]];
Hax=Ha/.{a->0.7,b1->2,c->13.8,d->2,Nv->1/2,b0->2,\[Xi]->0.3,\[Lambda]->1,t->-1};
Hay[x_]=Ha/.{a->0.7,b1->2,c->13.8,d->2,Nv->1/2,b0->2,\[Xi]->0.3/y,x->x/y,\[Lambda]->1,t->-1}


ReHax=Assuming[x>0.3&&x<1,Integrate[Hax,{\[Beta],-1,1}]]


ReHay[x_]=HoldForm[Integrate[Hay[x],{\[Beta],-1,1}]];
ReleaseHold[ReHay[0.5]]
