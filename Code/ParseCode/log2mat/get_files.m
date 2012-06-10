function [P, F] = getfiles(filepath,searchExpression,extension, sort)
% get a list of files from a current directory allow for wild card expression
% including extension and sort the files by name if desired.

% find the periods & * in extension if exists and remove in case users enter
% a variety of formats such as '*.mat' or '.mat' or 'mat' ....
extension = regexprep(extension,'\.','');
extension = regexprep(extension,'*','');
% add wild card and period for search in case user did not add
extension = ['*.' extension];

% get the path
P = fileparts(pwd);

% get the files
switch nargin
    case 1
        disp(['Find files for file extension:  ' extension])      
        F = ls(extension);
    case 2
        disp(['Find files for file search expression:  ' searchExpression extension])
        % find any double ** and replace with a single *
        searchExpression  = regexprep([searchExpression extension],'**','*');
        F = ls(searchExpression);
    case 4
        disp(['Find files for file search expression and sort:  ' searchExpression extension])
        if sort == 1
            searchExpression  = regexprep([filepath searchExpression extension],'**','*');
            F_dir = dir(searchExpression);
            for i=1:size(F_dir,1)
                F{i,1}= F_dir(i).name
            end
            F = sortrows(F);
        elseif sort == 0
            searchExpression  = regexprep([searchExpression extension],'**','*');
            F = ls(searchExpression);
        else
            error('GetFiles:sortTest', ...
            ['Invalid sort value, enter 0 or 1 or nothing \n' ...
             '(1 to sort, 0 not to sort, default is not to sort file order)']);  
        end
        
    otherwise
        error('GetFiles:narginTest', ...
              ['Incorrect # of arguments, enter 1 to 3 arguments \n' ...
          'enter the file extension, a search expression and 1 or 0 \n' ...
          '(1 to sort, 0 not to sort, default is not to sort file order)']);        
end
disp('Find files complete without error')
