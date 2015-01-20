%% Lauren Leesman 
clear all ;
close all;
load Electricity_Data.mat;

United_States = input('Select first country:\n','s');           %Input Statements topic applied
        IndexUS = find(strcmp(Electricity_Data.Country,United_States));
         if numel(IndexUS) == 0                                 %Conditional Statements topic applied
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
         end

HydroUS= Electricity_Data.Hydro_Production(IndexUS(1):IndexUS(22)); %Hyrdo Production
SolarUS= Electricity_Data.Solar_Production(IndexUS(1):IndexUS(22)); %Solar Production
WindUS= Electricity_Data.Wind_Production(IndexUS(1):IndexUS(22)); %Wind Production
NuclearUS= Electricity_Data.Nuclear_Production(IndexUS(1):IndexUS(22)); %Nuclear Production
YearUS= Electricity_Data.Year(IndexUS(1):IndexUS(22));


Germany = input('Select first country:\n','s');                %Input Statements topic applied
        IndexG = find(strcmp(Electricity_Data.Country,Germany));
         if numel(IndexG) == 0                                  %Conditional Statements topic applied
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
         end

HydroG= Electricity_Data.Hydro_Production(IndexG(1):IndexG(22)); %Hyrdo Production
SolarG= Electricity_Data.Solar_Production(IndexG(1):IndexG(22)); %Solar Production
WindG= Electricity_Data.Wind_Production(IndexG(1):IndexG(22)); %Wind Production
NuclearG= Electricity_Data.Nuclear_Production(IndexG(1):IndexG(22)); %Nuclear Production
YearG= Electricity_Data.Year(IndexG(1):IndexG(22));



Japan = input('Select first country:\n','s');                %Input Statements topic applied
        IndexJ = find(strcmp(Electricity_Data.Country,Japan));
         if numel(IndexJ) == 0                                  %Conditional Statements topic applied
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
         end

HydroJ= Electricity_Data.Hydro_Production(IndexJ(1):IndexJ(22)); %Hyrdo Production
SolarJ= Electricity_Data.Solar_Production(IndexJ(1):IndexJ(22)); %Solar Production
WindJ= Electricity_Data.Wind_Production(IndexJ(1):IndexJ(22)); %Wind Production
NuclearJ= Electricity_Data.Nuclear_Production(IndexJ(1):IndexJ(22)); %Nuclear Production
YearJ= Electricity_Data.Year(IndexJ(1):IndexJ(22));



Nicaragua = input('Select first country:\n','s');                %Input Statements topic applied
        IndexNic = find(strcmp(Electricity_Data.Country,Nicaragua));
         if numel(IndexNic) == 0                                  %Conditional Statements topic applied
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
         end

HydroNic= Electricity_Data.Hydro_Production(IndexNic(1):IndexNic(22)); %Hyrdo Production
SolarNic= Electricity_Data.Solar_Production(IndexNic(1):IndexNic(22)); %Solar Production
WindNic= Electricity_Data.Wind_Production(IndexNic(1):IndexNic(22)); %Wind Production
NuclearNic= Electricity_Data.Nuclear_Production(IndexNic(1):IndexNic(22)); %Nuclear Production
YearNic= Electricity_Data.Year(IndexNic(1):IndexNic(22));



Nigeria = input('Select first country:\n','s');                %Input Statements topic applied
        IndexNi = find(strcmp(Electricity_Data.Country,Nigeria));
         if numel(IndexNi) == 0                                  %Conditional Statements topic applied
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
         end

HydroNi= Electricity_Data.Hydro_Production(IndexNi(1):IndexNi(22)); %Hyrdo Production
SolarNi= Electricity_Data.Solar_Production(IndexNi(1):IndexNi(22)); %Solar Production
WindNi= Electricity_Data.Wind_Production(IndexNi(1):IndexNi(22)); %Wind Production
NuclearNi= Electricity_Data.Nuclear_Production(IndexNi(1):IndexNi(22)); %Nuclear Production
YearNi= Electricity_Data.Year(IndexNi(1):IndexNi(22));


South_Africa = input('Select first country:\n','s');                %Input Statements topic applied
        IndexSA = find(strcmp(Electricity_Data.Country,South_Africa));
         if numel(IndexSA) == 0                                  %Conditional Statements topic applied
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
         end

