% bars data.  starts with number of class = number of dimensions
cleardist
set(gcf,'doublebuffer','on');

dohdpcrf   = 1;
numiter    = 5000;
repiter    = 1;

% description of generated data set.
imsize       = 5;
noiselevel   = .01;
numbarpermix = [0 ones(1,3)]/3;
numgroup     = 40;
numdata      = 50;

datass       = genbars(imsize,noiselevel,numbarpermix,numgroup,numdata);

numdim       = imsize^2;
numclass     = imsize*2+2; 

eta  = 1/imsize;
lda0 = ldaMultinomial(datass, 1, 1, eta*ones(numdim,1), numclass);
hdp0 = lda2hdp(lda0,1,1);
hdp0.range = 5;

hdpcrf   = hdp_specialize(hdp0,'crf');

colormap gray

for iter=1:numiter


  if dohdpcrf > 0
    hdpcrf = hdp_iterateconparam(hdpcrf,dohdpcrf);
    hdp = hdp_standardize(hdpcrf);
    mysubplot(6,1,6,.05);
    imlayout(1-map(hdp.classqq),[imsize imsize 1 hdp.numclass],1-[1/imsize 0]);
    title(['hdp\_crf: ' num2str(toc/dohdpcrf)]);
    drawnow;
  end




end


