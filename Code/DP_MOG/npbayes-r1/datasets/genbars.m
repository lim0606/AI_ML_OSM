function datass = genbars(imsize,noiselevel,numbarpermix,numgroup,numdata,weight);
% generate bars
% imsize 	size of image
% noiselevel	amount of noise (noiselevel/(1+noiselvel) is proportional of
%		noise)
% numberpermix	probabilities of generating a particular number of bars.
% numgroup	number of final mixtures.
% numdata	number of data items drawn from each mixture.

numdim   = imsize^2;
numbars  = imsize*2;

mixtheta = zeros(numdim,numbars);
for ii=1:imsize
  im = ones(imsize,imsize)*noiselevel/imsize^2;
  im(:,ii) = im(:,ii) + 1/imsize;
  mixtheta(:,ii) = im(:)/sum(im(:));
end
for ii = 1:imsize
  im = ones(imsize,imsize)*noiselevel/imsize^2;
  im(ii,:) = im(ii,:) + 1/imsize;
  mixtheta(:,imsize+ii) = im(:)/sum(im(:));
end
datass = cell(numgroup,1);
for jj = 1:numgroup
  nb = randmult(numbarpermix);
  nnbb(jj)=nb
  kk = zeros(1,nb);  
  tmp_w=weight;
  tmp_nb=1:numbars;
  for ww=1:nb
  kk(ww)=randsample(tmp_nb,1,1,tmp_w);
  tmp_nb=tmp_nb(tmp_nb~=kk(ww));
  tmp_w=tmp_w(tmp_nb~=kk(ww));
  end
  theta = mean(mixtheta(:,kk),2);
  datass{jj} = randmult(theta(:,ones(1,numdata)),1);
end
save haha.mat nnbb
