function printFigs(dimensions,fileName,eps)
%PRINTFIGS Print current figure to png and eps
% where:
% dimensions =  [x y] dimensions in cm e.g. [13 10];
% fileName = text string e.g. ['Adjacency Matrix - ' adjMatName];

set(gcf,'PaperSize',dimensions, ...
    'paperOrientation', 'portrait', ...
    'paperunits','CENTIMETERS', ...
    'PaperPosition',[.63, .63, dimensions])

% print png file
print(gcf,'-dpng',[fileName '.png'],  '-opengl','-r400');

%  print(gcf, [fileName '.png'], '-dpng', '-opengl', '-r300');

% optionally print eps file
if eps
    print(gcf,'-depsc',[fileName '.eps']);
end

end
