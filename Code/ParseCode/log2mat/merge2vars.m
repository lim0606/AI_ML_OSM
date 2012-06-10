% Merge workspace variables that have the same name but one of the two
% variables has a name that ends with the number 1

% find all varibles that end with the number 1
list1=who('*1');

% Merge each variable
for vi = 1:length(list1)
    % get each variable name in the list (the latest list ends with 1)
    parname = char(list1(vi));

    % varify that there is a matching variable
    if exist(parname(1:length(parname)-1),'var')
        % write the variable names without the number 1 at the end to a temp
        par1 = [parname(1:length(parname)-1)];
        % write the variable name with the number at the end to a temp
        par2 = [parname];
        % write the final variable w/o the number 1 at the end
        parname = [parname(1:length(parname)-1)];
        % merge the two variables
        %if strmatch(par1,'GPS_Data_Nav_1_bfname')
        %keyboard
        %end
        if ischar(eval(par2))
            eval([parname ' = {' par1 ';' par2  '};']);
        else
        eval([parname ' = cat(1,' par1 ',' par2  ');']);
        end
        % Clean up the workspace by removing the variable with 1 at the end
        % from the workspace, leaving the original variable name with the two
        % variables merged in the workspace
        eval(['clear ' par2]);
    end
end

% Clean up the workspace remove temporary variables
clear list1 vi parname par1 par2

