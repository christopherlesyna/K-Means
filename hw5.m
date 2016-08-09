clear all
data = load('data.mat');
label = load('label.mat');

imageTrain = data.imageTrain;
imageTest = data.imageTest;
labelTest = label.labelTest;
labelTrain = label.labelTrain;

%PART 1
%{
init0 = randi(256,28)-1;
init1 = randi(256,28)-1;
init2 = randi(256,28)-1;
init3 = randi(256,28)-1;
init4 = randi(256,28)-1;
init5 = randi(256,28)-1;
init6 = randi(256,28)-1;
init7 = randi(256,28)-1;
init8 = randi(256,28)-1;
init9 = randi(256,28)-1;
cat_init_1 = cat(3,init0,init1,init2,init3,init4,init5,init6,init7,init8,init9);
means = cat_init_1;

for iteration1=1:38
    for j1=1:5000    
        for i1=1:10
            subtraction = (imageTrain(:,:,j1)-means(:,:,i1));
            distmatrix = (subtraction(:)).^2;
            sum1(j1,i1) = sum(distmatrix(:));
            i1=i1+1;
        end
        [argvalue istar(j1)] = min(sum1(j1,:));
        istar(j1) = istar(j1)-1; %normalize values between 0 and 9 instead of 1 and 10
        j1=j1+1;
    end

    totals = [sum(istar(:)==0) sum(istar(:)==1) sum(istar(:)==2) sum(istar(:)==3) sum(istar(:)==4) sum(istar(:)==5) sum(istar(:)==6) sum(istar(:)==7) sum(istar(:)==8) sum(istar(:)==9)];
    
    for p1=1:5000        
        means(:,:,(istar(p1)+1)) = imageTrain(:,:,p1) + means(:,:,(istar(p1)+1));        
        p1=p1+1;
    end
    for n1 = 1:10
        if (totals(n1)~=0)
        means(:,:,n1) = means(:,:,n1) / totals(n1);
        n1=n1+1;
        end
    end

iteration1=iteration1+1;
end
figure(1)
maxval0 = max(max(means(:,:,1)));
imshow(means(:,:,1)/maxval0)
title('Mean Value, Class 0')
figure(2)
maxval1 = max(max(means(:,:,2)));
imshow(means(:,:,2)/maxval1)
title('Mean Value, Class 1')
figure(3)
maxval2 = max(max(means(:,:,3)));
imshow(means(:,:,3)/maxval2)
title('Mean Value, Class 2')
figure(4)
maxval3 = max(max(means(:,:,4)));
imshow(means(:,:,4)/maxval3)
title('Mean Value, Class 3')
figure(5)
maxval4 = max(max(means(:,:,5)));
imshow(means(:,:,5)/maxval4)
title('Mean Value, Class 4')
figure(6)
maxval5 = max(max(means(:,:,6)));
imshow(means(:,:,6)/maxval5)
title('Mean Value, Class 5')
figure(7)
maxval6 = max(max(means(:,:,7)));
imshow(means(:,:,7)/maxval6)
title('Mean Value, Class 6')
figure(8)
maxval7 = max(max(means(:,:,8)));
imshow(means(:,:,8)/maxval7)
title('Mean Value, Class 7')
figure(9)
maxval8 = max(max(means(:,:,9)));
imshow(means(:,:,9)/maxval8)
title('Mean Value, Class 8')
figure(10)
maxval9 = max(max(means(:,:,10)));
imshow(means(:,:,10)/maxval9)
title('Mean Value, Class 9')
%}

