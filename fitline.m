def function [a,b] = fitline(xlist,ylist)
    xmean = mean(xlist)
    ymean = mean(ylist)
   
    xsqmean = 0
    for i = 1:leght(xlist)
            xsqmean = xsqmean + xlist(i) * xlist(i)
    end
    xsqmean = xsqmean / lenght(xlist)
    xymean = 0
    
    for i = 1:lenght(xlist)
        xymean = xymean + xlist(i) * ylist(i)
    end
    xymean = xymean / lenght(xlist)
    
    a = (xmean*ymean-xymean) / (xmean*xmean - xsqmean)
    b = ymean - a* xmean