HydroSA= Electricity_Data.Hydro_Production(IndexSA(1):IndexSA(22)); %Hyrdo Production
SolarSA= Electricity_Data.Solar_Production(IndexSA(1):IndexSA(22)); %Solar Production
WindSA= Electricity_Data.Wind_Production(IndexSA(1):IndexSA(22)); %Wind Production
NuclearSA= Electricity_Data.Nuclear_Production(IndexSA(1):IndexSA(22)); %Nuclear Production
YearSA= Electricity_Data.Year(IndexSA(1):IndexSA(22));



Brazil = input('Select first country:\n','s');                %Input Statements topic applied
        IndexB = find(strcmp(Electricity_Data.Country,Brazil));
         if numel(IndexB) == 0                                  %Conditional Statements topic applied
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
         end

HydroB= Electricity_Data.Hydro_Production(IndexB(1):IndexB(22)); %Hyrdo Production
SolarB= Electricity_Data.Solar_Production(IndexB(1):IndexB(22)); %Solar Production
WindB= Electricity_Data.Wind_Production(IndexB(1):IndexB(22)); %Wind Production
NuclearB= Electricity_Data.Nuclear_Production(IndexB(1):IndexB(22)); %Nuclear Production
YearB= Electricity_Data.Year(IndexB(1):IndexB(22));



India = input('Select first country:\n','s');                %Input Statements topic applied
        IndexI = find(strcmp(Electricity_Data.Country,India));
         if numel(IndexI) == 0                                  %Conditional Statements topic applied
            fprintf('The first country you selected was not on the database.\n     Please select a different country.\n');
         else  
         end

HydroI= Electricity_Data.Hydro_Production(IndexI(1):IndexI(22)); %Hyrdo Production
SolarI= Electricity_Data.Solar_Production(IndexI(1):IndexI(22)); %Solar Production
WindI= Electricity_Data.Wind_Production(IndexI(1):IndexI(22)); %Wind Production
NuclearI= Electricity_Data.Nuclear_Production(IndexI(1):IndexI(22)); %Nuclear Production
YearI= Electricity_Data.Year(IndexI(1):IndexI(22));



subplot(2,4,1);                                 %Graphing Topic Applied
plot(YearUS, HydroUS, YearUS, SolarUS, YearUS, WindUS, YearUS, NuclearUS);
xlim([1990 2011]);
xlabel('Year');
ylabel('Power Production (kWh in millions)');
legend('Hydro', 'Solar', 'Wind', 'Nuclear');
title('United States')

subplot(2,4,2);
plot(YearG, HydroG, YearG, SolarG, YearG, WindG, YearG, NuclearG);
xlim([1990 2011]);
xlabel('Year');
ylabel('Power Production (kWh in millions)');
legend('Hydro', 'Solar', 'Wind', 'Nuclear');

title('Germany')
subplot(2,4,3);
plot(YearJ, HydroJ, YearJ, SolarJ, YearJ, WindJ, YearJ, NuclearJ);
xlim([1990 2011]);
xlabel('Year');
ylabel('Power Production (kWh in millions)');
legend('Hydro', 'Solar', 'Wind', 'Nuclear');
title('Japan')

subplot(2,4,4);
plot(YearNic, HydroNic, YearNic, SolarNic, YearNic, WindNic, YearNic, NuclearNic);
xlim([1990 2011]);
xlabel('Year');
ylabel('Power Production (kWh in millions)');
legend('Hydro', 'Solar', 'Wind', 'Nuclear');
title('Nicaragua')

subplot(2,4,5);
plot(YearNi, HydroNi, YearNi, SolarNi, YearNi, WindNi, YearNi, NuclearNi);
xlim([1990 2011]);
xlabel('Year');
ylabel('Power Production (kWh in millions)');
legend('Hydro', 'Solar', 'Wind', 'Nuclear');
title('Nigeria')

subplot(2,4,6);
plot(YearSA, HydroSA, YearSA, SolarSA, YearSA, WindSA, YearSA, NuclearSA);
xlim([1990 2011]);
xlabel('Year');
ylabel('Power Production (kWh in millions)');
legend('Hydro', 'Solar', 'Wind', 'Nuclear');
title('South Africa')

subplot(2,4,7);
plot(YearB, HydroB, YearB, SolarB, YearB, WindB, YearB, NuclearB);
xlim([1990 2011]);
xlabel('Year');
ylabel('Power Production (kWh in millions)');
legend('Hydro', 'Solar', 'Wind', 'Nuclear');
title('Brazil');

subplot(2,4,8);
plot(YearI, HydroI, YearI, SolarI, YearI, WindI, YearI, NuclearI);
xlim([1990 2011]);
xlabel('Year');
ylabel('Power Production (kWh in millions)');
legend('Hydro', 'Solar', 'Wind', 'Nuclear');
title('India')