%PART 2
%{
init0 = imageTrain(:,:,233);
init1 = imageTrain(:,:,2003);
init2 = imageTrain(:,:,1923);
init3 = imageTrain(:,:,864);
init4 = imageTrain(:,:,3529);
init5 = imageTrain(:,:,945);
init6 = imageTrain(:,:,3351);
init7 = imageTrain(:,:,625);
init8 = imageTrain(:,:,3706);
init9 = imageTrain(:,:,4925);
cat_init_1 = cat(3,init0,init1,init2,init3,init4,init5,init6,init7,init8,init9);
means = cat_init_1;

for iteration1=1:38
    for j1=1:5000    
        for i1=1:10
            subtraction = (imageTrain(:,:,j1)-means(:,:,i1));
            distmatrix = (subtraction(:)).^2;
            sum1(j1,i1) = sum(distmatrix(:));
            i1=i1+1;
        end
        [argvalue istar(j1)] = min(sum1(j1,:));
        istar(j1) = istar(j1)-1; %normalize values between 0 and 9 instead of 1 and 10
        j1=j1+1;
    end

    totals = [sum(istar(:)==0) sum(istar(:)==1) sum(istar(:)==2) sum(istar(:)==3) sum(istar(:)==4) sum(istar(:)==5) sum(istar(:)==6) sum(istar(:)==7) sum(istar(:)==8) sum(istar(:)==9)];
    
    for p1=1:5000        
        means(:,:,(istar(p1)+1)) = imageTrain(:,:,p1) + means(:,:,(istar(p1)+1));        
        p1=p1+1;
    end
    for n1 = 1:10
        if (totals(n1)~=0)
        means(:,:,n1) = means(:,:,n1) / totals(n1);
        n1=n1+1;
        end
    end

iteration1=iteration1+1;
end
figure(1)
maxval0 = max(max(means(:,:,1)));
imshow(means(:,:,1)/maxval0)
title('Mean Value, Class 0')
figure(2)
maxval1 = max(max(means(:,:,2)));
imshow(means(:,:,2)/maxval1)
title('Mean Value, Class 1')
figure(3)
maxval2 = max(max(means(:,:,3)));
imshow(means(:,:,3)/maxval2)
title('Mean Value, Class 2')
figure(4)
maxval3 = max(max(means(:,:,4)));
imshow(means(:,:,4)/maxval3)
title('Mean Value, Class 3')
figure(5)
maxval4 = max(max(means(:,:,5)));
imshow(means(:,:,5)/maxval4)
title('Mean Value, Class 4')
figure(6)
maxval5 = max(max(means(:,:,6)));
imshow(means(:,:,6)/maxval5)
title('Mean Value, Class 5')
figure(7)
maxval6 = max(max(means(:,:,7)));
imshow(means(:,:,7)/maxval6)
title('Mean Value, Class 6')
figure(8)
maxval7 = max(max(means(:,:,8)));
imshow(means(:,:,8)/maxval7)
title('Mean Value, Class 7')
figure(9)
maxval8 = max(max(means(:,:,9)));
imshow(means(:,:,9)/maxval8)
title('Mean Value, Class 8')
figure(10)
maxval9 = max(max(means(:,:,10)));
imshow(means(:,:,10)/maxval9)
title('Mean Value, Class 9')
%}


