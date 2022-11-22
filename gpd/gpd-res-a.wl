(* ::Package:: *)

(* ::Input:: *)
(*(*\:8ba1\:7b97a\:56fek-\:7684\:79ef\:5206\:5e76\:7ec4\:5408\:51fafg*)*)


<< x`


aAtr=Spur[\[Gamma].(k+q),\[Gamma]5,\[DoubleStruckOne](2Subscript[k, \[Mu]]+Subscript[q, \[Mu]]),\[Gamma].(p1-k)+MM \[DoubleStruckOne],\[Gamma]5,\[Gamma].k,\[Gamma].p1+\[DoubleStruckOne] MB,Subscript[\[Gamma], \[Nu]],\[Gamma].p2+MB \[DoubleStruckOne]];(*\:8fd9\:91cc\:81ea\:52a8\:628agamma\:53d8\:6210\:4e0b\:6807\:4f1a\:8ba9px\:8bc6\:522b\:4e0d\:51fa\:6765\:ff0c\:795e\:79d8*)
aA=aAtr*Fk*Fkq/(Dmk*Dmkq*DB);
aA1=aA/.{p1.p1->MB^2,p2.p2->MB^2,p1.p2->-q.q/2+MB^2,p1.q->-q.q/2,p2.q->q.q/2,\[ScriptD]->4,Subscript[k, \[Mu]]->k1,Subscript[k, \[Nu]]->k1,Subscript[p1, \[Nu]]->P1-q1/2,Subscript[p1, \[Mu]]->P1-q1/2,Subscript[p2, \[Nu]]->P1+q1/2,Subscript[p2, \[Mu]]->P1+q1/2,Subscript[q, \[Mu]]->q1,Subscript[q, \[Nu]]->q1,k.p2->k.p1+k.q};
aA2=aA1/.{k.k-> Dmk+mm^2,k.q->(Dmkq-Dmk-q.q)/2,k.p1->(DB-Dmk+mm^2)/-2};
aA3=aA2/.{Dmk->k1*(k2-(Dotk+mm^2)/k1),
Dmkq->(k1+q1)*((k2+q2)-(Dotkq+mm^2)/(k1+q1)),
DB->((1+\[Xi])P1-k1)(P2-k2-(Dotpk+MM^2)/((1+\[Xi])P1-k1)),
Fk->((\[CapitalLambda]^2-mm^2)/(\[CapitalLambda]^2-k1*k2+Dotk))^2,
Fkq->((\[CapitalLambda]^2-mm^2)/(\[CapitalLambda]^2-(k1+q1)*(k2+q2)+Dotkq))^2};
aAintegral1=-2\[Pi]*I*Residue[aA3,{k2,(\[CapitalLambda]^2+Dotk)/k1}]-2\[Pi]*I*Residue[aA3,{k2,(Dotk+mm^2)/k1}];
aAintegral2=2\[Pi]*I*Residue[aA3,{k2,(P2-(Dotpk+MM^2)/((1+\[Xi])P1-k1))}];



aBtr=Spur[\[Gamma].(k+q),\[Gamma]5,\[DoubleStruckOne](2Subscript[k, \[Mu]]+Subscript[q, \[Mu]]),\[Gamma].(p1-k)+MM \[DoubleStruckOne],\[Gamma]5,\[Gamma].k,\[Gamma].p1+\[DoubleStruckOne] MB,\[Gamma].p2+MB \[DoubleStruckOne]]*(P1/MB);
aB=aBtr*Fk*Fkq/(Dmk*Dmkq*DB);
aB1=aB/.{p1.p1->MB^2,p2.p2->MB^2,p1.p2->-q.q/2+MB^2,p1.q->-q.q/2,p2.q->q.q/2,\[ScriptD]->4,Subscript[k, \[Mu]]->k1,Subscript[k, \[Nu]]->k1,Subscript[p1, \[Nu]]->P1-q1/2,Subscript[p1, \[Mu]]->P1-q1/2,Subscript[p2, \[Nu]]->P1+q1/2,Subscript[p2, \[Mu]]->P1+q1/2,Subscript[q, \[Mu]]->q1,Subscript[q, \[Nu]]->q1,k.p2->k.p1+k.q};
aB2=aB1/.{k.k-> Dmk+mm^2,k.q->(Dmkq-Dmk-q.q)/2,k.p1->(DB-Dmk+mm^2)/-2};
aB3=aB2/.{Dmk->k1*(k2-(Dotk+mm^2)/k1),
Dmkq->(k1+q1)*((k2+q2)-(Dotkq+mm^2)/(k1+q1)),
DB->((1+\[Xi])P1-k1)(P2-k2-(Dotpk+MM^2)/((1+\[Xi])P1-k1)),
Fk->((\[CapitalLambda]^2-mm^2)/(\[CapitalLambda]^2-k1*k2+Dotk))^2,
Fkq->((\[CapitalLambda]^2-mm^2)/(\[CapitalLambda]^2-(k1+q1)*(k2+q2)+Dotkq))^2};
aBintegral1=-2\[Pi]*I*Residue[aB3,{k2,(\[CapitalLambda]^2+Dotk)/k1}]-2\[Pi]*I*Residue[aB3,{k2,(Dotk+mm^2)/k1}];
aBintegral2=2\[Pi]*I*Residue[aB3,{k2,(P2-(Dotpk+MM^2)/((1+\[Xi])P1-k1))}];


aA1RE1=aAintegral1/.{k1->(y+\[Xi])*P1,q1->-2\[Xi]*P1,P2->(1-\[Xi])*(mp^2-q.q/4)/P1,q2->(q.q+Dotq)/q1,Dotkq->(k3^2+2Dotkcq+Dotq),Dotpk->(k3^2+Dotkcq+Dotq/4)};
aA1RE2=aA1RE1/.{Dotq->-(2\[Xi])^2 mp^2-(1-\[Xi]^2)q.q,Dotkcq->k3*q3*Cos[\[Theta]],q1->-2\[Xi]*P1};
aA1RE3=aA1RE2/.{q.q->-Q^2,Dotk->k3^2};
aA2RE1=aAintegral2/.{k1->(y+\[Xi])*P1,q1->-2\[Xi]*P1,P2->(1-\[Xi])*(mp^2-q.q/4)/P1,q2->(q.q+Dotq)/q1,Dotkq->(k3^2+2Dotkcq+Dotq),Dotpk->(k3^2+Dotkcq+Dotq/4)};
aA2RE2=aA2RE1/.{Dotq->-(2\[Xi])^2 mp^2-(1-\[Xi]^2)q.q,Dotkcq->k3*q3*Cos[\[Theta]],q1->-2\[Xi]*P1};
aA2RE3=aA2RE2/.{q.q->-Q^2,Dotk->k3^2};
aB1RE1=aBintegral1/.{k1->(y+\[Xi])*P1,q1->-2\[Xi]*P1,P2->(1-\[Xi])*(mp^2-q.q/4)/P1,q2->(q.q+Dotq)/q1,Dotkq->(k3^2+2Dotkcq+Dotq),Dotpk->(k3^2+Dotkcq+Dotq/4)};
aB1RE2=aB1RE1/.{Dotq->-(2\[Xi])^2 mp^2-(1-\[Xi]^2)q.q,Dotkcq->k3*q3*Cos[\[Theta]],q1->-2\[Xi]*P1};
aB1RE3=aB1RE2/.{q.q->-Q^2,Dotk->k3^2};
aB2RE1=aBintegral2/.{k1->(y+\[Xi])*P1,P2->(1-\[Xi])*(mp^2-q.q/4)/P1,q2->(q.q+Dotq)/q1,Dotkq->(k3^2+2Dotkcq+Dotq),Dotpk->(k3^2+Dotkcq+Dotq/4)};
aB2RE2=aB2RE1/.{Dotq->-(2\[Xi])^2 mp^2-(1-\[Xi]^2)q.q,Dotkcq->k3*q3*Cos[\[Theta]],q1->-2\[Xi]*P1};
aB2RE3=aB2RE2/.{q.q->-Q^2,Dotk->k3^2};
af1=(4MB^2*\[Xi]^2*aB1RE3-Q^2*aA1RE3)/(8P1^2*(4MB^2*\[Xi]^2+(\[Xi]^2-1)Q^2));
ag1=(MB^2*(1-\[Xi]^2)*aB1RE3-MB^2*aA1RE3)/(2P1^2*(4MB^2*\[Xi]^2+(\[Xi]^2-1)Q^2));
af2=(4MB^2*\[Xi]^2*aB2RE3-Q^2*aA2RE3)/(8P1^2*(4MB^2*\[Xi]^2+(\[Xi]^2-1)Q^2));
ag2=(MB^2*(1-\[Xi]^2)*aB2RE3-MB^2*aA2RE3)/(2P1^2*(4MB^2*\[Xi]^2+(\[Xi]^2-1)Q^2));
