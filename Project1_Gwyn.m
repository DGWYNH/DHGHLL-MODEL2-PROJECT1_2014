%Input :        lines 15,19,993,1110
%Output :       lines 22,996,1113,1140,1142
%Graphing :     lines 56,1053
%Curvefitting : lines 1135
%Conditional :  lines 17,21,35,55,995,1139
%Loops :        lines 33,39,998,1115

%%  David Higgins - Compare Selected Stats of Selected Countries
clc;
clear all;
close all;

load Electricity_Data.mat;

Number_countries = menu('How many countries would you like to look at?','2','3','4');

switch Number_countries
    case 1 % Look at two country
        Country_name1 = input('Select first country:\n','s');
        Index1 = find(strcmp(Electricity_Data.Country,Country_name1));
         if numel(Index1) == 0
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
            Country_name2 = input('Select second country:\n','s');
            Index2 = find(strcmp(Electricity_Data.Country,Country_name2));
            
            if numel(Index2) == 0
                fprintf('The second country you selected was not on the database.\n     Please select a different country.\n');
            else   % Rest of code
                Stat = menu('Select the stat you want to compare:\n','Demand','Total Production','Hydro Production','Solar Production','Wind Production','Nuclear Production');
                switch Stat %set appropriate vector values
                    case 1 %Demand
                        for k = 1:numel(Index1)
                            first_y(k) = Electricity_Data.Demand(Index1(k));
                            if first_y(k) == -9999
                                first_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index1)
                            first_x(k) = Electricity_Data.Year(Index1(k));
                        end
                        for k = 1:numel(Index2)
                            second_y(k) = Electricity_Data.Demand(Index2(k));
                            if second_y(k) == -9999
                                second_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index2)
                            second_x(k) = Electricity_Data.Year(Index2(k));
                        end
                        
                        
                        %Saftey if the countries do not have the same
                        %number of entries
                        if numel(Index1) >= numel(Index2)
                            plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Energy Demand');
                        else
                            plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Energy Demand');
                        end                  

                    case 2 %Total Prod.
                        for k = 1:numel(Index1)
                            first_y(k) = Electricity_Data.Total_Production(Index1(k));
                            if first_y(k) == -9999
                                first_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index1)
                            first_x(k) = Electricity_Data.Year(Index1(k));
                        end
                        for k = 1:numel(Index2)
                            second_y(k) = Electricity_Data.Total_Production(Index2(k));
                            if second_y(k) == -9999
                                second_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index2)
                            second_x(k) = Electricity_Data.Year(Index2(k));
                        end
                        
                        if numel(Index1) >= numel(Index2)
                            plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Total Energy Production');
                        else
                            plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Total Energy Production');
                        end

                    case 3 %Hydro Prod.
                        for k = 1:numel(Index1)
                            first_y(k) = Electricity_Data.Hydro_Production(Index1(k));
                            if first_y(k) == -9999
                                first_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index1)
                            first_x(k) = Electricity_Data.Year(Index1(k));
                        end
                        for k = 1:numel(Index2)
                            second_y(k) = Electricity_Data.Hydro_Production(Index2(k));
                            if second_y(k) == -9999
                                second_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index2)
                            second_x(k) = Electricity_Data.Year(Index2(k));
                        end
                        
                        if numel(Index1) >= numel(Index2)
                            plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Hydro Energy Production');
                        else
                            plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Hydro Energy Production');
                        end

                    case 4 %Solar Prod
                        for k = 1:numel(Index1)
                            first_y(k) = Electricity_Data.Solar_Production(Index1(k));
                            if first_y(k) == -9999
                                first_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index1)
                            first_x(k) = Electricity_Data.Year(Index1(k));
                        end
                        for k = 1:numel(Index2)
                            second_y(k) = Electricity_Data.Solar_Production(Index2(k));
                            if second_y(k) == -9999
                                second_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index2)
                            second_x(k) = Electricity_Data.Year(Index2(k));
                        end
                        
                        if numel(Index1) >= numel(Index2)
                            plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Solar Energy Production');
                        else
                            plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Solar Energy Production');
                        end

                    case 5 %Wind Prod.
                        for k = 1:numel(Index1)
                            first_y(k) = Electricity_Data.Wind_Production(Index1(k));
                            if first_y(k) == -9999
                                first_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index1)
                            first_x(k) = Electricity_Data.Year(Index1(k));
                        end
                        for k = 1:numel(Index2)
                            second_y(k) = Electricity_Data.Wind_Production(Index2(k));
                            if second_y(k) == -9999
                                second_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index2)
                            second_x(k) = Electricity_Data.Year(Index2(k));
                        end
                        
                        if numel(Index1) >= numel(Index2)
                            plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Wind Energy Production');
                        else
                            plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Wind Energy Production');
                        end

                    case 6 %Nuclear Prod.
                        for k = 1:numel(Index1)
                            first_y(k) = Electricity_Data.Nuclear_Production(Index1(k));
                            if first_y(k) == -9999
                                first_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index1)
                            first_x(k) = Electricity_Data.Year(Index1(k));
                        end
                        for k = 1:numel(Index2)
                            second_y(k) = Electricity_Data.Nuclear_Production(Index2(k));
                            if second_y(k) == -9999
                                second_y(k) = 0;
                            end
                        end
                        for k = 1:numel(Index2)
                            second_x(k) = Electricity_Data.Year(Index2(k));
                        end
                        
                        if numel(Index1) >= numel(Index2)
                            plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Nuclear Energy Production');
                        else
                            plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)));
                            legend(Country_name1,Country_name2);
                            xlabel('Year');
                            ylabel('kWh, Millions');
                            title('Comparing Nuclear Energy Production');
                        end

                end
                
                
                
            end
         end
                        
    case 2 % Compare three countries
        
        Country_name1 = input('Select first country:\n','s');
        Index1 = find(strcmp(Electricity_Data.Country,Country_name1));
         if numel(Index1) == 0
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
            Country_name2 = input('Select second country:\n','s');
            Index2 = find(strcmp(Electricity_Data.Country,Country_name2));    
            if numel(Index2) == 0
                fprintf('The second country you selected was not on the database.\n     Please select a different country.\n');
            else   
                Country_name3 = input('Select third country:\n','s');
                Index3 = find(strcmp(Electricity_Data.Country,Country_name3));
                if numel(Index3) == 0
                    fprintf('The third country you selected was not on the database.\n     Please select a different country.\n');
                else
                    Stat = menu('Select the stat you want to compare:\n','Demand','Total Production','Hydro Production','Solar Production','Wind Production','Nuclear Production');
                    switch Stat %set appropriate vector values
                        case 1 %Demand
                            for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Demand(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Demand(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Demand(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            if numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Energy Demand');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Energy Demand');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Energy Demand');
                            end                  

                    case 2 %Total Prod.
                            for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Total_Production(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Total_Production(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Total_Production(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            if numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Total Energy Production');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Total Energy Production');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Total Energy Production');
                            end                  

                        
                    case 3 %Hydro Prod.
                            for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Hydro_Production(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Hydro_Production(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Hydro_Production(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            if numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Hydro Energy Production');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Hydro Energy Production');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Hydro Energy Production');
                            end                  

                        
                    case 4 %Solar Prod
                            for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Solar_Production(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Solar_Production(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Solar_Production(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            if numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Solar Energy Production');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Solar Energy Production');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Solar Energy Production');
                            end                  

                        
                    case 5 %Wind Prod.
                            for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Wind_Production(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Wind_Production(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Wind_Production(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            if numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Wind Energy Production');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Wind Energy Production');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Wind Energy Production');
                            end                  

                        
                    case 6 %Nuclear Prod.
                            for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Nuclear_Production(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Nuclear_Production(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Nuclear_Production(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            if numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Nuclear Energy Production');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Nuclear Energy Production');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Nuclear Energy Production');
                            end                  

                        
                    end
                end
            end
         end
        
    case 3 % Compare four countries
        
        Country_name1 = input('Select first country:\n','s');
        Index1 = find(strcmp(Electricity_Data.Country,Country_name1));
         if numel(Index1) == 0
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
            Country_name2 = input('Select second country:\n','s');
            Index2 = find(strcmp(Electricity_Data.Country,Country_name2));    
            if numel(Index2) == 0
                fprintf('The second country you selected was not on the database.\n     Please select a different country.\n');
            else   
                Country_name3 = input('Select third country:\n','s');
                Index3 = find(strcmp(Electricity_Data.Country,Country_name3));
                if numel(Index3) == 0
                    fprintf('The third country you selected was not on the database.\n     Please select a different country.\n');
                else
                    Country_name4 = input('Select fourth country:\n','s');
                    Index4 = find(strcmp(Electricity_Data.Country,Country_name4));
                    if numel(Index4) == 0
                        fprintf('The fourth country you selected was not on the database.\n     Please select a different country.\n');
                    else
               %Mentally indent rest of code
                    Stat = menu('Select the stat you want to compare:\n','Demand','Total Production','Hydro Production','Solar Production','Wind Production','Nuclear Production');
                    switch Stat %set appropriate vector values
                        case 1 %Demand
                            for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Demand(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Demand(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Demand(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            for k = 1:numel(Index4)
                                fourth_y(k) = Electricity_Data.Demand(Index4(k));
                                if fourth_y(k) == -9999
                                    fourth_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index4)
                                fourth_x(k) = Electricity_Data.Year(Index4(k));
                            end
                            
                            if numel(Index1) >= numel(Index4) && numel(Index2) >= numel(Index4) && numel(Index3) >= numel(Index4)
                                plot(first_x(1:numel(Index4)),first_y(1:numel(Index4)),second_x(1:numel(Index4)),second_y(1:numel(Index4)),third_x(1:numel(Index4)),third_y(1:numel(Index4)),fourth_x(1:numel(Index4)),fourth_y(1:numel(Index4)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Energy Demand');
                            elseif numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3) && numel(Index4) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)),fourth_x(1:numel(Index3)),fourth_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Energy Demand');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2) && numel(Index4) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)),fourth_x(1:numel(Index2)),fourth_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Energy Demand');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1) && numel(Index4) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)),fourth_x(1:numel(Index1)),fourth_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Energy Demand');
                            end                  

                    case 2 %Total Prod.
                            for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Total_Production(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Total_Production(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Total_Production(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            for k = 1:numel(Index4)
                                fourth_y(k) = Electricity_Data.Total_Production(Index4(k));
                                if fourth_y(k) == -9999
                                    fourth_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index4)
                                fourth_x(k) = Electricity_Data.Year(Index4(k));
                            end
                            
                            if numel(Index1) >= numel(Index4) && numel(Index2) >= numel(Index4) && numel(Index3) >= numel(Index4)
                                plot(first_x(1:numel(Index4)),first_y(1:numel(Index4)),second_x(1:numel(Index4)),second_y(1:numel(Index4)),third_x(1:numel(Index4)),third_y(1:numel(Index4)),fourth_x(1:numel(Index4)),fourth_y(1:numel(Index4)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Total Energy Production');
                            elseif numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3) && numel(Index4) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)),fourth_x(1:numel(Index3)),fourth_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Total Energy Production');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2) && numel(Index4) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)),fourth_x(1:numel(Index2)),fourth_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Total Energy Production');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1) && numel(Index4) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)),fourth_x(1:numel(Index1)),fourth_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Total Energy Production');
                            end                  

                        
                    case 3 %Hydro Prod.
                            for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Hydro_Production(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Hydro_Production(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Hydro_Production(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            for k = 1:numel(Index4)
                                fourth_y(k) = Electricity_Data.Hydro_Production(Index4(k));
                                if fourth_y(k) == -9999
                                    fourth_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index4)
                                fourth_x(k) = Electricity_Data.Year(Index4(k));
                            end
                            
                            if numel(Index1) >= numel(Index4) && numel(Index2) >= numel(Index4) && numel(Index3) >= numel(Index4)
                                plot(first_x(1:numel(Index4)),first_y(1:numel(Index4)),second_x(1:numel(Index4)),second_y(1:numel(Index4)),third_x(1:numel(Index4)),third_y(1:numel(Index4)),fourth_x(1:numel(Index4)),fourth_y(1:numel(Index4)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Hydro Energy Production');
                            elseif numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3) && numel(Index4) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)),fourth_x(1:numel(Index3)),fourth_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Hydro Energy Production');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2) && numel(Index4) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)),fourth_x(1:numel(Index2)),fourth_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Hydro Energy Production');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1) && numel(Index4) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)),fourth_x(1:numel(Index1)),fourth_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Hydro Energy Production');
                            end                  

                        
                    case 4 %Solar Prod
                            for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Solar_Production(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Solar_Production(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Solar_Production(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            for k = 1:numel(Index4)
                                fourth_y(k) = Electricity_Data.Solar_Production(Index4(k));
                                if fourth_y(k) == -9999
                                    fourth_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index4)
                                fourth_x(k) = Electricity_Data.Year(Index4(k));
                            end
                            
                            if numel(Index1) >= numel(Index4) && numel(Index2) >= numel(Index4) && numel(Index3) >= numel(Index4)
                                plot(first_x(1:numel(Index4)),first_y(1:numel(Index4)),second_x(1:numel(Index4)),second_y(1:numel(Index4)),third_x(1:numel(Index4)),third_y(1:numel(Index4)),fourth_x(1:numel(Index4)),fourth_y(1:numel(Index4)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Solar Energy Production');
                            elseif numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3) && numel(Index4) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)),fourth_x(1:numel(Index3)),fourth_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Solar Energy Production');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2) && numel(Index4) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)),fourth_x(1:numel(Index2)),fourth_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Solar Energy Production');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1) && numel(Index4) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)),fourth_x(1:numel(Index1)),fourth_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Solar Energy Production');
                            end                  

                        
                    case 5 %Wind Prod.
                        for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Wind_Production(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Wind_Production(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Wind_Production(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            for k = 1:numel(Index4)
                                fourth_y(k) = Electricity_Data.Wind_Production(Index4(k));
                                if fourth_y(k) == -9999
                                    fourth_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index4)
                                fourth_x(k) = Electricity_Data.Year(Index4(k));
                            end
                            
                            if numel(Index1) >= numel(Index4) && numel(Index2) >= numel(Index4) && numel(Index3) >= numel(Index4)
                                plot(first_x(1:numel(Index4)),first_y(1:numel(Index4)),second_x(1:numel(Index4)),second_y(1:numel(Index4)),third_x(1:numel(Index4)),third_y(1:numel(Index4)),fourth_x(1:numel(Index4)),fourth_y(1:numel(Index4)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Wind Energy Production');
                            elseif numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3) && numel(Index4) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)),fourth_x(1:numel(Index3)),fourth_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Wind Energy Production');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2) && numel(Index4) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)),fourth_x(1:numel(Index2)),fourth_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Wind Energy Production');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1) && numel(Index4) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)),fourth_x(1:numel(Index1)),fourth_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Wind Energy Production');
                            end                  

                        
                    case 6 %Nuclear Prod.
                        for k = 1:numel(Index1)
                                first_y(k) = Electricity_Data.Nuclear_Production(Index1(k));
                                if first_y(k) == -9999
                                    first_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index1)
                                first_x(k) = Electricity_Data.Year(Index1(k));
                            end
                            for k = 1:numel(Index2)
                                second_y(k) = Electricity_Data.Nuclear_Production(Index2(k));
                                if second_y(k) == -9999
                                    second_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index2)
                                second_x(k) = Electricity_Data.Year(Index2(k));
                            end
                            for k = 1:numel(Index3)
                                third_y(k) = Electricity_Data.Nuclear_Production(Index3(k));
                                if third_y(k) == -9999
                                    third_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index3)
                                third_x(k) = Electricity_Data.Year(Index3(k));
                            end
                            for k = 1:numel(Index4)
                                fourth_y(k) = Electricity_Data.Nuclear_Production(Index4(k));
                                if fourth_y(k) == -9999
                                    fourth_y(k) = 0;
                                end
                            end
                            for k = 1:numel(Index4)
                                fourth_x(k) = Electricity_Data.Year(Index4(k));
                            end
                           
                            if numel(Index1) >= numel(Index4) && numel(Index2) >= numel(Index4) && numel(Index3) >= numel(Index4)
                                plot(first_x(1:numel(Index4)),first_y(1:numel(Index4)),second_x(1:numel(Index4)),second_y(1:numel(Index4)),third_x(1:numel(Index4)),third_y(1:numel(Index4)),fourth_x(1:numel(Index4)),fourth_y(1:numel(Index4)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Nuclear Energy Production');
                            elseif numel(Index1) >= numel(Index3) && numel(Index2) >= numel(Index3) && numel(Index4) >= numel(Index3)
                                plot(first_x(1:numel(Index3)),first_y(1:numel(Index3)),second_x(1:numel(Index3)),second_y(1:numel(Index3)),third_x(1:numel(Index3)),third_y(1:numel(Index3)),fourth_x(1:numel(Index3)),fourth_y(1:numel(Index3)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Nuclear Energy Production');
                            elseif numel(Index1) >= numel(Index2) && numel(Index3) >= numel(Index2) && numel(Index4) >= numel(Index2)
                                plot(first_x(1:numel(Index2)),first_y(1:numel(Index2)),second_x(1:numel(Index2)),second_y(1:numel(Index2)),third_x(1:numel(Index2)),third_y(1:numel(Index2)),fourth_x(1:numel(Index2)),fourth_y(1:numel(Index2)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Nuclear Energy Production');
                            elseif numel(Index2) >= numel(Index1) && numel(Index3) >= numel(Index1) && numel(Index4) >= numel(Index1)
                                plot(first_x(1:numel(Index1)),first_y(1:numel(Index1)),second_x(1:numel(Index1)),second_y(1:numel(Index1)),third_x(1:numel(Index1)),third_y(1:numel(Index1)),fourth_x(1:numel(Index1)),fourth_y(1:numel(Index1)));
                                legend(Country_name1,Country_name2,Country_name3,Country_name4);
                                xlabel('Year');
                                ylabel('kWh, Millions');
                                title('Comparing Nuclear Energy Production');
                            end                  

                        
                    end
                end
            end
         end  
         end
end
clear all;
pause(3);
clc;
%% David Higgins - Look at Stats of User Selected Country
clear all;
clc;
close all;

load Electricity_Data.mat

Country_name1 = input('Which country would you like to look at stats for?\n','s');
Index1 = find(strcmp(Electricity_Data.Country,Country_name1));
if numel(Index1) == 0
    fprintf('The country you selected was not on the database.\n     Please select a different country.\n');
else
    for k = 1:numel(Index1)
        D_y(k) = Electricity_Data.Demand(Index1(k));
        if D_y(k) == -9999
            D_y(k) = 0;
        end
    end
    for k = 1:numel(Index1)
        D_x(k) = Electricity_Data.Year(Index1(k));
    end
    for k = 1:numel(Index1)
        TP_y(k) = Electricity_Data.Total_Production(Index1(k));
        if TP_y(k) == -9999
            TP_y(k) = 0;
        end
    end
    for k = 1:numel(Index1)
        TP_x(k) = Electricity_Data.Year(Index1(k));
    end
    for k = 1:numel(Index1)
        HP_y(k) = Electricity_Data.Hydro_Production(Index1(k));
        if HP_y(k) == -9999
            HP_y(k) = 0;
        end
    end
    for k = 1:numel(Index1)
        HP_x(k) = Electricity_Data.Year(Index1(k));
    end
    for k = 1:numel(Index1)
        SP_y(k) = Electricity_Data.Solar_Production(Index1(k));
        if SP_y(k) == -9999
            SP_y(k) = 0;
        end
    end
    for k = 1:numel(Index1)
        SP_x(k) = Electricity_Data.Year(Index1(k));
    end
    for k = 1:numel(Index1)
        WP_y(k) = Electricity_Data.Wind_Production(Index1(k));
        if WP_y(k) == -9999
            WP_y(k) = 0;
        end
    end
    for k = 1:numel(Index1)
        WP_x(k) = Electricity_Data.Year(Index1(k));
    end
    for k = 1:numel(Index1)
        NP_y(k) = Electricity_Data.Nuclear_Production(Index1(k));
        if NP_y(k) == -9999
            NP_y(k) = 0;
        end
    end
    for k = 1:numel(Index1)
        NP_x(k) = Electricity_Data.Year(Index1(k));
    end
    
    subplot(2,3,1)
    plot(D_x(1:numel(Index1)),D_y(1:numel(Index1)));
    legend(Country_name1);
    title('Energy Demand');
    xlabel('Year');
    ylabel('kWh, Millions');
    
    subplot(2,3,2)
    plot(TP_x(1:numel(Index1)),TP_y(1:numel(Index1)));
    legend(Country_name1);
    title('Total Energy Production');
    xlabel('Year');
    ylabel('kWh, Millions');
    
    subplot(2,3,3)
    plot(HP_x(1:numel(Index1)),HP_y(1:numel(Index1)));
    legend(Country_name1);
    title('Hydro Energy Production');
    xlabel('Year');
    ylabel('kWh, Millions');
    
    subplot(2,3,4)
    plot(SP_x(1:numel(Index1)),SP_y(1:numel(Index1)));
    legend(Country_name1);
    title('Solar Energy Production');
    xlabel('Year');
    ylabel('kWh, Millions');
    
    subplot(2,3,5)
    plot(WP_x(1:numel(Index1)),WP_y(1:numel(Index1)));
    legend(Country_name1);
    title('Wind Energy Production');
    xlabel('Year');
    ylabel('kWh, Millions');
   
    
    subplot(2,3,6)
    plot(NP_x(1:numel(Index1)),NP_y(1:numel(Index1)));
    legend(Country_name1);
    title('Nuclear Energy Production');
    xlabel('Year');
    ylabel('kWh, Millions');
    


end

pause(3);
clear all;
clc;
%% Analyze whether the Demand and Total Production will intersect
clear all;
clc;
close all;

load Electricity_Data.mat

Country_name1 = input('Select a country to analyze:\n','s');
Index1 = find(strcmp(Electricity_Data.Country,Country_name1));
if numel(Index1) == 0
    fprintf('The country you selected was not on the database.\n     Please select a different country.\n');
else
    for k = 1:numel(Index1)
        D_y(k) = Electricity_Data.Demand(Index1(k));
        if D_y(k) == -9999
            D_y(k) = 0;
        end
    end
    for k = 1:numel(Index1)
        D_x(k) = Electricity_Data.Year(Index1(k));
    end
    for k = 1:numel(Index1)
        TP_y(k) = Electricity_Data.Total_Production(Index1(k));
        if TP_y(k) == -9999
            TP_y(k) = 0;
        end
    end
    for k = 1:numel(Index1)
        TP_x(k) = Electricity_Data.Year(Index1(k));
    end

    x = 1990:2990;
    Demand_coeff = polyfit(D_x,D_y,2);
    TP_coeff = polyfit(TP_x,TP_y,2);
    Intersect = solve(Demand_coeff(1)*x.^2 + Demand_coeff(2)*x + Demand_coeff(3),TP_coeff(1)*x.^2 + TP_coeff(2)*x + TP_coeff(3),x);

    if Intersect > 1990
        fprintf('At its current trend the Demand for energy for %s will over take its Total Production in: %0.0f\n',Country_name1,Intersect);
    else
        fprintf('At its current trend the Demand for energy for %s will not over take its Total Production in the next 1000 years.\n',Country_name1);
    end
end

pause(3);
clear all;
clc;