
clf; 
P = parameters;
P.MC_T = 100;
[Mo_w,Mc_w,Md_w, X,Ca_w,t,state] = montecarlo(P);

lw = 2; fnt = 20;
plot(t,Ca_w,'k','linewidth',lw);
set(gca,'fontsize',fnt)
xlabel('Time (ms)')
ylabel('Ca (\muM)')
print2pdf('mc_ca',2)

plot(t,42+17*(state==1),'k',t,Ca_w,'k','linewidth',lw);
xlabel('Time (ms)')
ylabel('Ca (\muM)')
axis([20,30,40,100])
print2pdf('mc_state',2)

