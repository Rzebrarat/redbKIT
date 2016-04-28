function exportSubDomains(dim, Subdivision, Overlap, Interior, vertices,elements,outputFileName)
% Export to vtk cell data
%
% Author: Federico Negri, 2013-2014
% -----------------------------------


titleData    = 'Domain Decomposition';
iter         = -1;


if dim == 2
      exportData=struct('iteration', {iter},...
            'vertices', {vertices'},...
            'elements', {elements(1:3,:)'},...
            'outputFile', {outputFileName},...
            'title', {titleData},...
            'variableName',{{'metis', 'overlap', 'interior'}},...
            'variableType',{{'SCALARS','SCALARS','SCALARS'}},...
            'variableData',{{Subdivision Overlap Interior}});
      
      exporter2dVTK_cell(exportData);
      
elseif dim ==3
      exportData=struct('iteration', {iter},...
            'vertices', {vertices'},...
            'elements', {elements(1:4,:)'},...
            'outputFile', {outputFileName},...
            'title', {titleData},...
            'variableName',{{'metis', 'overlap', 'interior'}},...
            'variableType',{{'SCALARS','SCALARS','SCALARS'}},...
            'variableData',{{Subdivision Overlap Interior}});
      
      exporter3dVTK_cell(exportData);
      
end