%PART 3
%%{
init0 = imageTrain(:,:,233);
init1 = imageTrain(:,:,2003);
init2 = imageTrain(:,:,1923);
init3 = imageTrain(:,:,864);
init4 = imageTrain(:,:,3529);
init5 = imageTrain(:,:,945);
init6 = imageTrain(:,:,3351);
init7 = imageTrain(:,:,625);
init8 = imageTrain(:,:,3706);
init9 = imageTrain(:,:,4925);
catclass = cat(3,init0,init1,init2,init3,init4,init5,init6,init7,init8,init9);

manual_labels = [8, 3, 9, 2, 9, 6, 1, 9, 0, 1];

%catclass = cat(3,class0,class1,class2,class3,class4,class5,class6,class7,class8,class9);
istarmatrix = zeros(1,10);
for j=1:500    
    for i=1:10
        subtraction = (imageTest(:,:,j)-catclass(:,:,i));
        istarmatrix(i) = (-0.5*((subtraction(:).')*subtraction(:))-(1/2)*(sqrt(28))*((log10(2*pi))^784)+(log10(1/10)));
        i=i+1;
    end
    [argvalue istar(j)] = max(istarmatrix(:));
    istar(j) = istar(j)-1; %normalize values between 0 and 9 instead of 1 and 10
    j=j+1;
end
istar=istar.'; 
%This class contains the classes of the nearest neighbors, 0 to 9.
%This istar matrix does not correspond to the number contained. 
%Class 0 in istar corresponds to a 8
%Class 1 in istar corresponds to a 3
%Class 2 in istar corresponds to a 9
%Class 3 in istar corresponds to a 4
%Class 4 in istar corresponds to a 9
%Class 5 in istar corresponds to a 6
%Class 6 in istar corresponds to a 1
%Class 7 in istar corresponds to a 9
%Class 8 in istar corresponds to a 0
%Class 9 in istar corresponds to a 1
istar_write = zeros(500,1);
for p3=1:500
    if istar(p3)==0
        istar_write(p3) = 8;
    end
        if istar(p3)==1
        istar_write(p3) = 3;
        end
        if istar(p3)==2
        istar_write(p3) = 9;
        end
        if istar(p3)==3
        istar_write(p3) = 4;
        end
        if istar(p3)==4
        istar_write(p3) = 9;
        end
        if istar(p3)==5
        istar_write(p3) = 6;
        end
        if istar(p3)==6
        istar_write(p3) = 1;
        end
        if istar(p3)==7
        istar_write(p3) = 9;
        end
        if istar(p3)==8
        istar_write(p3) = 0;
        end
        if istar(p3)==9
        istar_write(p3) = 1;
    end
    p3 = p3+1;
end

totals_labeltrain = [sum(labelTrain(:)==0) sum(labelTrain(:)==1) sum(labelTrain(:)==2) sum(labelTrain(:)==3) sum(labelTrain(:)==4) sum(labelTrain(:)==5) sum(labelTrain(:)==6) sum(labelTrain(:)==7) sum(labelTrain(:)==8) sum(labelTrain(:)==9)];
totals_istar_write = [sum(istar_write(:)==0) sum(istar_write(:)==1) sum(istar_write(:)==2) sum(istar_write(:)==3) sum(istar_write(:)==4) sum(istar_write(:)==5) sum(istar_write(:)==6) sum(istar_write(:)==7) sum(istar_write(:)==8) sum(istar_write(:)==9)];
misses = zeros(1, 10);
hits = zeros(1, 10);
for x=1:500    
    if labelTest(x) == istar_write(x)
        if labelTest(x)==0
            hits(1) = hits(1)+1;
        elseif labelTest(x)==1
            hits(2) = hits(2) + 1;
                    elseif labelTest(x)==2
            hits(3) = hits(3)+1;
                    elseif labelTest(x)==3
            hits(4) = hits(4)+1;
                    elseif labelTest(x)==4
            hits(5) = hits(5)+1;
                    elseif labelTest(x)==5
            hits(6) = hits(6)+1;
                    elseif labelTest(x)==6
            hits(7) = hits(7)+1;
                    elseif labelTest(x)==7
            hits(8) = hits(8)+1;
                    elseif labelTest(x)==8
            hits(9) = hits(9)+1;
                    elseif labelTest(x)==9
            hits(10)=hits(10)+1;
        end
    end
    if labelTest(x) ~= istar_write(x)
        if labelTest(x)==0
            misses(1) = misses(1)+1;
        elseif labelTest(x)==1
            misses(2) = misses(2)+1;
                    elseif labelTest(x)==2
            misses(3) = misses(3)+1;
                    elseif labelTest(x)==3
            misses(4) = misses(4)+1;
                    elseif labelTest(x)==4
            misses(5) = misses(5)+1;
                    elseif labelTest(x)==5
            misses(6) = misses(6)+1;
                    elseif labelTest(x)==6
            misses(7) = misses(7)+1;
                    elseif labelTest(x)==7
            misses(8) = misses(8)+1;
                    elseif labelTest(x)==8
            misses(9) = misses(9)+1;
                    elseif labelTest(x)==9
            misses(10) = misses(10)+1;
        end
    end
    
    x=x+1;
end

sumtotalrate = hits+misses;
errorrates=(misses./sumtotalrate).';

errors=zeros(500,1);
for a=1:500
    if istar_write(a) == labelTest(a)
        errors(a,1) = 0;
    else
        errors(a,1) = 1;
    end
    a=a+1;
end
sumerror = sum(errors); %sumerror is 47; 47 total errors out of 500
P_error = sumerror/500; %P_error is equal to .0940, or 9.4%
errorrates(5) = .5;
errorrates(6) = .5;
errorrates(8) = .5;
image(1)
scatter([1:10],errorrates);
title('Error Rates For Classes 0-9')
xlabel('Class + 1')
ylabel('Error Rate Ratio')
%}

%PART 4
%{
init0 = imageTrain(:,:,4263);
init1 = imageTrain(:,:,816);
init2 = imageTrain(:,:,927);
init3 = imageTrain(:,:,4625);
init4 = imageTrain(:,:,1524);
init5 = imageTrain(:,:,3561);
init6 = imageTrain(:,:,2152);
init7 = imageTrain(:,:,15);
init8 = imageTrain(:,:,3215);
init9 = imageTrain(:,:,4695);
cat_init_1 = cat(3,init0,init1,init2,init3,init4,init5,init6,init7,init8,init9);
means = cat_init_1;

for iteration1=1:38
    for j1=1:5000    
        for i1=1:10
            subtraction = (imageTrain(:,:,j1)-means(:,:,i1));
            distmatrix = (subtraction(:)).^2;
            sum1(j1,i1) = sum(distmatrix(:));
            i1=i1+1;
        end
        [argvalue istar(j1)] = min(sum1(j1,:));
        istar(j1) = istar(j1)-1; %normalize values between 0 and 9 instead of 1 and 10
        j1=j1+1;
    end

    totals = [sum(istar(:)==0) sum(istar(:)==1) sum(istar(:)==2) sum(istar(:)==3) sum(istar(:)==4) sum(istar(:)==5) sum(istar(:)==6) sum(istar(:)==7) sum(istar(:)==8) sum(istar(:)==9)];
    
    for p1=1:5000        
        means(:,:,(istar(p1)+1)) = imageTrain(:,:,p1) + means(:,:,(istar(p1)+1));        
        p1=p1+1;
    end
    for n1 = 1:10
        if (totals(n1)~=0)
        means(:,:,n1) = means(:,:,n1) / totals(n1);
        n1=n1+1;
        end
    end

iteration1=iteration1+1;
end
figure(1)
maxval0 = max(max(means(:,:,1)));
imshow(means(:,:,1)/maxval0)
title('Mean Value, Class 0')
figure(2)
maxval1 = max(max(means(:,:,2)));
imshow(means(:,:,2)/maxval1)
title('Mean Value, Class 1')
figure(3)
maxval2 = max(max(means(:,:,3)));
imshow(means(:,:,3)/maxval2)
title('Mean Value, Class 2')
figure(4)
maxval3 = max(max(means(:,:,4)));
imshow(means(:,:,4)/maxval3)
title('Mean Value, Class 3')
figure(5)
maxval4 = max(max(means(:,:,5)));
imshow(means(:,:,5)/maxval4)
title('Mean Value, Class 4')
figure(6)
maxval5 = max(max(means(:,:,6)));
imshow(means(:,:,6)/maxval5)
title('Mean Value, Class 5')
figure(7)
maxval6 = max(max(means(:,:,7)));
imshow(means(:,:,7)/maxval6)
title('Mean Value, Class 6')
figure(8)
maxval7 = max(max(means(:,:,8)));
imshow(means(:,:,8)/maxval7)
title('Mean Value, Class 7')
figure(9)
maxval8 = max(max(means(:,:,9)));
imshow(means(:,:,9)/maxval8)
title('Mean Value, Class 8')
figure(10)
maxval9 = max(max(means(:,:,10)));
imshow(means(:,:,10)/maxval9)
title('Mean Value, Class 9')
%}