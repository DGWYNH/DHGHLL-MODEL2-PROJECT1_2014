%% Grace Hiltz
clear all
close all
load Electricity_Data.mat
%Creating individual graphs for each country
Country_name1 = input('Select a country:\n','s');                                  %Input Statements topic applied
    Index1 = find(strcmp(Electricity_Data.Country,Country_name1));
    if numel(Index1) == 0                                                              %Conditional Statements topic applied
       fprintf('The first country you selected was not in the database.\n Please select a different country.\n');
    else  
    end
    Production_1=Electricity_Data.Total_Production(Index1(1):Index1(22));
    Demand_1=Electricity_Data.Demand(Index1(1):Index1(22));
    Year=Electricity_Data.Year(Index1(1):Index1(22));
    Title_of_Graph=['Production vs. Demand in ',Country_name1];
    plot(Year,Production_1,Year,Demand_1);                                             %Graphing (line graph) topic applied
    xlabel('Year'); ylabel('Amount of Energy (kWh in millions)'); title(Title_of_Graph);
    legend('Production','Demand');
    %% Comparison Graph
clear all
close all
load Electricity_Data.mat
    
%Creating a comparison graph for all production/demand
USA = input('Select first country:\n','s');                                  %Input Statements topic applied
    IndexUSA = find(strcmp(Electricity_Data.Country,USA));
    if numel(IndexUSA) == 0                                                              %Conditional Statements topic applied
       fprintf('The country you selected was not in the database.\n Please select a different country.\n');
    else  
    end
    Production_USA=Electricity_Data.Total_Production(IndexUSA(1):IndexUSA(22));
    Demand_USA=Electricity_Data.Demand(IndexUSA(1):IndexUSA(22));
    Year_USA=Electricity_Data.Year(IndexUSA(1):IndexUSA(22));

Germany = input('Select second country:\n','s');                                  %Input Statements topic applied
    IndexG = find(strcmp(Electricity_Data.Country,Germany));
    if numel(IndexG) == 0                                                              %Conditional Statements topic applied
       fprintf('The country you selected was not in the database.\n Please select a different country.\n');
    else  
    end
    Production_G=Electricity_Data.Total_Production(IndexG(1):IndexG(22));
    Demand_G=Electricity_Data.Demand(IndexG(1):IndexG(22));
    Year_G=Electricity_Data.Year(IndexG(1):IndexG(22));
    
Japan = input('Select third country:\n','s');                                  %Input Statements topic applied
    IndexJ = find(strcmp(Electricity_Data.Country,Japan));
    if numel(IndexJ) == 0                                                              %Conditional Statements topic applied
       fprintf('The country you selected was not in the database.\n Please select a different country.\n');
    else  
    end
    Production_J=Electricity_Data.Total_Production(IndexJ(1):IndexJ(22));
    Demand_J=Electricity_Data.Demand(IndexJ(1):IndexJ(22));
    Year_J=Electricity_Data.Year(IndexJ(1):IndexJ(22));
    
Nicaragua = input('Select fourth country:\n','s');                                  %Input Statements topic applied
    IndexN = find(strcmp(Electricity_Data.Country,Nicaragua));
    if numel(IndexN) == 0                                                              %Conditional Statements topic applied
       fprintf('The country you selected was not in the database.\n Please select a different country.\n');
    else  
    end
    Production_N=Electricity_Data.Total_Production(IndexN(1):IndexN(22));
    Demand_N=Electricity_Data.Demand(IndexN(1):IndexN(22));
    Year_N=Electricity_Data.Year(IndexN(1):IndexN(22));
  
Nigeria = input('Select fifth country:\n','s');                                  %Input Statements topic applied
    IndexE = find(strcmp(Electricity_Data.Country,Nigeria));
    if numel(IndexE) == 0                                                              %Conditional Statements topic applied
       fprintf('The country you selected was not in the database.\n Please select a different country.\n');
    else  
    end
    Production_E=Electricity_Data.Total_Production(IndexE(1):IndexE(22));
    Demand_E=Electricity_Data.Demand(IndexE(1):IndexE(22));
    Year_E=Electricity_Data.Year(IndexE(1):IndexE(22));
    
South_Africa = input('Select sixth country:\n','s');                                  %Input Statements topic applied
    IndexS = find(strcmp(Electricity_Data.Country,South_Africa));
    if numel(IndexS) == 0                                                              %Conditional Statements topic applied
       fprintf('The country you selected was not in the database.\n Please select a different country.\n');
    else  
    end
    Production_S=Electricity_Data.Total_Production(IndexS(1):IndexS(22));
    Demand_S=Electricity_Data.Demand(IndexS(1):IndexS(22));
    Year_S=Electricity_Data.Year(IndexS(1):IndexS(22));
    
Brazil = input('Select seventh country:\n','s');                                  %Input Statements topic applied
    IndexB = find(strcmp(Electricity_Data.Country,Brazil));
    if numel(IndexB) == 0                                                              %Conditional Statements topic applied
       fprintf('The country you selected was not in the database.\n Please select a different country.\n');
    else  
    end
    Production_B=Electricity_Data.Total_Production(IndexB(1):IndexB(22));
    Demand_B=Electricity_Data.Demand(IndexB(1):IndexB(22));
    Year_B=Electricity_Data.Year(IndexB(1):IndexB(22));
    
India = input('Select eighth country:\n','s');                                  %Input Statements topic applied
    IndexI = find(strcmp(Electricity_Data.Country,India));
    if numel(IndexI) == 0                                                              %Conditional Statements topic applied
       fprintf('The country you selected was not in the database.\n Please select a different country.\n');
    else  
    end
    Production_I=Electricity_Data.Total_Production(IndexI(1):IndexI(22));
    Demand_I=Electricity_Data.Demand(IndexI(1):IndexI(22));
    Year_I=Electricity_Data.Year(IndexI(1):IndexI(22));
    
%plot the demand/production on subplots
subplot(2,1,1);
plot(Year_USA,Production_USA,Year_G,Production_G,Year_J,Production_J,Year_N,Production_N,Year_E,Production_E,Year_S,Production_S,Year_B,Production_B,Year_I,Production_I);
xlabel('Year');ylabel('Amount of Energy (kWh in millions');
title('Comparison of Production of Energy in Various Countries');
legend(USA,Germany,Japan,Nicaragua,Nigeria,South_Africa,Brazil,India);          %Subplot graphing topic applied

subplot(2,1,2);
plot(Year_USA,Demand_USA,Year_G,Demand_G,Year_J,Demand_J,Year_N,Demand_N,Year_E,Demand_E,Year_S,Demand_S,Year_B,Demand_B,Year_I,Demand_I);
xlabel('Year');ylabel('Amount of Energy (kWh in millions');
title('Comparison of Demand for Energy in Various Countries');
legend(USA,Germany,Japan,Nicaragua,Nigeria,South_Africa,Brazil,India);         %Subplot graphing topic applied