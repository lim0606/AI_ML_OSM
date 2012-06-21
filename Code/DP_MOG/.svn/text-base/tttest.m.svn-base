dobeta   = 1;        % do dp_beta
docrp    = 1;        % do dp_crp
dokmeans = 1;        % do dp_crp
doplot   = 0;        % plots results
dotrace  = 1;        % traces number of classes
numiter  = 100;     % number of iterations

datass=data;

qq0      = estimateGaussianWishart(datass);
alphaa   = 1;
alphab   = 1;
dp0      = dp_init(datass, alphaa, alphab, qq0, 50);


if doplot == 1
  figure(1);
  clf;
  mysubplot(1,3,1,.05);
  mysubplot(1,3,2,.05);
  mysubplot(1,3,3,.05);
  axislimit = 1.05*max(max(abs(dp0.datass)));
end

tracecrp.numclass  = zeros(1,numiter);
tracebeta.numclass = zeros(1,numiter);
tracekmeans.numclass  = zeros(1,numiter);

dpcrp    = dp0;
dpbeta   = dp0;
dpkmeans = dp0;
for iter=1:numiter

  if docrp == 1
    dp = dpcrp;
    dp_crp;
    dp_conparam;
    dpcrp = dp;
    tracecrp.numclass(iter) = dp.numclass;
    if doplot == 1
      mysubplot(1,3,1,.05); cla; hold on;
      ss = dp.datass;
      plot(ss(1,:),ss(2,:),'.','markersize',10,'linewidth',10);
      [mu sigma] = map(dp.classqq,dp.classnd);
      Fs=[Fs,FFF(result.hp_prior,data,mu,sigma)]
      for ii=1:dp.numclass
        plotellipse(mu(:,ii),sigma(:,:,ii),'b','linewidth',3);
      end
      axis equal; 
      axis([-axislimit axislimit -axislimit axislimit]);
      hold off
      title('crp');
      drawnow
    end
  end

  if dobeta == 1
    dp = dpbeta;
    dp_beta;
    dp_conparam;
    dpbeta = dp;
    tracebeta.numclass(iter) = dp.numclass;
    if doplot == 1
      mysubplot(1,3,2,.05); cla; hold on;
      ss = dp.datass;
      plot(ss(1,:),ss(2,:),'.','markersize',10,'linewidth',10);
      [mu sigma] = map(dp.classqq,dp.classnd);
      for ii=1:dp.numclass
        plotellipse(mu(:,ii),sigma(:,:,ii),'b','linewidth',3);
      end
      axis equal; 
      axis([-axislimit axislimit -axislimit axislimit]);
      hold off
      title('beta');
      drawnow
    end
  end

  if dokmeans == 1
    dp = dpkmeans;
    dp_kmeans;
    dp_conparam;
    dpkmeans = dp;
    tracekmeans.numclass(iter) = dp.numclass;
    if doplot == 1
      mysubplot(1,3,3,.05); cla; hold on;
      ss = dp.datass;
      plot(ss(1,:),ss(2,:),'.','markersize',10,'linewidth',10);
      [mu sigma] = map(dp.classqq,dp.classnd);
      for ii=1:dp.numclass
        plotellipse(mu(:,ii),sigma(:,:,ii),'b','linewidth',3);
      end
      axis equal; 
      axis([-axislimit axislimit -axislimit axislimit]);
      hold off
      title('kmeans');
      drawnow
    end
  end
 
end
  
if dotrace == 1
  figure(2);
  plot(1:numiter,tracecrp.numclass, 'rx','linewidth',2);
  hold on
  plot(1:numiter,tracebeta.numclass,'bo','linewidth',2);
  hold off
  title('numclass');
  legend('crp','beta');
end
