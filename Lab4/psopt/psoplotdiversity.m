function [state,options] = psoplotdiversity(options,state,flag)
% Plots the best, mean, and worst scores of particle swarm.

notinf = isfinite(state.Score) ;

if strcmp(flag,'init')
    set(gca,'NextPlot','add',...
        'XLabel',xlabel('Generation'),...
        'YLabel',ylabel('Diversity'))
    line(state.Generation,max(state.VelocityMag),...
        'Color','black',...
        'Tag','Diversity',...
        'Marker','.',...
        'MarkerSize',12,...
        'LineStyle','none')
elseif strcmp(flag,'done')
    legend({'Sum(Column Var)'})
else
    hdiv = findobj(gca,'Tag','Diversity','Type','line') ;
    x = [get(hdiv,'XData'), state.Generation] ;
    y = [get(hdiv,'YData'), state.Diversity] ;
    set(hdiv,...
        'XData',x,...
        'YData',y)
    titletxt = sprintf('Final: %g',y(end)) ;
    title(titletxt)
end