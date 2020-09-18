function [a,b] = fitline(xlist,ylist)
    xmean = mean(xlist)
    ymean = mean(ylist)
   
    xsqmean = 0
    for i = 1:length(xlist)
            xsqmean = xsqmean + xlist(i) * xlist(i)
    end
    xsqmean = xsqmean / length(xlist)
    xymean = 0
    
    for i = 1:length(xlist)
        xymean = xymean + xlist(i) * ylist(i)
    end
    xymean = xymean / length(xlist)
    
    a = (xmean*ymean-xymean) / (xmean*xmean - xsqmean)
    b = ymean - a* xmean

end

