function hdp=hdpMultinomial(datass,gammaa,gammab,alphaa,alphab,eta,...
                            initcc,varargin);

hdp = hdp_init(datass,gammaa,gammab,alphaa,alphab,Multinomial(eta),initcc,varargin{:});

