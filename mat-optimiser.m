classdef optimiserC_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        GridLayout                      matlab.ui.container.GridLayout
        ConnectButton                   matlab.ui.control.Button
        TitleText                       matlab.ui.control.Label
        ConnectText                     matlab.ui.control.Label
        HPLCButton                      matlab.ui.control.Button
        VariableLabel1                  matlab.ui.control.Label
        VariableLabel2                  matlab.ui.control.Label
        SelectOptimisationVariablesButton  matlab.ui.control.Button
        LowerLimitLabel                 matlab.ui.control.Label
        UpperLimitLabel                 matlab.ui.control.Label
        VariableLabel3                  matlab.ui.control.Label
        VariableLabel4                  matlab.ui.control.Label
        Var1Low                         matlab.ui.control.NumericEditField
        Var2Low                         matlab.ui.control.NumericEditField
        Var3Low                         matlab.ui.control.NumericEditField
        Var4Low                         matlab.ui.control.NumericEditField
        Var1Hi                          matlab.ui.control.NumericEditField
        Var2Hi                          matlab.ui.control.NumericEditField
        Var3Hi                          matlab.ui.control.NumericEditField
        Var4Hi                          matlab.ui.control.NumericEditField
        VariableLabel5                  matlab.ui.control.Label
        Var5Low                         matlab.ui.control.NumericEditField
        Var5Hi                          matlab.ui.control.NumericEditField
        VariableHelp                    matlab.ui.control.Label
        ConfirmLimitsButton             matlab.ui.control.Button
        SaveLimitsLabel                 matlab.ui.control.Label
        ScaleSelect                     matlab.ui.control.Spinner
        ScaleLabel                      matlab.ui.control.Label
        Step1Label                      matlab.ui.control.Label
        Step1TitleLabel                 matlab.ui.control.Label
        SpecifyChemicalInputsLabel_2    matlab.ui.control.Label
        Step2Label_2                    matlab.ui.control.Label
        DefineOptimisationSpaceLabel    matlab.ui.control.Label
        Step4Label                      matlab.ui.control.Label
        SelectReactionScaleLabel        matlab.ui.control.Label
        LaunchFlowCommanderButton       matlab.ui.control.Button
        AppTitleLabel                   matlab.ui.control.Label
        Step3Label                      matlab.ui.control.Label
        Step5Label_2                    matlab.ui.control.Label
        SelectOptimisationTargetsLabel  matlab.ui.control.Label
        TitleText_2                     matlab.ui.control.Label
        Objective1DropDown              matlab.ui.control.DropDown
        Objective2DropDown              matlab.ui.control.DropDown
        Step6Label_2                    matlab.ui.control.Label
        TrainOptimisationModelLabel     matlab.ui.control.Label
        TitleText_5                     matlab.ui.control.Label
        StartOptimisationButton         matlab.ui.control.Button
        StatusBox                       matlab.ui.control.Label
        StatusLabel                     matlab.ui.control.Label
        LastStatusLabel                 matlab.ui.control.Label
        StatusTime                      matlab.ui.control.Label
        OptimisationNumLabel            matlab.ui.control.Label
        ReactNum                        matlab.ui.control.Label
        PauseButton                     matlab.ui.control.Button
        ResumeButton                    matlab.ui.control.Button
        PauseBox                        matlab.ui.control.Label
        ExperimentalConditionsLabel     matlab.ui.control.Label
        VariableLabel1B                 matlab.ui.control.Label
        VariableLabel2B                 matlab.ui.control.Label
        VariableLabel3B                 matlab.ui.control.Label
        VariableLabel4B                 matlab.ui.control.Label
        VariableLabel5B                 matlab.ui.control.Label
        CurrentLabel                    matlab.ui.control.Label
        TargetObjective1Label           matlab.ui.control.Label
        TargetObjective2Label           matlab.ui.control.Label
        ConfirmObjectiveFunctionsButton  matlab.ui.control.Button
        ConfirmObjectives               matlab.ui.control.Label
        TitleText_7                     matlab.ui.control.Label
        ReactantSolutionsButton         matlab.ui.control.Button
        ConfirmReactants                matlab.ui.control.Label
        ConfirmAnalysis                 matlab.ui.control.Label
        ReactionOutputsLabel            matlab.ui.control.Label
        OptimalLabel                    matlab.ui.control.Label
        TrainingObj1                    matlab.ui.control.Label
        TrainingObj2                    matlab.ui.control.Label
        MLObj1                          matlab.ui.control.Label
        MLObj2                          matlab.ui.control.Label
        TrainingOpt1                    matlab.ui.control.Label
        TrainingOpt2                    matlab.ui.control.Label
        MLOpt1                          matlab.ui.control.Label
        MLOpt2                          matlab.ui.control.Label
        GeneratePlotButton              matlab.ui.control.Button
        TrainSelect                     matlab.ui.control.Spinner
        TrainLabel                      matlab.ui.control.Label
        StartTrainingButton             matlab.ui.control.Button
        GenerateAutoExperimentsButton   matlab.ui.control.Button
        Step7Label                      matlab.ui.control.Label
        MachineLearningOptimisationLabel  matlab.ui.control.Label
        ConfirmTraining                 matlab.ui.control.Label
        SystemState                     matlab.ui.control.Label
        TrainingNumLabel                matlab.ui.control.Label
        TrainNum                        matlab.ui.control.Label
        TrainingNumLabel_2              matlab.ui.control.Label
        TrainingNumLabel_3              matlab.ui.control.Label
        TrainingDataButton              matlab.ui.control.Button
        SaveTrainingData                matlab.ui.control.Button
        EnterexistingtrainingdataintoExcelfileandsavebelowLabel  matlab.ui.control.Label
        ManualLabel                     matlab.ui.control.Label
        AutoLabel                       matlab.ui.control.Label
        LastReactionLabel               matlab.ui.control.Label
        LastReactionLabel_2             matlab.ui.control.Label
        TrainingLast1                   matlab.ui.control.Label
        TrainingLast2                   matlab.ui.control.Label
        MLLast1                         matlab.ui.control.Label
        MLLast2                         matlab.ui.control.Label
    end

    
    properties (Access = public)
		%% REDACTED
        prodrt
        isrt
        prodrf
        prodmw
        isconc
        reactconc
        hplcdir
        optparam
        notuse
        lb
        ub
        FCRem
        FCRemCSV
        reactscale
        obj1
        obj2
        objparam
        X
        Y
        timenow
        timestr
        TSEMOpath
        rxnnum
        rxnstr
        rxnplot
        optheader
        optdisp
        pausestatus
        pausestatusbox
        CondLabel1
        CondLabel2
        CondLabel3
        CondLabel4
        CondLabel5
        LastLabel1
        LastLabel2
        LastLabel3
        LastLabel4
        LastLabel5
        obj1val
        obj2val
        isrunconc
        reactrunconc
        prodrunconc
        tresrun
        temprun
        voltitles
        reactvol
        pumpacost
        pumpbcost
        pumpccost
        pumpdcost
        pumpatotvolml
        pumpbtotvolml
        pumpctotvolml
        pumpdtotvolml
        pumpatotvol
        pumpbtotvol
        pumpctotvol
        pumpdtotvol
        pumpaismass
        pumpareactmass
        pumpbreactmass
        pumpcreactmass
        pumpdreactmass
        pumpaismw
        pumpareactmw
        pumpbreactmw
        pumpcreactmw
        pumpdreactmw
        pumpaiscost
        pumpareactcost
        pumpbreactcost
        pumpcreactcost
        pumpdreactcost
        pumpareactcostg
        pumpbreactcostg
        pumpcreactcostg
        pumpdreactcostg
        pumpaisdens
        pumpaisvol
        pumpareactvol
        pumpbreactvol
        pumpcreactvol
        pumpdreactvol
        pumpaisvolml
        pumpareactvolml
        pumpbreactvolml
        pumpcreactvolml
        pumpdreactvolml
        pumpareactdens
        pumpbreactdens
        pumpcreactdens
        pumpdreactdens
        pumpasolvmw
        pumpbsolvmw
        pumpcsolvmw
        pumpdsolvmw
        pumpasolvcost
        pumpbsolvcost
        pumpcsolvcost
        pumpdsolvcost
        pumpasolvcostkg
        pumpbsolvcostkg
        pumpcsolvcostkg
        pumpdsolvcostkg
        pumpasolvcostg
        pumpbsolvcostg
        pumpcsolvcostg
        pumpdsolvcostg
        pumpasolvdens
        pumpbsolvdens
        pumpcsolvdens
        pumpdsolvdens
        pumpasolvvol
        pumpbsolvvol
        pumpcsolvvol
        pumpdsolvvol
        pumpasolvvolml
        pumpbsolvvolml
        pumpcsolvvolml
        pumpdsolvvolml
        pumpasolvconc
        pumpbsolvconc
        pumpcsolvconc
        pumpdsolvconc
        pumpasolvmass
        pumpbsolvmass
        pumpcsolvmass
        pumpdsolvmass
        pumpaisconc
        pumpareactconc
        pumpbreactconc
        pumpcreactconc
        pumpdreactconc
        totalrunvol
        pumparunvol
        pumpbrunvol
        pumpcrunvol
        pumpdrunvol
        pumparunmol
        pumpbrunmol
        pumpcrunmol
        pumpdrunmol
        isrunmol
        ismol
        pumpamol
        pumpbmol
        pumpcmol
        pumpdmol
        pumpbeq
        pumpceq
        pumpdeq
        pumpacat
        pumpbcat
        pumpccat
        pumpdcat
        yieldlimitmol
        yieldlimitconc
        yieldfunc
        styfunc
        efactorfunc
        costfunc
        trainingopt
        trainingopt1
        trainingopt2
        expopt
        mlopt
        mlopt1
        mlopt2
        y1trainplot
        y2trainplot
        y1optplot
        y2optplot
        tresrunhr
        trainexpnum
        numvar
        n
        rt
        X_lhs
        trainnum
        trainopt
        exptrain
        trainstr
        pumparunconc
        pumpbrunconc
        pumpcrunconc
        pumpdrunconc
        allrunconc
        runvol
        voltable
        peaktitles
        peakareas
        runareas
        peaktable
        autotrain
        lastout1
        lastout2
        lastout
        trainingoptmin
        mloptmin
        pumparunsolvconc
        pumpbrunsolvconc
        pumpcrunsolvconc
        pumpdrunsolvconc
        pumparunsolvmol
        pumpbrunsolvmol
        pumpcrunsolvmol
        pumpdrunsolvmol
        optout
        pumpaprompt
        pumpbprompt
        pumpcprompt
        pumpdprompt
        pumpapromptexp
        pumpbpromptexp
        pumpcpromptexp
        pumpdpromptexp
        hplcprompt
        hplcpromptexp
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            drawnow;
            app.UIFigure.WindowState = 'maximized';
            app.TSEMOpath = addpath('TS-EMO-master','TS-EMO V1');
            app.FCRem = NET.addAssembly('FCRemote');
            app.FCRemCSV = NET.addAssembly('FCRemoteCSV');
            app.StatusBox.Text = 'Optimisation Setup. Please proceed through the steps to commence optimisation.';
            
            app.rxnnum = 1;
            app.trainnum = 1;
                        
        end

        % Button pushed function: ConnectButton
        function ConnectButtonPushed(app, event)
			%% REDACTED
        end

        % Button pushed function: HPLCButton
        function HPLCButtonPushed(app, event)
            app.hplcprompt = {'Enter HPLC Report Directory: ', 'Enter INTERNAL STANDARD HPLC retention time (mins):',...
                'Enter PRODUCT HPLC retention time (mins):', 'Enter PRODUCT HPLC response factor:', 'Enter PRODUCT molar mass (g/mol):',};
            dlgtitle = 'Analytical Parameters';
            dims = [1 52];
            definput = {'C:\Chem32','6.0', '3.5', '100', '146.2'};
            
            app.hplcpromptexp = app.hplcprompt';
            
            app.rt = inputdlg(app.hplcprompt,dlgtitle,dims,definput);
            
            app.isrt = str2double(app.rt(2,1));
            app.prodrt = str2double(app.rt(3,1));
            app.prodrf = str2double(app.rt(4,1));
            app.prodmw = str2double(app.rt(5,1));
            app.hplcdir = string(app.rt(1,1));
            
            app.ConfirmAnalysis.Text = 'Analytical Parameters Saved';
            
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            
        end

        % Button pushed function: SelectOptimisationVariablesButton
        function SelectOptimisationVariablesButtonPushed(app, event)
            prompt = {'Variable 1:','Variable 2:','Variable 3:','Variable 4:', 'Variable 5:'};
            dlgtitle = 'Enter Optimisation Variables:';
            dims = [1 52];
            definput = {'Stoichiometric Ratio (Pump B)','Stoichiometric Ratio (Pump C)','Stoichiometric Ratio (Pump D)',...
                'Reactor Temperature (°C)', 'Residence Time (mins)'};
            app.optparam = inputdlg(prompt,dlgtitle,dims,definput);
            
            app.notuse = '[Not in use]';
            app.optheader = {'Stoichiometric Ratio B', 'Stoichiometric Ratio C', 'Stoichiometric Ratio D', 'Reactor Temperature 4','Residence Time'};
            
            if strlength(app.optparam(1,1)) < 2
                app.optparam{1,1} = app.notuse;
            else
                app.Var1Low.Value = 0.2;
                app.Var1Hi.Value = 5;
            end
            
            if strlength(app.optparam(2,1)) < 2
                app.optparam{2,1} = app.notuse;
            else
                app.Var2Low.Value = 0.2;
                app.Var2Hi.Value = 5;
            end
            
            if strlength(app.optparam(3,1)) < 2
                app.optparam{3,1} = app.notuse;
            else
                app.Var3Low.Value = 0.2;
                app.Var3Hi.Value = 5;
            end
            
            if strlength(app.optparam(4,1)) < 2
                app.optparam{4,1} = app.notuse;
            else
                app.Var4Low.Value = 30;
                app.Var4Hi.Value = 150;
            end
            
            if strlength(app.optparam(5,1)) < 2
                app.optparam{5,1} = app.notuse;
            else
                app.Var5Low.Value = 5;
                app.Var5Hi.Value = 30;
            end
            
            app.VariableLabel1.Text = app.optparam{1,1};
            app.VariableLabel2.Text = app.optparam{2,1};
            app.VariableLabel3.Text = app.optparam{3,1};
            app.VariableLabel4.Text = app.optparam{4,1};
            app.VariableLabel5.Text = app.optparam{5,1};
            
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            
        end

        % Button pushed function: ConfirmLimitsButton
        function ConfirmLimitsButtonPushed(app, event)
            
            app.lb(1) = app.Var1Low.Value;
            app.lb(2) = app.Var2Low.Value;
            app.lb(3) = app.Var3Low.Value;
            app.lb(4) = app.Var4Low.Value;
            app.lb(5) = app.Var5Low.Value;
            
            app.ub(1) = app.Var1Hi.Value;
            app.ub(2) = app.Var2Hi.Value;
            app.ub(3) = app.Var3Hi.Value;
            app.ub(4) = app.Var4Hi.Value;
            app.ub(5) = app.Var5Hi.Value;
            
            
            if strcmp(app.notuse, app.optparam{5,1}) == 1
                app.lb(5) = [];
                app.ub(5) = [];
                app.optparam(5) = [];
                app.optheader(5) = [];
            end
            
            if strcmp(app.notuse, app.optparam{4,1}) == 1
                app.lb(4) = [];
                app.ub(4) = [];
                app.optparam(4) = [];
                app.optheader(4) = [];
            end
            
            if strcmp(app.notuse, app.optparam{3,1}) == 1
                app.lb(3) = [];
                app.ub(3) = [];
                app.optparam(3) = [];
                app.optheader(3) = [];
            end
            
            if strcmp(app.notuse, app.optparam{2,1}) == 1
                app.lb(2) = [];
                app.ub(2) = [];
                app.optparam(2) = [];
                app.optheader(2) = [];
            end
            
            if strcmp(app.notuse, app.optparam{1,1}) == 1
                app.lb(1) = [];
                app.ub(1) = [];
                app.optparam(1) = [];
                app.optheader(1) = [];
            end
            
            app.optdisp = app.optparam;
            
            app.numvar = length(app.lb);
            numvar = num2str(app.numvar);
            vartxt = ' Optimisation Limits Saved';
            numvartxt = horzcat(numvar,vartxt);
            app.SaveLimitsLabel.Text = numvartxt;
            app.optparam = app.optparam';
            
            app.X = NaN(1,app.numvar);
            app.Y = [NaN,NaN];
            
            if length(app.optdisp) < 2
                app.optdisp{5,1} = '';
                app.optdisp{4,1} = '';
                app.optdisp{3,1} = '';
                app.optdisp{2,1} = '';
                
                app.CondLabel1 = uilabel(app.GridLayout);
                app.CondLabel1.Layout.Row = 9;
                app.CondLabel1.Layout.Column = 14;
                app.CondLabel1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel1.HorizontalAlignment = 'center';
                app.CondLabel1.FontSize = 13;
                app.CondLabel1.FontWeight = 'bold';
                app.CondLabel1.FontColor = [1 1 1];
                app.CondLabel1.Text = 'Complete Setup';
                
                app.LastLabel1 = uilabel(app.GridLayout);
                app.LastLabel1.Layout.Row = 9;
                app.LastLabel1.Layout.Column = 15;
                app.LastLabel1.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel1.HorizontalAlignment = 'center';
                app.LastLabel1.FontSize = 13;
                app.LastLabel1.FontWeight = 'bold';
                app.LastLabel1.FontColor = [1 1 1];
                app.LastLabel1.Text = 'Waiting...';
                
            elseif length(app.optdisp) < 3
                app.optdisp{5,1} = '';
                app.optdisp{4,1} = '';
                app.optdisp{3,1} = '';
                
                app.CondLabel1 = uilabel(app.GridLayout);
                app.CondLabel1.Layout.Row = 9;
                app.CondLabel1.Layout.Column = 14;
                app.CondLabel1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel1.HorizontalAlignment = 'center';
                app.CondLabel1.FontSize = 13;
                app.CondLabel1.FontWeight = 'bold';
                app.CondLabel1.FontColor = [1 1 1];
                app.CondLabel1.Text = 'Complete Setup';
                
                app.CondLabel2 = uilabel(app.GridLayout);
                app.CondLabel2.Layout.Row = 10;
                app.CondLabel2.Layout.Column = 14;
                app.CondLabel2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel2.HorizontalAlignment = 'center';
                app.CondLabel2.FontSize = 13;
                app.CondLabel2.FontWeight = 'bold';
                app.CondLabel2.FontColor = [1 1 1];
                app.CondLabel2.Text = 'Complete Setup';
                
                app.LastLabel1 = uilabel(app.GridLayout);
                app.LastLabel1.Layout.Row = 9;
                app.LastLabel1.Layout.Column = 15;
                app.LastLabel1.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel1.HorizontalAlignment = 'center';
                app.LastLabel1.FontSize = 13;
                app.LastLabel1.FontWeight = 'bold';
                app.LastLabel1.FontColor = [1 1 1];
                app.LastLabel1.Text = 'Waiting...';
                
                app.LastLabel2 = uilabel(app.GridLayout);
                app.LastLabel2.Layout.Row = 10;
                app.LastLabel2.Layout.Column = 15;
                app.LastLabel2.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel2.HorizontalAlignment = 'center';
                app.LastLabel2.FontSize = 13;
                app.LastLabel2.FontWeight = 'bold';
                app.LastLabel2.FontColor = [1 1 1];
                app.LastLabel2.Text = 'Waiting...';
                
            elseif length(app.optdisp) < 4
                app.optdisp{5,1} = '';
                app.optdisp{4,1} = '';
                
                app.CondLabel1 = uilabel(app.GridLayout);
                app.CondLabel1.Layout.Row = 9;
                app.CondLabel1.Layout.Column = 14;
                app.CondLabel1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel1.HorizontalAlignment = 'center';
                app.CondLabel1.FontSize = 13;
                app.CondLabel1.FontWeight = 'bold';
                app.CondLabel1.FontColor = [1 1 1];
                app.CondLabel1.Text = 'Complete Setup';
                
                app.CondLabel2 = uilabel(app.GridLayout);
                app.CondLabel2.Layout.Row = 10;
                app.CondLabel2.Layout.Column = 14;
                app.CondLabel2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel2.HorizontalAlignment = 'center';
                app.CondLabel2.FontSize = 13;
                app.CondLabel2.FontWeight = 'bold';
                app.CondLabel2.FontColor = [1 1 1];
                app.CondLabel2.Text = 'Complete Setup';
                
                app.CondLabel3 = uilabel(app.GridLayout);
                app.CondLabel3.Layout.Row = 11;
                app.CondLabel3.Layout.Column = 14;
                app.CondLabel3.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel3.HorizontalAlignment = 'center';
                app.CondLabel3.FontSize = 13;
                app.CondLabel3.FontWeight = 'bold';
                app.CondLabel3.FontColor = [1 1 1];
                app.CondLabel3.Text = 'Complete Setup';
                
                app.LastLabel1 = uilabel(app.GridLayout);
                app.LastLabel1.Layout.Row = 9;
                app.LastLabel1.Layout.Column = 15;
                app.LastLabel1.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel1.HorizontalAlignment = 'center';
                app.LastLabel1.FontSize = 13;
                app.LastLabel1.FontWeight = 'bold';
                app.LastLabel1.FontColor = [1 1 1];
                app.LastLabel1.Text = 'Waiting...';
                
                app.LastLabel2 = uilabel(app.GridLayout);
                app.LastLabel2.Layout.Row = 10;
                app.LastLabel2.Layout.Column = 15;
                app.LastLabel2.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel2.HorizontalAlignment = 'center';
                app.LastLabel2.FontSize = 13;
                app.LastLabel2.FontWeight = 'bold';
                app.LastLabel2.FontColor = [1 1 1];
                app.LastLabel2.Text = 'Waiting...';
                
                app.LastLabel3 = uilabel(app.GridLayout);
                app.LastLabel3.Layout.Row = 11;
                app.LastLabel3.Layout.Column = 15;
                app.LastLabel3.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel3.HorizontalAlignment = 'center';
                app.LastLabel3.FontSize = 13;
                app.LastLabel3.FontWeight = 'bold';
                app.LastLabel3.FontColor = [1 1 1];
                app.LastLabel3.Text = 'Waiting...';
                
            elseif length(app.optdisp) < 5
                app.optdisp{5,1} = '';
                
                app.CondLabel1 = uilabel(app.GridLayout);
                app.CondLabel1.Layout.Row = 9;
                app.CondLabel1.Layout.Column = 14;
                app.CondLabel1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel1.HorizontalAlignment = 'center';
                app.CondLabel1.FontSize = 13;
                app.CondLabel1.FontWeight = 'bold';
                app.CondLabel1.FontColor = [1 1 1];
                app.CondLabel1.Text = 'Complete Setup';
                
                app.CondLabel2 = uilabel(app.GridLayout);
                app.CondLabel2.Layout.Row = 10;
                app.CondLabel2.Layout.Column = 14;
                app.CondLabel2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel2.HorizontalAlignment = 'center';
                app.CondLabel2.FontSize = 13;
                app.CondLabel2.FontWeight = 'bold';
                app.CondLabel2.FontColor = [1 1 1];
                app.CondLabel2.Text = 'Complete Setup';
                
                app.CondLabel3 = uilabel(app.GridLayout);
                app.CondLabel3.Layout.Row = 11;
                app.CondLabel3.Layout.Column = 14;
                app.CondLabel3.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel3.HorizontalAlignment = 'center';
                app.CondLabel3.FontSize = 13;
                app.CondLabel3.FontWeight = 'bold';
                app.CondLabel3.FontColor = [1 1 1];
                app.CondLabel3.Text = 'Complete Setup';
                
                app.CondLabel4 = uilabel(app.GridLayout);
                app.CondLabel4.Layout.Row = 12;
                app.CondLabel4.Layout.Column = 14;
                app.CondLabel4.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel4.HorizontalAlignment = 'center';
                app.CondLabel4.FontSize = 13;
                app.CondLabel4.FontWeight = 'bold';
                app.CondLabel4.FontColor = [1 1 1];
                app.CondLabel4.Text = 'Complete Setup';
                
                app.LastLabel1 = uilabel(app.GridLayout);
                app.LastLabel1.Layout.Row = 9;
                app.LastLabel1.Layout.Column = 15;
                app.LastLabel1.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel1.HorizontalAlignment = 'center';
                app.LastLabel1.FontSize = 13;
                app.LastLabel1.FontWeight = 'bold';
                app.LastLabel1.FontColor = [1 1 1];
                app.LastLabel1.Text = 'Waiting...';
                
                app.LastLabel2 = uilabel(app.GridLayout);
                app.LastLabel2.Layout.Row = 10;
                app.LastLabel2.Layout.Column = 15;
                app.LastLabel2.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel2.HorizontalAlignment = 'center';
                app.LastLabel2.FontSize = 13;
                app.LastLabel2.FontWeight = 'bold';
                app.LastLabel2.FontColor = [1 1 1];
                app.LastLabel2.Text = 'Waiting...';
                
                app.LastLabel3 = uilabel(app.GridLayout);
                app.LastLabel3.Layout.Row = 11;
                app.LastLabel3.Layout.Column = 15;
                app.LastLabel3.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel3.HorizontalAlignment = 'center';
                app.LastLabel3.FontSize = 13;
                app.LastLabel3.FontWeight = 'bold';
                app.LastLabel3.FontColor = [1 1 1];
                app.LastLabel3.Text = 'Waiting...';
                
                app.LastLabel4 = uilabel(app.GridLayout);
                app.LastLabel4.Layout.Row = 12;
                app.LastLabel4.Layout.Column = 15;
                app.LastLabel4.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel4.HorizontalAlignment = 'center';
                app.LastLabel4.FontSize = 13;
                app.LastLabel4.FontWeight = 'bold';
                app.LastLabel4.FontColor = [1 1 1];
                app.LastLabel4.Text = 'Waiting...';
                
            else
                
                app.CondLabel1 = uilabel(app.GridLayout);
                app.CondLabel1.Layout.Row = 9;
                app.CondLabel1.Layout.Column = 14;
                app.CondLabel1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel1.HorizontalAlignment = 'center';
                app.CondLabel1.FontSize = 13;
                app.CondLabel1.FontWeight = 'bold';
                app.CondLabel1.FontColor = [1 1 1];
                app.CondLabel1.Text = 'Complete Setup';
                
                app.CondLabel2 = uilabel(app.GridLayout);
                app.CondLabel2.Layout.Row = 10;
                app.CondLabel2.Layout.Column = 14;
                app.CondLabel2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel2.HorizontalAlignment = 'center';
                app.CondLabel2.FontSize = 13;
                app.CondLabel2.FontWeight = 'bold';
                app.CondLabel2.FontColor = [1 1 1];
                app.CondLabel2.Text = 'Complete Setup';
                
                app.CondLabel3 = uilabel(app.GridLayout);
                app.CondLabel3.Layout.Row = 11;
                app.CondLabel3.Layout.Column = 14;
                app.CondLabel3.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel3.HorizontalAlignment = 'center';
                app.CondLabel3.FontSize = 13;
                app.CondLabel3.FontWeight = 'bold';
                app.CondLabel3.FontColor = [1 1 1];
                app.CondLabel3.Text = 'Complete Setup';
                
                app.CondLabel4 = uilabel(app.GridLayout);
                app.CondLabel4.Layout.Row = 12;
                app.CondLabel4.Layout.Column = 14;
                app.CondLabel4.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel4.HorizontalAlignment = 'center';
                app.CondLabel4.FontSize = 13;
                app.CondLabel4.FontWeight = 'bold';
                app.CondLabel4.FontColor = [1 1 1];
                app.CondLabel4.Text = 'Complete Setup';
                
                app.CondLabel5 = uilabel(app.GridLayout);
                app.CondLabel5.BackgroundColor = [1 1 1];
                app.CondLabel5.Layout.Row = 13;
                app.CondLabel5.Layout.Column = 14;
                app.CondLabel5.BackgroundColor = [0.4784 0.3608 0.6902];
                app.CondLabel5.HorizontalAlignment = 'center';
                app.CondLabel5.FontSize = 13;
                app.CondLabel5.FontWeight = 'bold';
                app.CondLabel5.FontColor = [1 1 1];
                app.CondLabel5.Text = 'Complete Setup';
                
                app.LastLabel1 = uilabel(app.GridLayout);
                app.LastLabel1.Layout.Row = 9;
                app.LastLabel1.Layout.Column = 15;
                app.LastLabel1.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel1.HorizontalAlignment = 'center';
                app.LastLabel1.FontSize = 13;
                app.LastLabel1.FontWeight = 'bold';
                app.LastLabel1.FontColor = [1 1 1];
                app.LastLabel1.Text = 'Waiting...';
                
                app.LastLabel2 = uilabel(app.GridLayout);
                app.LastLabel2.Layout.Row = 10;
                app.LastLabel2.Layout.Column = 15;
                app.LastLabel2.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel2.HorizontalAlignment = 'center';
                app.LastLabel2.FontSize = 13;
                app.LastLabel2.FontWeight = 'bold';
                app.LastLabel2.FontColor = [1 1 1];
                app.LastLabel2.Text = 'Waiting...';
                
                app.LastLabel3 = uilabel(app.GridLayout);
                app.LastLabel3.Layout.Row = 11;
                app.LastLabel3.Layout.Column = 15;
                app.LastLabel3.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel3.HorizontalAlignment = 'center';
                app.LastLabel3.FontSize = 13;
                app.LastLabel3.FontWeight = 'bold';
                app.LastLabel3.FontColor = [1 1 1];
                app.LastLabel3.Text = 'Waiting...';
                
                app.LastLabel4 = uilabel(app.GridLayout);
                app.LastLabel4.Layout.Row = 12;
                app.LastLabel4.Layout.Column = 15;
                app.LastLabel4.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel4.HorizontalAlignment = 'center';
                app.LastLabel4.FontSize = 13;
                app.LastLabel4.FontWeight = 'bold';
                app.LastLabel4.FontColor = [1 1 1];
                app.LastLabel4.Text = 'Waiting...';
                
                app.LastLabel5 = uilabel(app.GridLayout);
                app.LastLabel5.Layout.Row = 13;
                app.LastLabel5.Layout.Column = 15;
                app.LastLabel5.BackgroundColor = [0.65,0.65,0.65];
                app.LastLabel5.HorizontalAlignment = 'center';
                app.LastLabel5.FontSize = 13;
                app.LastLabel5.FontWeight = 'bold';
                app.LastLabel5.FontColor = [1 1 1];
                app.LastLabel5.Text = 'Waiting...';
                
            end
            
            app.VariableLabel1B.Text = app.optdisp{1,1};
            app.VariableLabel2B.Text = app.optdisp{2,1};
            app.VariableLabel3B.Text = app.optdisp{3,1};
            app.VariableLabel4B.Text = app.optdisp{4,1};
            app.VariableLabel5B.Text = app.optdisp{5,1};
            
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
        end

        % Button pushed function: LaunchFlowCommanderButton
        function LaunchFlowCommanderButtonPushed(app, event)
			%% REDACTED
        end

        % Value changed function: ScaleSelect
        function ScaleSelectValueChanged(app, event)
            app.reactscale = app.ScaleSelect.Value;
        end

        % Callback function
        function GenerateExcelFileButtonPushed(app, event)
            app.objparam = {app.obj1, app.obj2};
            xlswrite("trainingdata.xlsx",app.optparam,'Conditions');
            xlswrite("trainingdata.xlsx",app.objparam,'Outputs');
            xlswrite("optimisationdata.xlsx",app.optparam,'Conditions');
            xlswrite("optimisationdata.xlsx",app.objparam,'Outputs');
            winopen(fullfile("trainingdata.xlsx"));
        end

        % Value changed function: Objective1DropDown
        function Objective1DropDownValueChanged(app, event)
            app.obj1 = app.Objective1DropDown.Value;
        end

        % Value changed function: Objective2DropDown
        function Objective2DropDownValueChanged(app, event)
            app.obj2 = app.Objective2DropDown.Value;
        end

        % Callback function
        function ConfirmTrainingDataInputButtonPushed(app, event)
            warning('OFF', 'MATLAB:table:ModifiedAndSavedVarnames')
            
            app.X = readtable("trainingdata.xlsx",'Sheet','Conditions');
            app.X = table2array(app.X);
            app.Y = readtable("trainingdata.xlsx",'Sheet','Outputs');
            app.Y = table2array(app.Y);
            
            app.y1trainplot = app.Y(:,1);
            app.y2trainplot = app.Y(:,2);
            
            if contains(app.obj1,'Yield')
                app.y1trainplot = -app.y1trainplot;
            end
            
            if contains(app.obj2,'Yield')
                app.y2trainplot = -app.y1trainplot;
            end
            
            if contains(app.obj1,'STY')
                app.y1trainplot = -app.y1trainplot;
            end
            
            if contains(app.obj2,'STY')
                app.y2trainplot = -app.y2trainplot;
            end
            
            if contains(app.obj1,'EFactor')
                app.y1trainplot = -app.y1trainplot;
            end
            
            if contains(app.obj2,'Efactor')
                app.y2trainplot = -app.y2trainplot;
            end
            
            app.trainingopt = min(app.Y);
            app.trainingopt1 = app.trainingopt(1);
            app.trainingopt2 = app.trainingopt(2);
            
            if app.trainingopt1 < 0
                app.trainingopt1 = -app.trainingopt1;
            end
            
            if app.trainingopt2 < 0
                app.trainingopt2 = -app.trainingopt2;
            end
            
            app.trainingopt1 = num2str(app.trainingopt1);
            app.trainingopt2 = num2str(app.trainingopt2);
            
            app.TrainingOpt1.Text = app.trainingopt1;
            app.TrainingOpt2.Text = app.trainingopt2;
            
            app.ConfirmTrainingLabel.Text = 'Training Data Acquired';
            
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            
        end

        % Button pushed function: StartOptimisationButton
        function StartOptimisationButtonPushed(app, event)
            
            app.StatusBox.Text = 'Initiating Optimisation...';
            
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            
            app.SystemState.Text = 'Optimisation';
            app.SystemState.BackgroundColor = [0.4196 0.6902 0.3608];
            
            drawnow;
            
                X = app.X;
                Y = app.Y;
                lb = app.lb;
                ub = app.ub;
            
            hplcdir = app.hplcdir;
            prodrt = app.prodrt;
            isrt = app.isrt;
            
            app.reactscale = app.ScaleSelect.Value;
            app.pumparunvol = app.reactscale/1000;
            app.pumparunmol = app.pumpareactconc*app.pumparunvol;
            app.isrunmol = app.pumpaisconc*app.pumparunvol;
            
            fixheader = {'Reagent Use','Stoichiometric Ratio A', 'Whole Peak'};
            app.reactscale = num2str(app.ScaleSelect.Value);
            fixvar = {app.reactscale,'1','FALSE'};
            fixvar = vertcat(fixheader, fixvar);
            
            app.objparam = {app.obj1, app.obj2};
            app.voltitles = ["Pump A Volume (L)","Pump B Volume (L)","Pump C Volume (L)","Pump D Volume (L)",];
            app.peaktitles = ["Product Area", "IS Area"];
            
            writecell(app.optparam,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Conditions','Range','A1');
            pause(2);
            writecell(app.objparam,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Outputs','Range','A1');
            pause(2);
            writecell(app.objparam,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Results','Range','A1');
            pause(2);
            writematrix(app.peaktitles,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','HPLC Peak Areas','Range','A1');
            pause(2);
            writematrix(app.voltitles,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Reaction Volumes','Range','A1');
            
            writecell(app.pumpapromptexp,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Pump A Inputs','Range','A1');
            pause(2);
            writecell(app.pumpamol,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Pump A Inputs','Range','B1');
            pause(2);
            
            for i = 1:length(app.optparam)
                if contains(app.optparam{1,i}, "Pump B")
                    writecell(app.pumpbpromptexp,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Pump B Inputs','Range','A1');
                    pause(2);
                    writecell(app.pumpbmol,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Pump B Inputs','Range','B1');
                    pause(2);
                elseif contains(app.optparam{1,i}, "Pump C")
                    writecell(app.pumpcpromptexp,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Pump C Inputs','Range','A1');
                    pause(2);
                    writecell(app.pumpcmol,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Pump C Inputs','Range','B1');
                    pause(2);
                elseif contains(app.optparam{1,i}, "Pump D")
                    writecell(app.pumpdpromptexp,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Pump D Inputs','Range','A1');
                    pause(2);
                    writecell(app.pumpdmol,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Pump D Inputs','Range','B1');
                end
            end
            
            writecell(app.hplcpromptexp,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Analytical Inputs','Range','A1');
            pause(2);
            writecell(app.rt,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Analytical Inputs','Range','B1');
            pause(2);
            
            app.TrainingLast1.Text = 'n/a';
            app.TrainingLast2.Text = 'n/a';
            
            while app.rxnnum < 151
                
                app.rxnstr = num2str(app.rxnnum);
                app.ReactNum.Text = app.rxnstr;
                app.StatusBox.Text = 'Generating next set of experimental conditions via TSEMO...';
                app.timenow = clock;
                app.timestr = datestr(app.timenow);
                app.StatusTime.Text = app.timestr;
                drawnow;
                
                TSEMO_Test
                
                for i = 1:length(newvar)
                    optval{1,i} = num2str(newvar(1,i));
                end
                
                optvar = vertcat(app.optheader, optval);
                
                for j = 1:length(optvar)
                    if contains(optvar{1,j}, "Time")
                        app.tresrun = str2double(optvar{2,j});
                        app.tresrunhr = app.tresrun/60;
                        optvar{2,j} = num2str(round(app.tresrun,1));
                    end
                end
                
                for idxt = 1:length(optvar)
                    if contains(optvar{1,idxt}, "Temp")
                        app.temprun = str2double(optvar{2,idxt});
                        optvar{2,idxt} = num2str(round(app.temprun));
                    end
                end
                
                for idxb = 1:length(optvar)
                    if contains(optvar{1,idxb}, "Ratio B")
                        app.pumpbeq = str2double(optvar{2,idxb});
                        optvar{2,idxb} = num2str(round(app.pumpbeq,2));
                    end
                end
                
                for idxc = 1:length(optvar)
                    if contains(optvar{1,idxc}, "Ratio C")
                        app.pumpceq = str2double(optvar{2,idxc});
                        optvar{2,idxc} = num2str(round(app.pumpceq,2));
                    end
                end
                
                for idxd = 1:length(optvar)
                    if contains(optvar{1,idxd}, "Ratio D")
                        app.pumpdeq = str2double(optvar{2,idxd});
                        optvar{2,idxd} = num2str(round(app.pumpdeq,2));
                    end
                end
                
                if app.rxnnum > 1
                    
                    if length(newvar) < 2
                        app.LastLabel1.Text = app.CondLabel1.Text;
                        
                    elseif length(newvar) < 3
                        app.LastLabel1.Text = app.CondLabel1.Text;
                        app.LastLabel2.Text = app.CondLabel2.Text;
                        
                    elseif length(newvar) < 4
                        app.LastLabel1.Text = app.CondLabel1.Text;
                        app.LastLabel2.Text = app.CondLabel2.Text;
                        app.LastLabel3.Text = app.CondLabel3.Text;
                        
                    elseif length(newvar) < 5
                        app.LastLabel1.Text = app.CondLabel1.Text;
                        app.LastLabel2.Text = app.CondLabel2.Text;
                        app.LastLabel3.Text = app.CondLabel3.Text;
                        app.LastLabel4.Text = app.CondLabel4.Text;
                    else
                        app.LastLabel1.Text = app.CondLabel1.Text;
                        app.LastLabel2.Text = app.CondLabel2.Text;
                        app.LastLabel3.Text = app.CondLabel3.Text;
                        app.LastLabel4.Text = app.CondLabel4.Text;
                        app.LastLabel5.Text = app.CondLabel5.Text;
                    end
                    
                    app.MLLast1.Text = num2str(app.lastout1);
                    app.MLLast2.Text = num2str(app.lastout2);
                    
                end
                
                if length(newvar) < 2
                    app.CondLabel1.Text = optvar{2,1};
                    
                elseif length(newvar) < 3
                    app.CondLabel1.Text = optvar{2,1};
                    app.CondLabel2.Text = optvar{2,2};
                    
                elseif length(newvar) < 4
                    app.CondLabel1.Text = optvar{2,1};
                    app.CondLabel2.Text = optvar{2,2};
                    app.CondLabel3.Text = optvar{2,3};
                    
                elseif length(newvar) < 5
                    app.CondLabel1.Text = optvar{2,1};
                    app.CondLabel2.Text = optvar{2,2};
                    app.CondLabel3.Text = optvar{2,3};
                    app.CondLabel4.Text = optvar{2,4};
                else
                    app.CondLabel1.Text = optvar{2,1};
                    app.CondLabel2.Text = optvar{2,2};
                    app.CondLabel3.Text = optvar{2,3};
                    app.CondLabel4.Text = optvar{2,4};
                    app.CondLabel5.Text = optvar{2,5};
                end
                
                drawnow;
                
				%% REDACTED
                
                while %% REDACTED
                    app.StatusBox.Text = 'Waiting for Vapourtec to prepare for next reaction...';
                    app.timenow = clock;
                    app.timestr = datestr(app.timenow);
                    app.StatusTime.Text = app.timestr;
                    drawnow;
                    pause(30)
					%% REDACTED
                    
                end
                
				%% REDACTED
                
                while %%REDACTED
                    
                    app.StatusBox.Text = 'Optimisation experiment in progress. Waiting for reaction to complete...';
                    app.timenow = clock;
                    app.timestr = datestr(app.timenow);
                    app.StatusTime.Text = app.timestr;
                    drawnow;
                    pause(60);
                    %% REDACTED
                end
                
                app.StatusBox.Text = 'Product collection started. Optimisation will continue when HPLC analysis of current reaction is complete.';
                app.timenow = clock;
                app.timestr = datestr(app.timenow);
                app.StatusTime.Text = app.timestr;
                drawnow;
                
                app.pumpbrunvol = app.pumparunmol * app.pumpbeq / app.pumpbreactconc;
                app.pumpcrunvol = app.pumparunmol * app.pumpceq / app.pumpcreactconc;
                app.pumpdrunvol = app.pumparunmol * app.pumpdeq / app.pumpdreactconc;
                
                app.pumpbrunvol(isnan(app.pumpbrunvol)) = 0;
                app.pumpcrunvol(isnan(app.pumpcrunvol)) = 0;
                app.pumpdrunvol(isnan(app.pumpdrunvol)) = 0;
                
                app.runvol = [app.pumparunvol, app.pumpbrunvol, app.pumpcrunvol, app.pumpdrunvol];
                
                app.totalrunvol = app.pumparunvol + app.pumpbrunvol + app.pumpcrunvol + app.pumpdrunvol;
                
                app.pumparunconc = app.pumparunmol ./app.totalrunvol;
                app.pumpbrunconc = app.pumparunmol * app.pumpbeq ./app.totalrunvol;
                app.pumpcrunconc = app.pumparunmol * app.pumpceq ./app.totalrunvol;
                app.pumpdrunconc = app.pumparunmol * app.pumpdeq ./app.totalrunvol;
                
                app.pumparunsolvmol = app.pumpasolvconc * app.pumparunvol;
                app.pumpbrunsolvmol = app.pumpbsolvconc * app.pumpbrunvol;
                app.pumpcrunsolvmol = app.pumpcsolvconc * app.pumpcrunvol;
                app.pumpdrunsolvmol = app.pumpdsolvconc * app.pumpdrunvol;
                
                app.pumparunsolvconc = app.pumparunsolvmol ./app.totalrunvol;
                app.pumpbrunsolvconc = app.pumpbrunsolvmol ./app.totalrunvol;
                app.pumpcrunsolvconc = app.pumpcrunsolvmol ./app.totalrunvol;
                app.pumpdrunsolvconc = app.pumpdrunsolvmol ./app.totalrunvol;
                
                app.pumparunsolvconc(isnan(app.pumparunsolvconc)) = 0;
                app.pumpbrunsolvconc(isnan(app.pumpbrunsolvconc)) = 0;
                app.pumpcrunsolvconc(isnan(app.pumpcrunsolvconc)) = 0;
                app.pumpdrunsolvconc(isnan(app.pumpdrunsolvconc)) = 0;
                
                app.allrunconc = [app.pumparunconc, app.pumpbrunconc, app.pumpcrunconc, app.pumpdrunconc];
                
                if contains(app.pumpbcat, "Yes")
                    app.allrunconc(2) = 1/0;
                end
                
                if contains(app.pumpccat, "Yes")
                    app.allrunconc(3) = 1/0;
                end
                
                if contains(app.pumpdcat, "Yes")
                    app.allrunconc(4) = 1/0;
                end
                
                for fs = 1:4
                    if  app.allrunconc(1,fs) == 0
                        app.allrunconc(1,fs) = 1/0;
                    end
                end
                
                app.yieldlimitconc = min(app.allrunconc);
                
                app.isrunconc = app.isrunmol./app.totalrunvol;
                
                hplcsrch = strcat(app.hplcdir,'\**\*.xls');
                hplclist = dir(hplcsrch);
                [~,idx] = max([hplclist.datenum]);
                lastmod = hplclist(idx).datenum;
                lastmod = datevec(lastmod);
                timenow = clock;
                timediff = etime(timenow,lastmod);
                
                while timediff > 60
                    pause(30);
                    hplcsrch = strcat(hplcdir,'\**\*.xls');
                    hplclist = dir(hplcsrch);
                    [~,idx] = max([hplclist.datenum]);
                    lastmod = hplclist(idx).datenum;
                    lastmod = datevec(lastmod);
                    timenow = clock;
                    timediff = etime(timenow,lastmod);
                    app.StatusBox.Text = 'Product collection started. Optimisation will continue when HPLC analysis of current reaction is complete.';
                    app.timenow = clock;
                    app.timestr = datestr(app.timenow);
                    app.StatusTime.Text = app.timestr;
                    drawnow;
                end
                
                hplcfile = hplclist(idx).name;
                hplcfolder = hplclist(idx).folder;
                hplcpath = strcat(hplcfolder,'\',hplcfile);
                
                hplctable = readtable(hplcpath, 'Sheet','Peak', 'Range', 'K2:K40');
                hplcdata = table2array(hplctable);
                hplctable = readtable(hplcpath, 'Sheet','Peak', 'Range', 'N2:N40');
                hplcdata(:,2) = table2array(hplctable);
                
                [proddev,idx] = (min(abs(app.prodrt - hplcdata(:,1))));
                if proddev < 0.2
                    prodarea = hplcdata(idx,2);
                else
                    prodarea = 0.000000000000001;
                end
                [~,idx] = (min(abs(app.isrt - hplcdata(:,1))));
                isarea = hplcdata(idx,2);
                
                app.peakareas = [prodarea, isarea];
                
                app.prodrunconc = (prodarea/isarea) * app.isrunconc/app.prodrf;
                
                if contains(app.obj1,'Yield')
                    app.obj1val = (app.prodrunconc/app.yieldlimitconc)*100;
                elseif contains(app.obj1,'STY')
                    app.obj1val = ((app.prodrunconc*app.prodmw)/1000)/app.tresrunhr;
                elseif contains(app.obj1,'EFactor')
                    app.obj1val = (app.prodrunconc*app.prodmw)./(app.pumparunconc*app.pumpareactmw + app.pumpbrunconc*app.pumpbreactmw...
                        + app.pumpcrunconc*app.pumpcreactmw + app.pumpdrunconc*app.pumpdreactmw...
                        + app.pumparunsolvconc*app.pumpasolvmw + app.pumpbrunsolvconc*app.pumpbsolvmw + app.pumpcrunsolvconc*app.pumpcsolvmw...
                        + app.pumpdrunsolvconc*app.pumpdsolvmw);
                elseif contains(app.obj1,'Cost')
                    app.obj1val = app.pumparunconc*app.pumpareactmw*app.pumpareactcostg...
                        + app.pumpbrunconc*app.pumpbrunmw*app.pumpbreactcostg + app.pumpcrunconc*app.pumpcreactmw*app.pumpcreactcostg...
                        + app.pumpdrunconc*app.pumpdreactmw*app.pumpdreactcostg...
                        + app.pumparunsolvconc*app.pumpasolvmw*app.pumpasolvcostg + app.pumpbrunsolvconc*app.pumpbsolvmw*app.pumpbsolvcostg...
                        + app.pumpcrunsolvconc*app.pumpcsolvmw*app.pumpcsolvcostg + app.pumpdrunsolvconc*app.pumpdsolvmw*app.pumpdsolvcostg;
                end
                
                if contains(app.obj2,'Yield')
                    app.obj2val = (app.prodrunconc/app.yieldlimitconc)*100;
                elseif contains(app.obj2,'STY')
                    app.obj2val = ((app.prodrunconc*app.prodmw)/1000)/app.tresrunhr;
                elseif contains(app.obj2,'EFactor')
                    app.obj2val = (app.prodrunconc*app.prodmw)./(app.pumparunconc*app.pumpareactmw + app.pumpbrunconc*app.pumpbreactmw...
                        + app.pumpcrunconc*app.pumpcreactmw + app.pumpdrunconc*app.pumpdreactmw...
                        + app.pumparunsolvconc*app.pumpasolvmw + app.pumpbrunsolvconc*app.pumpbsolvmw + app.pumpcrunsolvconc*app.pumpcsolvmw...
                        + app.pumpdrunsolvconc*app.pumpdsolvmw);
                elseif contains(app.obj2,'Cost')
                    app.obj2val = app.pumparunconc*app.pumpareactmw*app.pumpareactcostg...
                        + app.pumpbrunconc*app.pumpbreactmw*app.pumpbreactcostg + app.pumpcrunconc*app.pumpcreactmw*app.pumpcreactcostg...
                        + app.pumpdrunconc*app.pumpdreactmw*app.pumpdreactcostg...
                        + app.pumparunsolvconc*app.pumpasolvmw*app.pumpasolvcostg + app.pumpbrunsolvconc*app.pumpbsolvmw*app.pumpbsolvcostg...
                        + app.pumpcrunsolvconc*app.pumpcsolvmw*app.pumpcsolvcostg + app.pumpdrunsolvconc*app.pumpdsolvmw*app.pumpdsolvcostg;
                end
                
                newout = [app.obj1val, app.obj2val];
                
                app.lastout1 = app.obj1val;
                app.lastout2 = app.obj2val;
                app.lastout = [app.obj1val, app.obj2val];
                
                
                if contains(app.obj1,'Yield')
                    app.lastout1 = round(app.lastout1,1);
                    newout(1) = -log(newout(1));
                end
                
                if contains(app.obj2,'Yield')
                    app.lastout2 = round(app.lastout2,1);
                    newout(2) = -log(newout(2));
                end
                
                if contains(app.obj1,'STY')
                    app.lastout1 = round(app.lastout1,3);
                    newout(1) = -log(newout(1));
                end
                
                if contains(app.obj2,'STY')
                    app.lastout2 = round(app.lastout2,3);
                    newout(2) = -log(newout(2));
                end
                
                if contains(app.obj1,'EFactor')
                    app.lastout1 = round(app.lastout1,3);
                    newout(1) = -log(newout(1));
                end
                
                if contains(app.obj2,'EFactor')
                    app.lastout2 = round(app.lastout2,3);
                    newout(2) = -log(newout(2));
                end
                
                if contains(app.obj1,'Cost')
                    app.lastout1 = round(app.lastout1,2);
                    newout(1) = log(newout(1));
                end
                
                if contains(app.obj2,'Cost')
                    app.lastout2 = round(app.lastout2,2);
                    newout(2) = log(newout(2));
                end
                
                if app.rxnnum == 1
                    app.expopt = vertcat(app.exptrain,app.lastout);
                    app.optout = app.lastout;
                else
                    app.expopt = vertcat(app.expopt,app.lastout);
                    app.optout = vertcat(app.optout,app.lastout);
                end
                
                app.mlopt = max(app.optout);
                app.mloptmin = min(app.optout);
                
                if  app.rxnnum > 1
                    app.mlopt1 = app.mlopt(1);
                    app.mlopt2 = app.mlopt(2);
                else
                    app.mlopt1 = app.lastout(1);
                    app.mlopt2 = app.lastout(2);
                end
                
                if contains(app.obj1,'Yield')
                    app.mlopt1 = round(app.mlopt1,1);
                end
                
                if contains(app.obj2,'Yield')
                    if app.rxnnum == 1
                        app.mlopt2 = round(app.lastout(1),1);
                    else
                        app.mlopt2 = round(app.mlopt2,1);
                    end
                end
                
                if contains(app.obj1,'STY')
                    app.mlopt1 = round(app.mlopt1,3);
                end
                
                if contains(app.obj2,'STY')
                    if app.rxnnnum == 1
                        app.mlopt2 = round(app.lastout(2),3);
                    else
                        app.mlopt2 = round(app.mlopt2,3);
                    end
                end
                
                if contains(app.obj1,'EFactor')
                    app.mlopt1 = round(app.mlopt1,3);
                end
                
                if contains(app.obj2,'EFactor')
                    if app.rxnnum == 1
                        app.mlopt2 = round(app.lastout(2),3);
                    else
                        app.mlopt2 = round(app.mlopt2,3);
                    end
                end
                
                if contains(app.obj1,'Cost')
                    app.mlopt1 = round(app.mloptmin(1),2);
                end
                
                if contains(app.obj2,'Cost')
                    if app.rxnnum == 1
                        app.mlopt2 = round(app.lastout(2),2);
                    else
                        app.mlopt2 = round(app.mloptmin(2),2);
                    end
                end
                
                app.mlopt1 = num2str(app.mlopt1);
                app.mlopt2 = num2str(app.mlopt2);
                
                app.MLOpt1.Text = app.mlopt1;
                app.MLOpt2.Text = app.mlopt2;
                
                X = vertcat(X,newvar);
                Y = vertcat(Y,newout);
                
                app.X = X;
                app.Y = Y;
                
                if app.rxnnum == 1
                    if app.autotrain == 1
                        app.voltable = vertcat(app.voltable,app.runvol);
                        app.peaktable = vertcat(app.peaktable,app.peakareas);
                    else
                        app.voltable = app.runvol;
                        app.peaktable = app.peakareas;
                    end
                end
                
                app.voltable = vertcat(app.voltable,app.runvol);
                app.peaktable = vertcat(app.peaktable,app.peakareas);
                
                writematrix(app.X,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Conditions','Range','A2');
                pause(2);
                writematrix(app.Y,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Outputs','Range','A2');
                pause(2);
                writematrix(app.expopt,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Results','Range','A2');
                pause(2);
                writematrix(app.voltable,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','Reaction Volumes','Range','A2');
                pause(2);
                writematrix(app.peaktable,fullfile(pwd, 'backupdataopt.xlsx'),'Sheet','HPLC Peak Areas','Range','A2');
                
                app.rxnnum = app.rxnnum + 1;
                
                app.timenow = clock;
                app.timestr = datestr(app.timenow);
                app.StatusTime.Text = app.timestr;
                
            end
            
            app.StatusBox.Text = 'Optimisation complete.';
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            drawnow;
            
        end

        % Button pushed function: PauseButton
        function PauseButtonPushed(app, event)
            app.pausestatus = 1;
            app.PauseBox.FontColor = [1 0 0];
            app.PauseBox.Text = 'System Paused';
            app.ResumeButton.FontColor = [0 0 0];
            app.PauseButton.FontColor = [0.8 0.8 0.8];
            
            while app.pausestatus == 1
                app.timenow = clock;
                app.timestr = datestr(app.timenow);
                app.StatusTime.Text = app.timestr;
                drawnow;
                pause(20)
            end
        end

        % Button pushed function: ResumeButton
        function ResumeButtonPushed(app, event)
            app.pausestatus = 0;
            app.PauseBox.FontColor = [0.42,0.69,0.36];
            app.PauseBox.Text = 'System Running';
            app.PauseButton.FontColor = [0 0 0];
            app.ResumeButton.FontColor = [0.8 0.8 0.8];
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            drawnow;
        end

        % Button pushed function: ConfirmObjectiveFunctionsButton
        function ConfirmObjectiveFunctionsButtonPushed(app, event)
            
            app.pumpbcat = 'No';
            app.pumpccat = 'No';
            app.pumpdcat = 'No';
            
            if  contains(app.Objective1DropDown.Value, "Yield")
                
                dlgTitle    = 'Yield Calculation';
                dlgQuestion = 'Does PUMP A correspond to a catalytic species?';
                app.pumpacat = questdlg(dlgQuestion,dlgTitle,'Yes','No','No');
                
                for j = 1:length(app.optparam)
                    if contains(app.optparam{1,j}, "Pump B")
                        dlgTitle    = 'Yield Calculation';
                        dlgQuestion = 'Does PUMP B correspond to a catalytic species?';
                        app.pumpbcat = questdlg(dlgQuestion,dlgTitle,'Yes','No','No');
                    elseif contains(app.optparam{1,j}, "Pump C")
                        dlgTitle    = 'Yield Calculation';
                        dlgQuestion = 'Does PUMP C correspond to a catalytic species?';
                        app.pumpccat = questdlg(dlgQuestion,dlgTitle,'Yes','No','No');
                    elseif contains(app.optparam{1,j}, "Pump D")
                        dlgTitle    = 'Yield Calculation';
                        dlgQuestion = 'Does PUMP D correspond to a catalytic species?';
                        app.pumpdcat = questdlg(dlgQuestion,dlgTitle,'Yes','No','No');
                    end
                end
                
                app.TrainingObj1.Text = 'Objective 1: Yield (%) (Training):';
                app.TrainingOpt1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.TrainingOpt1.Text = 'Waiting...';
                app.MLObj1.Text = 'Objective 1: Yield (%) (Optimisation):';
                app.MLOpt1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.MLOpt1.Text = 'Waiting...';
                app.TrainingLast1.BackgroundColor = [0.65 0.65 0.65];
                app.TrainingLast1.Text = 'Waiting...';
                app.MLLast1.BackgroundColor = [0.65 0.65 0.65];
                app.MLLast1.Text = 'Waiting...';
                
            elseif contains(app.Objective1DropDown.Value, "STY")
                
                app.TrainingObj1.Text = 'Objective 1: STY (Training)';
                app.TrainingOpt1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.TrainingOpt1.Text = 'Waiting...';
                app.MLObj1.Text = 'Objective 1: STY (Optimisation)';
                app.MLOpt1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.MLOpt1.Text = 'Waiting...';
                app.TrainingLast1.BackgroundColor = [0.65 0.65 0.65];
                app.TrainingLast1.Text = 'Waiting...';
                app.MLLast1.BackgroundColor = [0.65 0.65 0.65];
                app.MLLast1.Text = 'Waiting...';
                
            elseif contains(app.Objective1DropDown.Value, "EFactor")
                
                app.TrainingObj1.Text = 'Objective 1: EFactor (Training)';
                app.TrainingOpt1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.TrainingOpt1.Text = 'Waiting...';
                app.MLObj1.Text = 'Objective 1: EFactor (Optimisation)';
                app.MLOpt1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.MLOpt1.Text = 'Waiting...';
                app.TrainingLast1.BackgroundColor = [0.65 0.65 0.65];
                app.TrainingLast1.Text = 'Waiting...';
                app.MLLast1.BackgroundColor = [0.65 0.65 0.65];
                app.MLLast1.Text = 'Waiting...';
                
            elseif contains(app.Objective1DropDown.Value, "Cost")
                
                prompt = {'Enter cost of PUMP A REACTANT (£/kg):',...
                    'Enter cost of PUMP A SOLVENT (£/L):                    (Leave "0" if Reactant is neat)'};
                dlgtitle = 'Cost Parameters';
                dims = [1 52];
                definput = {'100','0'};
                app.pumpacost = inputdlg(prompt,dlgtitle,dims,definput);
                app.pumpareactcost = str2double(app.pumpacost{1,1});
                app.pumpasolvcost = str2double(app.pumpacost{2,1});
                app.pumpasolvcostkg = app.pumpasolvcost/app.pumpasolvdens;
                app.pumpareactcostg = app.pumpareactcost/1000;
                app.pumpasolvcostg = app.pumpasolvcostkg/1000;
                
                for j = 1:length(app.optparam)
                    if contains(app.optparam{1,j}, "Pump B")
                        prompt = {'Enter cost of PUMP B REACTANT (£/kg):',...
                            'Enter cost of PUMP B SOLVENT (£/L):                    (Leave "0" if Reactant is neat)'};
                        dlgtitle = 'Cost Parameters';
                        dims = [1 52];
                        definput = {'100','0'};
                        app.pumpbcost = inputdlg(prompt,dlgtitle,dims,definput);
                        app.pumpbreactcost = str2double(app.pumpbcost{1,1});
                        app.pumpbsolvcost = str2double(app.pumpbcost{2,1});
                        app.pumpbsolvcostkg = app.pumpbsolvcost/app.pumpbsolvdens;
                        app.pumpbreactcostg = app.pumpbreactcost/1000;
                        app.pumpbsolvcostg = app.pumpbsolvcostkg/1000;
                    elseif contains(app.optparam{1,j}, "Pump C")
                        prompt = {'Enter cost of PUMP C REACTANT (£/kg):',...
                            'Enter cost of PUMP C SOLVENT (£/L):                    (Leave "0" if Reactant is neat)'};
                        dlgtitle = 'Cost Parameters';
                        dims = [1 52];
                        definput = {'100','0'};
                        app.pumpccost = inputdlg(prompt,dlgtitle,dims,definput);
                        app.pumpcreactcost = str2double(app.pumpccost{1,1});
                        app.pumpcsolvcost = str2double(app.pumpccost{2,1});
                        app.pumpcsolvcostkg = app.pumpcsolvcost/app.pumpcsolvdens;
                        app.pumpcreactcostg = app.pumpcreactcost/1000;
                        app.pumpcsolvcostg = app.pumpcsolvcostkg/1000;
                    elseif contains(app.optparam{1,j}, "Pump D")
                        prompt = {'Enter cost of PUMP D REACTANT (£/kg):',...
                            'Enter cost of PUMP D SOLVENT (£/L):                    (Leave "0" if Reactant is neat)'};
                        dlgtitle = 'Cost Parameters';
                        dims = [1 52];
                        definput = {'100','0'};
                        app.pumpdcost = inputdlg(prompt,dlgtitle,dims,definput);
                        app.pumpdreactcost = str2double(app.pumpdcost{1,1});
                        app.pumpdsolvcost = str2double(app.pumpdcost{2,1});
                        app.pumpdsolvcostkg = app.pumpdsolvcost/app.pumpdsolvdens;
                        app.pumpdreactcostg = app.pumpdreactcost/1000;
                        app.pumpdsolvcostg = app.pumpdsolvcostkg/1000;
                    end
                end
                app.TrainingObj1.Text = 'Objective 1: Cost (£/L) (Training)';
                app.TrainingOpt1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.TrainingOpt1.Text = 'Waiting...';
                app.MLObj1.Text = 'Objective 1: Cost (£/L) (Optimisation)';
                app.MLOpt1.BackgroundColor = [0.4784 0.3608 0.6902];
                app.MLOpt1.Text = 'Waiting...';
                app.TrainingLast1.BackgroundColor = [0.65 0.65 0.65];
                app.TrainingLast1.Text = 'Waiting...';
                app.MLLast1.BackgroundColor = [0.65 0.65 0.65];
                app.MLLast1.Text = 'Waiting...';
            end
            
            if contains(app.Objective2DropDown.Value, "Yield")
                
                dlgTitle    = 'Yield Calculation';
                dlgQuestion = 'Are any chemical species in PUMP A catalytic?';
                app.pumpacat = questdlg(dlgQuestion,dlgTitle,'Yes','No','No');
                
                for j = 1:length(app.optparam)
                    if contains(app.optparam{1,j}, "Pump B")
                        dlgTitle    = 'Yield Calculation';
                        dlgQuestion = 'Are any chemical species in PUMP B catalytic?';
                        app.pumpbcat = questdlg(dlgQuestion,dlgTitle,'Yes','No','No');
                    elseif contains(app.optparam{1,j}, "Pump C")
                        dlgTitle    = 'Yield Calculation';
                        dlgQuestion = 'Are any chemical species in PUMP C catalytic?';
                        app.pumpccat = questdlg(dlgQuestion,dlgTitle,'Yes','No','No');
                    elseif contains(app.optparam{1,j}, "Pump D")
                        dlgTitle    = 'Yield Calculation';
                        dlgQuestion = 'Are any chemical species in PUMP D catalytic?';
                        app.pumpdcat = questdlg(dlgQuestion,dlgTitle,'Yes','No','No');
                    end
                end
                
                app.TrainingObj2.Text = 'Objective 2: Yield (%) (Training):';
                app.TrainingOpt2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.TrainingOpt2.Text = 'Waiting...';
                app.MLObj2.Text = 'Objective 2: Yield (%) (Optimisation):';
                app.MLOpt2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.MLOpt2.Text = 'Waiting...';
                app.TrainingLast2.BackgroundColor = [0.65 0.65 0.65];
                app.TrainingLast2.Text = 'Waiting...';
                app.MLLast2.BackgroundColor = [0.65 0.65 0.65];
                app.MLLast2.Text = 'Waiting...';
                
            elseif contains(app.Objective2DropDown.Value, "STY")
                
                app.TrainingObj2.Text = 'Objective 2: STY (Training):';
                app.TrainingOpt2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.TrainingOpt2.Text = 'Waiting...';
                app.MLObj2.Text = 'Objective 2: STY (Optimisation):';
                app.MLOpt2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.MLOpt2.Text = 'Waiting...';
                app.TrainingLast2.BackgroundColor = [0.65 0.65 0.65];
                app.TrainingLast2.Text = 'Waiting...';
                app.MLLast2.BackgroundColor = [0.65 0.65 0.65];
                app.MLLast2.Text = 'Waiting...';
                
            elseif contains(app.Objective2DropDown.Value, "EFactor")
                
                app.TrainingObj2.Text = 'Objective 2: EFactor (Training):';
                app.TrainingOpt2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.TrainingOpt2.Text = 'Waiting...';
                app.MLObj2.Text = 'Objective 2: EFactor (Optimisation):';
                app.MLOpt2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.MLOpt2.Text = 'Waiting...';
                app.TrainingLast2.BackgroundColor = [0.65 0.65 0.65];
                app.TrainingLast2.Text = 'Waiting...';
                app.MLLast2.BackgroundColor = [0.65 0.65 0.65];
                app.MLLast2.Text = 'Waiting...';
                
            elseif contains(app.Objective2DropDown.Value, "Cost")
                
                prompt = {'Enter cost of PUMP A REACTANT (£/kg):',...
                    'Enter cost of PUMP A SOLVENT (£/L):                    (Leave "0" if Reactant is neat)'};
                dlgtitle = 'Cost Parameters';
                dims = [1 52];
                definput = {'100','0'};
                app.pumpacost = inputdlg(prompt,dlgtitle,dims,definput);
                app.pumpareactcost = str2double(app.pumpacost{1,1});
                app.pumpasolvcost = str2double(app.pumpacost{2,1});
                app.pumpasolvcostkg = app.pumpasolvcost/app.pumpasolvdens;
                app.pumpareactcostg = app.pumpareactcost/1000;
                app.pumpasolvcostg = app.pumpasolvcostkg/1000;
                
                for j = 1:length(app.optparam)
                    if contains(app.optparam{1,j}, "Pump B")
                        prompt = {'Enter cost of PUMP B REACTANT (£/kg):',...
                            'Enter cost of PUMP B SOLVENT (£/L):                    (Leave "0" if Reactant is neat)'};
                        dlgtitle = 'Cost Parameters';
                        dims = [1 52];
                        definput = {'100','0'};
                        app.pumpbcost = inputdlg(prompt,dlgtitle,dims,definput);
                        app.pumpbreactcost = str2double(app.pumpbcost{1,1});
                        app.pumpbsolvcost = str2double(app.pumpbcost{2,1});
                        app.pumpbsolvcostkg = app.pumpbsolvcost/app.pumpbsolvdens;
                        app.pumpbreactcostg = app.pumpbreactcost/1000;
                        app.pumpbsolvcostg = app.pumpbsolvcostkg/1000;
                    elseif contains(app.optparam{1,j}, "Pump C")
                        prompt = {'Enter cost of PUMP C REACTANT (£/kg):',...
                            'Enter cost of PUMP C SOLVENT (£/L):                    (Leave "0" if Reactant is neat)'};
                        dlgtitle = 'Cost Parameters';
                        dims = [1 52];
                        definput = {'100','0'};
                        app.pumpccost = inputdlg(prompt,dlgtitle,dims,definput);
                        app.pumpcreactcost = str2double(app.pumpccost{1,1});
                        app.pumpcsolvcost = str2double(app.pumpccost{2,1});
                        app.pumpcsolvcostkg = app.pumpcsolvcost/app.pumpcsolvdens;
                        app.pumpcreactcostg = app.pumpcreactcost/1000;
                        app.pumpcsolvcostg = app.pumpcsolvcostkg/1000;
                    elseif contains(app.optparam{1,j}, "Pump D")
                        prompt = {'Enter cost of PUMP D REACTANT (£/kg):',...
                            'Enter cost of PUMP D SOLVENT (£/L):                    (Leave "0" if Reactant is neat)'};
                        dlgtitle = 'Cost Parameters';
                        dims = [1 52];
                        definput = {'100','0'};
                        app.pumpdcost = inputdlg(prompt,dlgtitle,dims,definput);
                        app.pumpdreactcost = str2double(app.pumpdcost{1,1});
                        app.pumpdsolvcost = str2double(app.pumpdcost{2,1});
                        app.pumpdsolvcostkg = app.pumpdsolvcost/app.pumpdsolvdens;
                        app.pumpdreactcostg = app.pumpdreactcost/1000;
                        app.pumpdsolvcostg = app.pumpdsolvcostkg/1000;
                    end
                end
                app.TrainingObj2.Text = 'Objective 2: Cost (£/L) (Training):';
                app.TrainingOpt2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.TrainingOpt2.Text = 'Waiting...';
                app.MLObj2.Text = 'Objective 2: Cost (£/L) (Optimisation):';
                app.MLOpt2.BackgroundColor = [0.4784 0.3608 0.6902];
                app.MLOpt2.Text = 'Waiting...';
                app.TrainingLast2.BackgroundColor = [0.65 0.65 0.65];
                app.TrainingLast2.Text = 'Waiting...';
                app.MLLast2.BackgroundColor = [0.65 0.65 0.65];
                app.MLLast2.Text = 'Waiting...';
            end
            
            app.ConfirmObjectives.FontColor = [0.42,0.69,0.36];
            app.ConfirmObjectives.Text = 'Objectives Functions Confirmed';
            
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            
            if contains(app.Objective1DropDown.Value, "Select")
                app.ConfirmObjectives.FontColor = [1,0,0];
                app.ConfirmObjectives.Text = 'Please Select TWO Objective Targets';
                
            elseif  contains(app.Objective2DropDown.Value, "Select")
                app.ConfirmObjectives.FontColor = [1,0,0];
                app.ConfirmObjectives.Text = 'Please Select TWO Objective Targets';
                
                app.timenow = clock;
                app.timestr = datestr(app.timenow);
                app.StatusTime.Text = app.timestr;
            end
        end

        % Button pushed function: ReactantSolutionsButton
        function ReactantSolutionsButtonPushed(app, event)
            app.pumpaprompt = {'Enter mass of PUMP A REACTANT (g):', 'Enter molecular mass of PUMP A REACTANT (g/mol):',...
                'Enter density of PUMP A REACTANT (g/ml):', 'Enter mass of PUMP A INTERNAL STANDARD (g):',...
                'Enter molecular mass of PUMP A INTERNAL STANDARD (g/mol):', 'Enter density of PUMP A INTERNAL STANDARD (g/ml):',...
                'Enter the TOTAL solution volume of PUMP A (ml)',...
                'Enter molecular mass of PUMP A SOLVENT (g/mol):                    (Leave "0" if Reactant is neat)',...
                'Enter density of PUMP A SOLVENT (g/ml):'};
            dlgtitle = 'Reactant Solutions';
            dims = [1 60];
            definput = {'10','100','1.000','1.0','100','1.000', '500', '0','0'};
            app.pumpamol = inputdlg(app.pumpaprompt,dlgtitle,dims,definput);
            app.pumpareactmass = str2double(app.pumpamol{1,1});
            app.pumpareactmw = str2double(app.pumpamol{2,1});
            app.pumpareactdens = str2double(app.pumpamol{3,1});
            app.pumpaismass = str2double(app.pumpamol{4,1});
            app.pumpaismw = str2double(app.pumpamol{5,1});
            app.pumpaisdens = str2double(app.pumpamol{6,1});
            app.pumpatotvolml = str2double(app.pumpamol{7,1});
            app.pumpasolvmw = str2double(app.pumpamol{8,1});
            app.pumpasolvdens = str2double(app.pumpamol{9,1});
            
            for i = 1:length(app.optparam)
                if contains(app.optparam{1,i}, "Pump B")
                    app.pumpbprompt = {'Enter mass of PUMP B REACTANT (g):', 'Enter molecular mass of PUMP B REACTANT (g/mol):',...
                        'Enter density of PUMP B REACTANT (g/ml):', 'Enter the TOTAL solution volume of PUMP B (ml)',...
                        'Enter molecular mass of PUMP B SOLVENT (g/mol):                    (Leave "0" if Reactant is neat)',...
                        'Enter density of PUMP B SOLVENT (g/ml):'};
                    dlgtitle = 'Reactant Solutions';
                    dims = [1 52];
                    definput = {'10','100','1.000', '500', '0','0'};
                    app.pumpbmol = inputdlg(app.pumpbprompt,dlgtitle,dims,definput);
                    app.pumpbreactmass = str2double(app.pumpbmol{1,1});
                    app.pumpbreactmw = str2double(app.pumpbmol{2,1});
                    app.pumpbreactdens = str2double(app.pumpbmol{3,1});
                    app.pumpbtotvolml = str2double(app.pumpbmol{4,1});
                    app.pumpbsolvmw = str2double(app.pumpbmol{5,1});
                    app.pumpbsolvdens = str2double(app.pumpbmol{6,1});
                elseif contains(app.optparam{1,i}, "Pump C")
                    app.pumpcprompt = {'Enter mass of PUMP C REACTANT (g):', 'Enter molecular mass of PUMP C REACTANT (g/mol):',...
                        'Enter density of PUMP C REACTANT (g/ml):', 'Enter the TOTAL solution volume of PUMP C (ml)',...
                        'Enter molecular mass of PUMP C SOLVENT (g/mol):                    (Leave "0" if Reactant is neat)',...
                        'Enter density of PUMP C SOLVENT (g/ml):'};
                    dlgtitle = 'Reactant Solutions';
                    dims = [1 52];
                    definput = {'10','100','1.000', '500', '0','0'};
                    app.pumpcmol = inputdlg(app.pumpcprompt,dlgtitle,dims,definput);
                    app.pumpcreactmass = str2double(app.pumpcmol{1,1});
                    app.pumpcreactmw = str2double(app.pumpcmol{2,1});
                    app.pumpcreactdens = str2double(app.pumpcmol{3,1});
                    app.pumpctotvolml = str2double(app.pumpcmol{4,1});
                    app.pumpcsolvmw = str2double(app.pumpcmol{5,1});
                    app.pumpcsolvdens = str2double(app.pumpcmol{6,1});
                elseif contains(app.optparam{1,i}, "Pump D")
                    app.pumpdprompt = {'Enter mass of PUMP D REACTANT (g):', 'Enter molecular mass of PUMP D REACTANT (g/mol):',...
                        'Enter density of PUMP D REACTANT (g/ml):', 'Enter the TOTAL solution volume of PUMP D (ml)',...
                        'Enter molecular mass of PUMP D SOLVENT (g/mol):                    (Leave "0" if Reactant is neat)',...
                        'Enter density of PUMP D SOLVENT (g/ml):'};
                    dlgtitle = 'Reactant Solutions';
                    dims = [1 52];
                    definput = {'10','100','1.000', '500', '0','0'};
                    app.pumpdmol = inputdlg(app.pumpdprompt,dlgtitle,dims,definput);
                    app.pumpdreactmass = str2double(app.pumpdmol{1,1});
                    app.pumpdreactmw = str2double(app.pumpdmol{2,1});
                    app.pumpdreactdens = str2double(app.pumpdmol{3,1});
                    app.pumpdtotvolml = str2double(app.pumpdmol{4,1});
                    app.pumpdsolvmw = str2double(app.pumpdmol{5,1});
                    app.pumpdsolvdens = str2double(app.pumpdmol{6,1});
                end
            end
            
            app.pumpapromptexp = app.pumpaprompt';
            app.pumpbpromptexp = app.pumpbprompt';
            app.pumpcpromptexp = app.pumpcprompt';
            app.pumpdpromptexp = app.pumpdprompt';
                                   
            app.pumpatotvol = app.pumpatotvolml/1000;
            app.pumpbtotvol = app.pumpbtotvolml/1000;
            app.pumpctotvol = app.pumpctotvolml/1000;
            app.pumpdtotvol = app.pumpdtotvolml/1000;
            
            app.pumpaisconc = (app.pumpaismass/app.pumpaismw)./app.pumpatotvol;
            app.pumpareactconc = (app.pumpareactmass/app.pumpareactmw)./app.pumpatotvol;
            app.pumpbreactconc = (app.pumpbreactmass/app.pumpbreactmw)./app.pumpbtotvol;
            app.pumpcreactconc = (app.pumpcreactmass/app.pumpcreactmw)./app.pumpctotvol;
            app.pumpdreactconc = (app.pumpdreactmass/app.pumpdreactmw)./app.pumpdtotvol;
            
            app.pumpbreactconc(isnan(app.pumpbreactconc)) = 0;
            app.pumpcreactconc(isnan(app.pumpcreactconc)) = 0;
            app.pumpdreactconc(isnan(app.pumpdreactconc)) = 0;
            
            app.pumpaisvolml = app.pumpaismass/app.pumpaisdens;
            app.pumpareactvolml = app.pumpareactmass/app.pumpareactdens;
            app.pumpbreactvolml = app.pumpbreactmass/app.pumpbreactdens;
            app.pumpcreactvolml = app.pumpcreactmass/app.pumpcreactdens;
            app.pumpdreactvolml = app.pumpdreactmass/app.pumpdreactdens;
            
            app.pumpaisvol = app.pumpaisvolml/1000;
            app.pumpareactvol = app.pumpareactvolml/1000;
            app.pumpbreactvol = app.pumpbreactvolml/1000;
            app.pumpcreactvol = app.pumpcreactvolml/1000;
            app.pumpdreactvol = app.pumpdreactvolml/1000;
            
            app.pumpbreactvol(isnan(app.pumpbreactvol)) = 0;
            app.pumpcreactvol(isnan(app.pumpcreactvol)) = 0;
            app.pumpdreactvol(isnan(app.pumpdreactvol)) = 0;
            
            app.pumpasolvvol = app.pumpatotvol - app.pumpareactvol - app.pumpaisvol;
            app.pumpbsolvvol = app.pumpbtotvol - app.pumpbreactvol;
            app.pumpcsolvvol = app.pumpctotvol - app.pumpcreactvol;
            app.pumpdsolvvol = app.pumpdtotvol - app.pumpdreactvol;
            
            app.pumpasolvvolml = app.pumpasolvvol*1000;
            app.pumpbsolvvolml = app.pumpbsolvvol*1000;
            app.pumpcsolvvolml = app.pumpcsolvvol*1000;
            app.pumpdsolvvolml = app.pumpdsolvvol*1000;
            
            app.pumpasolvmass = app.pumpasolvvolml*app.pumpasolvdens;
            app.pumpbsolvmass = app.pumpbsolvvolml*app.pumpbsolvdens;
            app.pumpcsolvmass = app.pumpcsolvvolml*app.pumpcsolvdens;
            app.pumpdsolvmass = app.pumpdsolvvolml*app.pumpdsolvdens;
            
            app.pumpasolvconc = (app.pumpasolvmass/app.pumpasolvmw)./app.pumpatotvol;
            app.pumpbsolvconc = (app.pumpbsolvmass/app.pumpbsolvmw)./app.pumpbtotvol;
            app.pumpcsolvconc = (app.pumpcsolvmass/app.pumpcsolvmw)./app.pumpctotvol;
            app.pumpdsolvconc = (app.pumpdsolvmass/app.pumpdsolvmw)./app.pumpdtotvol;
            
            app.pumpbsolvconc(isnan(app.pumpbsolvconc)) = 0;
            app.pumpcsolvconc(isnan(app.pumpcsolvconc)) = 0;
            app.pumpdsolvconc(isnan(app.pumpdsolvconc)) = 0;
            
            app.ConfirmReactants.Text = 'Reactant Solution Parameters Saved';
            
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
        end

        % Button pushed function: GeneratePlotButton
        function GeneratePlotButtonPushed(app, event)
            app.y1trainplot = app.exptrain(:,1);
            app.y2trainplot = app.exptrain(:,2);
            
            if app.rxnnum > 1
                
                app.y1optplot = app.optout(:,1);
                app.y2optplot = app.optout(:,2);
                
            end
            
            figure('units',' normalized', 'position', [0.1 0.1 0.7 0.7]);
            
            scatter(app.y1trainplot,app.y2trainplot,50,'markerfacecolor', [0.65 0.65 0.65],'markeredgecolor', [0 0 0]);
            title('Reaction Data of Optimisation Experiments','FontSize',18);
            set(gca, 'FontSize', 14);
            
            if contains(app.obj1,'Yield')
                xlabel(['{\bf Yield (%)}', '    {\color{red}[Optimum]   >>>}'],'FontSize',14)
            end
            
            if contains(app.obj2,'Yield')
                ylabel(['{\bf Yield (%)}', '    {\color{red}[Optimum]   >>>}'],'FontSize',14)
            end
            
            if contains(app.obj1,'STY')
                xlabel(['{\bf STY (g/L/hr)}', '    {\color{red}[Optimum]   >>>}'],'FontSize',14)
            end
            
            if contains(app.obj1,'STY')
                xlabel(['{\bf STY (g/L/hr)}', '    {\color{red}[Optimum]   >>>}'],'FontSize',14)
            end
            
            if contains(app.obj2,'STY')
                ylabel(['{\bf STY (g/L/hr)}', '    {\color{red}[Optimum]   >>>}'],'FontSize',14)
            end
            
            if contains(app.obj1,'EFactor')
                xlabel(['{\bf Efactor (kg_{Prod.}/kg_{Waste})}', '    {\color{red}[Optimum]   >>>}'],'FontSize',14)
            end
            
            if contains(app.obj2,'EFactor')
                ylabel(['{\bf Efactor (kg_{Prod.}/kg_{Waste})}', '    {\color{red}[Optimum]   >>>}'],'FontSize',14)
            end
            
            if contains(app.obj1,'Cost')
                xlabel(['{\bf Cost (£/L_{Reaction Mixture})}', '    {\color{red}[Optimum]   >>>}'],'FontSize',14)
                set(gca, 'Xdir', 'reverse')
            end
            
            if contains(app.obj2,'Cost')
                ylabel(['{\bf Cost (£/L_{Reaction Mixture})}', '    {\color{red}[Optimum]   >>>}'],'FontSize',14)
                set(gca, 'Ydir', 'reverse')
            end
            
            if app.rxnnum > 1
                
                hold on;
                
                scatter(app.y1optplot,app.y2optplot,120,'bx','linewidth',1.5);
                
                legend('Training Experiments','ML Optimisation','Location','bestoutside','FontSize',16);
                
                hold off;
                
            end
            
        end

        % Button pushed function: StartTrainingButton
        function StartTrainingButtonPushed(app, event)
            
            app.StatusBox.Text = 'Initiating Training...';
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            
            app.SystemState.Text = 'Training';
            app.SystemState.BackgroundColor = [0.9294 0.6941 0.1255];
            drawnow;
            
            hplcdir = app.hplcdir;
            prodrt = app.prodrt;
            isrt = app.isrt;
            
            app.reactscale = app.ScaleSelect.Value;
            app.pumparunvol = app.reactscale/1000;
            app.pumparunmol = app.pumpareactconc*app.pumparunvol;
            app.pumparunsolvmol = app.pumpasolvconc*app.pumparunvol;
            app.isrunmol = app.pumpaisconc*app.pumparunvol;
            
            fixheader = {'Reagent Use','Stoichiometric Ratio A', 'Whole Peak'};
            app.reactscale = num2str(app.ScaleSelect.Value);
            fixvar = {app.reactscale,'1','FALSE'};
            fixvar = vertcat(fixheader, fixvar);
            
            app.objparam = {app.obj1, app.obj2};
            app.voltitles = ["Pump A Volume (L)","Pump B Volume (L)","Pump C Volume (L)","Pump D Volume (L)",];
            app.peaktitles = ["Product Area", "IS Area"];
            
            writecell(app.optparam,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Conditions','Range','A1');
            pause(2);
            writecell(app.objparam,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Outputs','Range','A1');
            pause(2);
            writecell(app.objparam,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Results','Range','A1');
            pause(2);
            writematrix(app.peaktitles,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','HPLC Peak Areas','Range','A1');
            pause(2);
            writematrix(app.voltitles,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Reaction Volumes','Range','A1');
            
            writecell(app.pumpapromptexp,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Pump A Inputs','Range','A1');
            pause(2);
            writecell(app.pumpamol,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Pump A Inputs','Range','B1');
            pause(2);
            
            for i = 1:length(app.optparam)
                if contains(app.optparam{1,i}, "Pump B")
                    writecell(app.pumpbpromptexp,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Pump B Inputs','Range','A1');
                    pause(2);
                    writecell(app.pumpbmol,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Pump B Inputs','Range','B1');
                    pause(2);
                elseif contains(app.optparam{1,i}, "Pump C")
                    writecell(app.pumpcpromptexp,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Pump C Inputs','Range','A1');
                    pause(2);
                    writecell(app.pumpcmol,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Pump C Inputs','Range','B1');
                    pause(2);
                elseif contains(app.optparam{1,i}, "Pump D")
                    writecell(app.pumpdpromptexp,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Pump D Inputs','Range','A1');
                    pause(2);
                    writecell(app.pumpdmol,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Pump D Inputs','Range','B1');
                end
            end
            
            writecell(app.hplcpromptexp,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Analytical Inputs','Range','A1');
            pause(2);
            writecell(app.rt,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Analytical Inputs','Range','B1');
            pause(2);
                        
            while app.trainnum <= app.n
                
                app.trainstr = num2str(app.trainnum);
                app.TrainNum.Text = app.trainstr;
                drawnow;
                
                newvar = app.X_lhs(app.trainnum,:);
                
                for i = 1:length(newvar)
                    optval{1,i} = num2str(newvar(1,i));
                end
                
                optvar = vertcat(app.optheader, optval);
                
                for j = 1:length(optvar)
                    if contains(optvar{1,j}, "Time")
                        app.tresrun = str2double(optvar{2,j});
                        app.tresrunhr = app.tresrun/60;
                        optvar{2,j} = num2str(round(app.tresrun,1));
                    end
                end
                
                for idxt = 1:length(optvar)
                    if contains(optvar{1,idxt}, "Temp")
                        app.temprun = str2double(optvar{2,idxt});
                        optvar{2,idxt} = num2str(round(app.temprun));
                    end
                end
                
                for idxb = 1:length(optvar)
                    if contains(optvar{1,idxb}, "Ratio B")
                        app.pumpbeq = str2double(optvar{2,idxb});
                        optvar{2,idxb} = num2str(round(app.pumpbeq,2));
                    end
                end
                
                for idxc = 1:length(optvar)
                    if contains(optvar{1,idxc}, "Ratio C")
                        app.pumpceq = str2double(optvar{2,idxc});
                        optvar{2,idxc} = num2str(round(app.pumpceq,2));
                    end
                end
                
                for idxd = 1:length(optvar)
                    if contains(optvar{1,idxd}, "Ratio D")
                        app.pumpdeq = str2double(optvar{2,idxd});
                        optvar{2,idxd} = num2str(round(app.pumpdeq,2));
                    end
                end
                
                if app.trainnum > 1
                    
                    if length(newvar) < 2
                        app.LastLabel1.Text = app.CondLabel1.Text;
                        
                    elseif length(newvar) < 3
                        app.LastLabel1.Text = app.CondLabel1.Text;
                        app.LastLabel2.Text = app.CondLabel2.Text;
                        
                    elseif length(newvar) < 4
                        app.LastLabel1.Text = app.CondLabel1.Text;
                        app.LastLabel2.Text = app.CondLabel2.Text;
                        app.LastLabel3.Text = app.CondLabel3.Text;
                        
                    elseif length(newvar) < 5
                        app.LastLabel1.Text = app.CondLabel1.Text;
                        app.LastLabel2.Text = app.CondLabel2.Text;
                        app.LastLabel3.Text = app.CondLabel3.Text;
                        app.LastLabel4.Text = app.CondLabel4.Text;
                    else
                        app.LastLabel1.Text = app.CondLabel1.Text;
                        app.LastLabel2.Text = app.CondLabel2.Text;
                        app.LastLabel3.Text = app.CondLabel3.Text;
                        app.LastLabel4.Text = app.CondLabel4.Text;
                        app.LastLabel5.Text = app.CondLabel5.Text;
                    end
                    
                    app.TrainingLast1.Text = num2str(app.lastout1);
                    app.TrainingLast2.Text = num2str(app.lastout2);
                    
                end
                
                if length(newvar) < 2
                    app.CondLabel1.Text = optvar{2,1};
                    
                elseif length(newvar) < 3
                    app.CondLabel1.Text = optvar{2,1};
                    app.CondLabel2.Text = optvar{2,2};
                    
                elseif length(newvar) < 4
                    app.CondLabel1.Text = optvar{2,1};
                    app.CondLabel2.Text = optvar{2,2};
                    app.CondLabel3.Text = optvar{2,3};
                    
                elseif length(newvar) < 5
                    app.CondLabel1.Text = optvar{2,1};
                    app.CondLabel2.Text = optvar{2,2};
                    app.CondLabel3.Text = optvar{2,3};
                    app.CondLabel4.Text = optvar{2,4};
                else
                    app.CondLabel1.Text = optvar{2,1};
                    app.CondLabel2.Text = optvar{2,2};
                    app.CondLabel3.Text = optvar{2,3};
                    app.CondLabel4.Text = optvar{2,4};
                    app.CondLabel5.Text = optvar{2,5};
                end
                
                drawnow;
                
				%% REDACTED
                
                if  app.trainnum > 1
                    %% REDACTED
                    
                    while %%REDACTED
                        app.StatusBox.Text = 'Waiting for Vapourtec to prepare for next reaction...';
                        app.timenow = clock;
                        app.timestr = datestr(app.timenow);
                        app.StatusTime.Text = app.timestr;
                        drawnow;
                        pause(30)
						%% REDACTED
                    end
                    
                    %% REDACTED
                end
                
				%% REDACTED
                
                while %% REDACTED
                    
                    app.StatusBox.Text = 'Training experiment in progress. Waiting for reaction to complete...';
                    app.timenow = clock;
                    app.timestr = datestr(app.timenow);
                    app.StatusTime.Text = app.timestr;
                    drawnow;
                    pause(60);
					%% REDACTED
                end
                
                app.StatusBox.Text = 'Product collection started. Training will continue when HPLC analysis of current reaction is complete.';
                app.timenow = clock;
                app.timestr = datestr(app.timenow);
                app.StatusTime.Text = app.timestr;
                drawnow;
                
                app.pumpbrunvol = app.pumparunmol * app.pumpbeq / app.pumpbreactconc;
                app.pumpcrunvol = app.pumparunmol * app.pumpceq / app.pumpcreactconc;
                app.pumpdrunvol = app.pumparunmol * app.pumpdeq / app.pumpdreactconc;
                
                app.pumpbrunvol(isnan(app.pumpbrunvol)) = 0;
                app.pumpcrunvol(isnan(app.pumpcrunvol)) = 0;
                app.pumpdrunvol(isnan(app.pumpdrunvol)) = 0;
                
                app.runvol = [app.pumparunvol, app.pumpbrunvol, app.pumpcrunvol, app.pumpdrunvol];
                
                app.totalrunvol = app.pumparunvol + app.pumpbrunvol + app.pumpcrunvol + app.pumpdrunvol;
                
                app.pumparunconc = app.pumparunmol ./app.totalrunvol;
                app.pumpbrunconc = app.pumparunmol * app.pumpbeq ./app.totalrunvol;
                app.pumpcrunconc = app.pumparunmol * app.pumpceq ./app.totalrunvol;
                app.pumpdrunconc = app.pumparunmol * app.pumpdeq ./app.totalrunvol;
                
                app.pumparunsolvmol = app.pumpasolvconc * app.pumparunvol;
                app.pumpbrunsolvmol = app.pumpbsolvconc * app.pumpbrunvol;
                app.pumpcrunsolvmol = app.pumpcsolvconc * app.pumpcrunvol;
                app.pumpdrunsolvmol = app.pumpdsolvconc * app.pumpdrunvol;
                
                app.pumparunsolvconc = app.pumparunsolvmol ./app.totalrunvol;
                app.pumpbrunsolvconc = app.pumpbrunsolvmol ./app.totalrunvol;
                app.pumpcrunsolvconc = app.pumpcrunsolvmol ./app.totalrunvol;
                app.pumpdrunsolvconc = app.pumpdrunsolvmol ./app.totalrunvol;
                
                app.pumparunsolvconc(isnan(app.pumparunsolvconc)) = 0;
                app.pumpbrunsolvconc(isnan(app.pumpbrunsolvconc)) = 0;
                app.pumpcrunsolvconc(isnan(app.pumpcrunsolvconc)) = 0;
                app.pumpdrunsolvconc(isnan(app.pumpdrunsolvconc)) = 0;
                
                app.allrunconc = [app.pumparunconc, app.pumpbrunconc, app.pumpcrunconc, app.pumpdrunconc];
                
                
                if contains(app.pumpbcat, "Yes")
                    app.allrunconc(2) = 1/0;
                end
                
                if contains(app.pumpccat, "Yes")
                    app.allrunconc(3) = 1/0;
                end
                
                if contains(app.pumpdcat, "Yes")
                    app.allrunconc(4) = 1/0;
                end
                
                for fs = 1:4
                    if  app.allrunconc(1,fs) == 0
                        app.allrunconc(1,fs) = 1/0;
                    end
                end
                
                app.yieldlimitconc = min(app.allrunconc);
                
                app.isrunconc = app.isrunmol./app.totalrunvol;
                
                hplcsrch = strcat(app.hplcdir,'\**\*.xls');
                hplclist = dir(hplcsrch);
                [~,idx] = max([hplclist.datenum]);
                lastmod = hplclist(idx).datenum;
                lastmod = datevec(lastmod);
                timenow = clock;
                timediff = etime(timenow,lastmod);
                
                while   timediff > 60
                    pause(30);
                    hplcsrch = strcat(hplcdir,'\**\*.xls');
                    hplclist = dir(hplcsrch);
                    [~,idx] = max([hplclist.datenum]);
                    lastmod = hplclist(idx).datenum;
                    lastmod = datevec(lastmod);
                    timenow = clock;
                    timediff = etime(timenow,lastmod);
                    app.StatusBox.Text = 'Product collection started. Training will continue when HPLC analysis of current reaction is complete.';
                    app.timenow = clock;
                    app.timestr = datestr(app.timenow);
                    app.StatusTime.Text = app.timestr;
                    drawnow;
                end
                
                hplcfile = hplclist(idx).name;
                hplcfolder = hplclist(idx).folder;
                hplcpath = strcat(hplcfolder,'\',hplcfile);
                
                hplctable = readtable(hplcpath, 'Sheet','Peak', 'Range', 'K2:K40');
                hplcdata = table2array(hplctable);
                hplctable = readtable(hplcpath, 'Sheet','Peak', 'Range', 'N2:N40');
                hplcdata(:,2) = table2array(hplctable);
                
                [proddev,idx] = (min(abs(app.prodrt - hplcdata(:,1))));
                if proddev < 0.2
                    prodarea = hplcdata(idx,2);
                else
                    prodarea = 0.0000000001;
                end
                [~,idx] = (min(abs(app.isrt - hplcdata(:,1))));
                isarea = hplcdata(idx,2);
                
                app.peakareas = [prodarea, isarea];
                
                app.prodrunconc = (prodarea/isarea) * app.isrunconc/app.prodrf;
                
                if contains(app.obj1,'Yield')
                    app.obj1val = (app.prodrunconc/app.yieldlimitconc)*100;
                elseif contains(app.obj1,'STY')
                    app.obj1val = ((app.prodrunconc*app.prodmw)/1000)/app.tresrunhr;
                elseif contains(app.obj1,'EFactor')
                    app.obj1val = (app.prodrunconc*app.prodmw)./(app.pumparunconc*app.pumpareactmw + app.pumpbrunconc*app.pumpbreactmw...
                        + app.pumpcrunconc*app.pumpcreactmw + app.pumpdrunconc*app.pumpdreactmw...
                        + app.pumparunsolvconc*app.pumpasolvmw + app.pumpbrunsolvconc*app.pumpbsolvmw + app.pumpcrunsolvconc*app.pumpcsolvmw...
                        + app.pumpdrunsolvconc*app.pumpdsolvmw);
                elseif contains(app.obj1,'Cost')
                    app.obj1val = app.pumparunconc*app.pumpareactmw*app.pumpareactcostg...
                        + app.pumpbrunconc*app.pumpbrunmw*app.pumpbreactcostg + app.pumpcrunconc*app.pumpcreactmw*app.pumpcreactcostg...
                        + app.pumpdrunconc*app.pumpdreactmw*app.pumpdreactcostg...
                        + app.pumparunsolvconc*app.pumpasolvmw*app.pumpasolvcostg + app.pumpbrunsolvconc*app.pumpbsolvmw*app.pumpbsolvcostg...
                        + app.pumpcrunsolvconc*app.pumpcsolvmw*app.pumpcsolvcostg + app.pumpdrunsolvconc*app.pumpdsolvmw*app.pumpdsolvcostg;
                end
                
                if contains(app.obj2,'Yield')
                    app.obj2val = (app.prodrunconc/app.yieldlimitconc)*100;
                elseif contains(app.obj2,'STY')
                    app.obj2val = ((app.prodrunconc*app.prodmw)/1000)/app.tresrunhr;
                elseif contains(app.obj2,'EFactor')
                    app.obj2val = (app.prodrunconc*app.prodmw)./(app.pumparunconc*app.pumpareactmw + app.pumpbrunconc*app.pumpbreactmw...
                        + app.pumpcrunconc*app.pumpcreactmw + app.pumpdrunconc*app.pumpdreactmw...
                        + app.pumparunsolvconc*app.pumpasolvmw + app.pumpbrunsolvconc*app.pumpbsolvmw + app.pumpcrunsolvconc*app.pumpcsolvmw...
                        + app.pumpdrunsolvconc*app.pumpdsolvmw);
                elseif contains(app.obj2,'Cost')
                    app.obj2val = app.pumparunconc*app.pumpareactmw*app.pumpareactcostg...
                        + app.pumpbrunconc*app.pumpbreactmw*app.pumpbreactcostg + app.pumpcrunconc*app.pumpcreactmw*app.pumpcreactcostg...
                        + app.pumpdrunconc*app.pumpdreactmw*app.pumpdreactcostg...
                        + app.pumparunsolvconc*app.pumpasolvmw*app.pumpasolvcostg + app.pumpbrunsolvconc*app.pumpbsolvmw*app.pumpbsolvcostg...
                        + app.pumpcrunsolvconc*app.pumpcsolvmw*app.pumpcsolvcostg + app.pumpdrunsolvconc*app.pumpdsolvmw*app.pumpdsolvcostg;
                end
                
                newout = [app.obj1val, app.obj2val];
                
                app.lastout1 = app.obj1val;
                app.lastout2 = app.obj2val;
                app.lastout = [app.obj1val, app.obj2val];
                
                if contains(app.obj1,'Yield')
                    app.lastout1 = round(app.lastout1,1);
                    newout(1) = -log(newout(1));
                end
                
                if contains(app.obj2,'Yield')
                    app.lastout2 = round(app.lastout2,1);
                    newout(2) = -log(newout(2));
                end
                
                if contains(app.obj1,'STY')
                    app.lastout1 = round(app.lastout1);
                    newout(1) = -log(newout(1));
                end
                
                if contains(app.obj2,'STY')
                    app.lastout2 = round(app.lastout2);
                    newout(2) = -log(newout(2));
                end
                
                if contains(app.obj1,'EFactor')
                    app.lastout1 = round(app.lastout1,3);
                    newout(1) = -log(newout(1));
                end
                
                if contains(app.obj2,'EFactor')
                    app.lastout2 = round(app.lastout2,3);
                    newout(2) = -log(newout(2));
                end
                
                if contains(app.obj1,'Cost')
                    app.lastout1 = round(app.lastout1,2);
                    newout(1) = log(newout(1));
                end
                
                if contains(app.obj2,'Cost')
                    app.lastout2 = round(app.lastout2,2);
                    newout(2) = log(newout(2));
                end
                
                if app.trainnum == 1
                    app.exptrain = app.lastout;
                else
                    app.exptrain = vertcat(app.exptrain,app.lastout);
                end
                
                app.trainingopt = max(app.exptrain);
                app.trainingoptmin = min(app.exptrain);
                
                if  app.trainnum > 1
                    app.trainingopt1 = app.trainingopt(1);
                    app.trainingopt2 = app.trainingopt(2);
                else
                    app.trainingopt1 = app.lastout(1);
                    app.trainingopt2 = app.lastout(2);
                end
                
                if contains(app.obj1,'Yield')
                    app.trainingopt1 = round(app.trainingopt1,1);
                end
                
                if contains(app.obj2,'Yield')
                    if app.trainnum == 1
                        app.trainingopt2 = round(app.lastout(1),1);
                    else
                        app.trainingopt2 = round(app.trainingopt2,1);
                    end
                end
                
                if contains(app.obj1,'STY')
                    app.trainingopt1 = round(app.trainingopt1);
                end
                
                if contains(app.obj2,'STY')
                    if app.trainnum == 1
                        app.trainingopt2 = round(app.lastout(2),1);
                    else
                        app.trainingopt2 = round(app.trainingopt2,1);
                    end
                end
                
                if contains(app.obj1,'EFactor')
                    app.trainingopt1 = round(app.trainingopt1,3);
                end
                
                if contains(app.obj2,'EFactor')
                    if app.trainnum == 1
                        app.trainingopt2 = round(app.lastout(2),3);
                    else
                        app.trainingopt2 = round(app.trainingopt2,3);
                    end
                end
                
                if contains(app.obj1,'Cost')
                    app.trainingopt1 = round(app.trainingoptmin(1),2);
                end
                
                if contains(app.obj2,'Cost')
                    if app.trainnum == 1
                        app.trainingopt2 = round(app.lastout(2),2);
                    else
                        app.trainingopt2 = round(app.trainingoptmin(2),2);
                    end
                end
                
                app.trainingopt1 = num2str(app.trainingopt1);
                app.trainingopt2 = num2str(app.trainingopt2);
                
                app.TrainingOpt1.Text = app.trainingopt1;
                app.TrainingOpt2.Text = app.trainingopt2;
                
                if app.trainnum > 1
                    app.X = vertcat(app.X,newvar);
                    app.Y = vertcat(app.Y,newout);
                    app.voltable = vertcat(app.voltable,app.runvol);
                    app.peaktable = vertcat(app.peaktable,app.peakareas);
                else
                    app.X = newvar;
                    app.Y = newout;
                    app.voltable = app.runvol;
                    app.peaktable = app.peakareas;
                end
                
                writematrix(app.X,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Conditions','Range','A2');
                pause(2);
                writematrix(app.Y,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Outputs','Range','A2');
                pause(2);
                writematrix(app.exptrain,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Results','Range','A2');
                pause(2);
                writematrix(app.voltable,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','Reaction Volumes','Range','A2');
                pause(2);
                writematrix(app.peaktable,fullfile(pwd, 'trainingdata.xlsx'),'Sheet','HPLC Peak Areas','Range','A2');
                
                app.trainnum = app.trainnum + 1;
                
                app.rxnplot = num2str(app.trainnum - 1);
                
                app.timenow = clock;
                app.timestr = datestr(app.timenow);
                app.StatusTime.Text = app.timestr;
                drawnow;
                
            end
            
            app.autotrain = 1;
            
            app.StatusBox.Text = 'Training experiments successfully completed. Please initiate optimisation when ready.';
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            drawnow;
            
        end

        % Button pushed function: GenerateAutoExperimentsButton
        function GenerateAutoExperimentsButtonPushed(app, event)
            app.trainexpnum = app.TrainSelect.Value;
            app.n = app.numvar * app.trainexpnum;
            [app.X_lhs] = lhsdesignmod(app.n,app.lb,app.ub);
            
            
            numexp = num2str(app.n);
            exptxt = ' Training Experiments Generated';
            numexptxt = horzcat(numexp,exptxt);
            app.ConfirmTraining.Text = numexptxt;
            
            app.StatusBox.Text = 'Please ensure that experimental setup in Flow Commander is complete before commencing.';
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            
        end

        % Button pushed function: TrainingDataButton
        function TrainingDataButtonPushed(app, event)
            app.objparam = {app.obj1, app.obj2};
            xlswrite("trainingdata.xlsx",app.optparam,'Conditions');
            xlswrite("trainingdata.xlsx",app.objparam,'Outputs');
            winopen(fullfile("trainingdata.xlsx"));
        end

        % Button pushed function: SaveTrainingData
        function SaveTrainingDataButtonPushed(app, event)
            warning('OFF', 'MATLAB:table:ModifiedAndSavedVarnames')
            
            app.X = readtable("trainingdata.xlsx",'Sheet','Conditions');
            app.X = table2array(app.X);
            app.Y = readtable("trainingdata.xlsx",'Sheet','Outputs');
            app.Y = table2array(app.Y);
            
            app.trainingopt = min(app.Y);
            
            if length(app.trainingopt) > 1
                app.trainingopt1 = app.trainingopt(1);
                app.trainingopt2 = app.trainingopt(2);
            else
                app.trainingopt1 = app.Y(1);
                app.trainingopt2 = app.Y(2);
            end
            
            if contains(app.obj1,'Yield')
                app.trainingopt1 = exp(-app.trainingopt1);
                app.trainingopt1 = round(app.trainingopt1,1);
            end
            
            if contains(app.obj2,'Yield')
                app.trainingopt2 = exp(-app.trainingopt2);
                app.trainingopt2 = round(app.trainingopt2,1);
            end
            
            if contains(app.obj1,'STY')
                app.trainingopt1 = exp(-app.trainingopt1);
                app.trainingopt1 = round(app.trainingopt1,3);
            end
            
            if contains(app.obj2,'STY')
                app.trainingopt2 = exp(-app.trainingopt2);
                app.trainingopt2 = round(app.trainingopt2,3);
            end
            
            if contains(app.obj1,'EFactor')
                app.trainingopt1 = exp(-app.trainingopt1);
                app.trainingopt1 = round(app.trainingopt1,3);
            end
            
            if contains(app.obj2,'EFactor')
                app.trainingopt2 = exp(-app.trainingopt2);
                app.trainingopt2 = round(app.trainingopt2,3);
            end
            
            if contains(app.obj1,'Cost')
                app.trainingopt1 = exp(app.trainingopt1);
                app.trainingopt1 = round(app.trainingopt1,2);
            end
            
            if contains(app.obj2,'Cost')
                app.trainingopt2 = exp(app.trainingopt2);
                app.trainingopt2 = round(app.trainingopt2,2);
            end
            
            
            app.exptrain(:,1) = app.Y(:,1);
            app.exptrain(:,2) = app.Y(:,2);
            
            
            if contains(app.obj1,'Yield')
                app.exptrain(:,1) = exp(-app.exptrain(:,1));
            end
            
            if contains(app.obj2,'Yield')
                app.exptrain(:,2) = exp(-app.exptrain(:,2));
            end
            
            if contains(app.obj1,'STY')
                app.exptrain(:,1) = exp(-app.exptrain(:,1));
            end
            
            if contains(app.obj2,'STY')
                app.exptrain(:,2) = exp(-app.exptrain(:,2));
            end
            
            if contains(app.obj1,'EFactor')
                app.exptrain(:,1) = exp(-app.exptrain(:,1));
            end
            
            if contains(app.obj2,'EFactor')
                app.exptrain(:,2) = exp(-app.exptrain(:,2));
            end
            
            if contains(app.obj1,'Cost')
                app.exptrain(:,1) = exp(app.exptrain(:,1));
            end
            
            if contains(app.obj2,'Cost')
                app.exptrain(:,2) = exp(app.exptrain(:,2));
            end
            
            app.trainingopt1 = num2str(app.trainingopt1);
            app.trainingopt2 = num2str(app.trainingopt2);
            
            app.TrainingOpt1.Text = app.trainingopt1;
            app.TrainingOpt2.Text = app.trainingopt2;
                        
            app.TrainingLast1.Text = 'n/a';
            app.TrainingLast2.Text = 'n/a';
            
            app.StatusBox.Text = 'Training Data Acquired. Please commence Optimisation when Vapourtec is ready.';
            app.timenow = clock;
            app.timestr = datestr(app.timenow);
            app.StatusTime.Text = app.timestr;
            
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 1271 745];
            app.UIFigure.Name = 'UI Figure';

            % Create GridLayout
            app.GridLayout = uigridlayout(app.UIFigure);
            app.GridLayout.ColumnWidth = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};
            app.GridLayout.RowHeight = {'1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x', '1x'};

            % Create ConnectButton
            app.ConnectButton = uibutton(app.GridLayout, 'push');
            app.ConnectButton.ButtonPushedFcn = createCallbackFcn(app, @ConnectButtonPushed, true);
            app.ConnectButton.FontWeight = 'bold';
            app.ConnectButton.Layout.Row = 8;
            app.ConnectButton.Layout.Column = 2;
            app.ConnectButton.Text = 'Connect';

            % Create TitleText
            app.TitleText = uilabel(app.GridLayout);
            app.TitleText.FontSize = 13;
            app.TitleText.Layout.Row = 7;
            app.TitleText.Layout.Column = [2 5];
            app.TitleText.Text = 'Click blue arrow icon to ensure all components are "online" before connecting.';

            % Create ConnectText
            app.ConnectText = uilabel(app.GridLayout);
            app.ConnectText.HorizontalAlignment = 'center';
            app.ConnectText.FontWeight = 'bold';
            app.ConnectText.FontColor = [0.4667 0.6745 0.1882];
            app.ConnectText.Layout.Row = 8;
            app.ConnectText.Layout.Column = [3 5];
            app.ConnectText.Text = '';

            % Create HPLCButton
            app.HPLCButton = uibutton(app.GridLayout, 'push');
            app.HPLCButton.ButtonPushedFcn = createCallbackFcn(app, @HPLCButtonPushed, true);
            app.HPLCButton.FontWeight = 'bold';
            app.HPLCButton.Layout.Row = 24;
            app.HPLCButton.Layout.Column = [2 3];
            app.HPLCButton.Text = 'Analytical Parameters';

            % Create VariableLabel1
            app.VariableLabel1 = uilabel(app.GridLayout);
            app.VariableLabel1.Layout.Row = 14;
            app.VariableLabel1.Layout.Column = [2 3];
            app.VariableLabel1.Text = '';

            % Create VariableLabel2
            app.VariableLabel2 = uilabel(app.GridLayout);
            app.VariableLabel2.Layout.Row = 15;
            app.VariableLabel2.Layout.Column = [2 3];
            app.VariableLabel2.Text = '';

            % Create SelectOptimisationVariablesButton
            app.SelectOptimisationVariablesButton = uibutton(app.GridLayout, 'push');
            app.SelectOptimisationVariablesButton.ButtonPushedFcn = createCallbackFcn(app, @SelectOptimisationVariablesButtonPushed, true);
            app.SelectOptimisationVariablesButton.FontWeight = 'bold';
            app.SelectOptimisationVariablesButton.Layout.Row = 12;
            app.SelectOptimisationVariablesButton.Layout.Column = [2 5];
            app.SelectOptimisationVariablesButton.Text = 'Select Optimisation Variables';

            % Create LowerLimitLabel
            app.LowerLimitLabel = uilabel(app.GridLayout);
            app.LowerLimitLabel.HorizontalAlignment = 'center';
            app.LowerLimitLabel.Layout.Row = 13;
            app.LowerLimitLabel.Layout.Column = 4;
            app.LowerLimitLabel.Text = 'Lower Limit';

            % Create UpperLimitLabel
            app.UpperLimitLabel = uilabel(app.GridLayout);
            app.UpperLimitLabel.HorizontalAlignment = 'center';
            app.UpperLimitLabel.Layout.Row = 13;
            app.UpperLimitLabel.Layout.Column = 5;
            app.UpperLimitLabel.Text = 'Upper Limit';

            % Create VariableLabel3
            app.VariableLabel3 = uilabel(app.GridLayout);
            app.VariableLabel3.Layout.Row = 16;
            app.VariableLabel3.Layout.Column = [2 3];
            app.VariableLabel3.Text = '';

            % Create VariableLabel4
            app.VariableLabel4 = uilabel(app.GridLayout);
            app.VariableLabel4.Layout.Row = 17;
            app.VariableLabel4.Layout.Column = [2 3];
            app.VariableLabel4.Text = '';

            % Create Var1Low
            app.Var1Low = uieditfield(app.GridLayout, 'numeric');
            app.Var1Low.HorizontalAlignment = 'center';
            app.Var1Low.Layout.Row = 14;
            app.Var1Low.Layout.Column = 4;

            % Create Var2Low
            app.Var2Low = uieditfield(app.GridLayout, 'numeric');
            app.Var2Low.HorizontalAlignment = 'center';
            app.Var2Low.Layout.Row = 15;
            app.Var2Low.Layout.Column = 4;

            % Create Var3Low
            app.Var3Low = uieditfield(app.GridLayout, 'numeric');
            app.Var3Low.HorizontalAlignment = 'center';
            app.Var3Low.Layout.Row = 16;
            app.Var3Low.Layout.Column = 4;

            % Create Var4Low
            app.Var4Low = uieditfield(app.GridLayout, 'numeric');
            app.Var4Low.HorizontalAlignment = 'center';
            app.Var4Low.Layout.Row = 17;
            app.Var4Low.Layout.Column = 4;

            % Create Var1Hi
            app.Var1Hi = uieditfield(app.GridLayout, 'numeric');
            app.Var1Hi.HorizontalAlignment = 'center';
            app.Var1Hi.Layout.Row = 14;
            app.Var1Hi.Layout.Column = 5;

            % Create Var2Hi
            app.Var2Hi = uieditfield(app.GridLayout, 'numeric');
            app.Var2Hi.HorizontalAlignment = 'center';
            app.Var2Hi.Layout.Row = 15;
            app.Var2Hi.Layout.Column = 5;

            % Create Var3Hi
            app.Var3Hi = uieditfield(app.GridLayout, 'numeric');
            app.Var3Hi.HorizontalAlignment = 'center';
            app.Var3Hi.Layout.Row = 16;
            app.Var3Hi.Layout.Column = 5;

            % Create Var4Hi
            app.Var4Hi = uieditfield(app.GridLayout, 'numeric');
            app.Var4Hi.HorizontalAlignment = 'center';
            app.Var4Hi.Layout.Row = 17;
            app.Var4Hi.Layout.Column = 5;

            % Create VariableLabel5
            app.VariableLabel5 = uilabel(app.GridLayout);
            app.VariableLabel5.Layout.Row = 18;
            app.VariableLabel5.Layout.Column = [2 3];
            app.VariableLabel5.Text = '';

            % Create Var5Low
            app.Var5Low = uieditfield(app.GridLayout, 'numeric');
            app.Var5Low.HorizontalAlignment = 'center';
            app.Var5Low.Layout.Row = 18;
            app.Var5Low.Layout.Column = 4;

            % Create Var5Hi
            app.Var5Hi = uieditfield(app.GridLayout, 'numeric');
            app.Var5Hi.HorizontalAlignment = 'center';
            app.Var5Hi.Layout.Row = 18;
            app.Var5Hi.Layout.Column = 5;

            % Create VariableHelp
            app.VariableHelp = uilabel(app.GridLayout);
            app.VariableHelp.FontSize = 13;
            app.VariableHelp.Layout.Row = 11;
            app.VariableHelp.Layout.Column = [2 5];
            app.VariableHelp.Text = 'Select and edit optimistion targets. [Please delete any unnecessary variables].';

            % Create ConfirmLimitsButton
            app.ConfirmLimitsButton = uibutton(app.GridLayout, 'push');
            app.ConfirmLimitsButton.ButtonPushedFcn = createCallbackFcn(app, @ConfirmLimitsButtonPushed, true);
            app.ConfirmLimitsButton.FontWeight = 'bold';
            app.ConfirmLimitsButton.Layout.Row = 19;
            app.ConfirmLimitsButton.Layout.Column = [2 3];
            app.ConfirmLimitsButton.Text = 'Confirm Limits';

            % Create SaveLimitsLabel
            app.SaveLimitsLabel = uilabel(app.GridLayout);
            app.SaveLimitsLabel.HorizontalAlignment = 'center';
            app.SaveLimitsLabel.FontWeight = 'bold';
            app.SaveLimitsLabel.FontColor = [0.4667 0.6745 0.1882];
            app.SaveLimitsLabel.Layout.Row = 19;
            app.SaveLimitsLabel.Layout.Column = [4 5];
            app.SaveLimitsLabel.Text = '';

            % Create ScaleSelect
            app.ScaleSelect = uispinner(app.GridLayout);
            app.ScaleSelect.Limits = [1 Inf];
            app.ScaleSelect.RoundFractionalValues = 'on';
            app.ScaleSelect.ValueChangedFcn = createCallbackFcn(app, @ScaleSelectValueChanged, true);
            app.ScaleSelect.HorizontalAlignment = 'center';
            app.ScaleSelect.Layout.Row = 6;
            app.ScaleSelect.Layout.Column = 10;
            app.ScaleSelect.Value = 5;

            % Create ScaleLabel
            app.ScaleLabel = uilabel(app.GridLayout);
            app.ScaleLabel.FontSize = 13;
            app.ScaleLabel.Layout.Row = 6;
            app.ScaleLabel.Layout.Column = [7 9];
            app.ScaleLabel.Text = 'Select the limiting quantity from Pump A for each run (ml)';

            % Create Step1Label
            app.Step1Label = uilabel(app.GridLayout);
            app.Step1Label.BackgroundColor = [0.4824 0.3569 0.6902];
            app.Step1Label.HorizontalAlignment = 'center';
            app.Step1Label.FontSize = 13;
            app.Step1Label.FontWeight = 'bold';
            app.Step1Label.FontColor = [1 1 1];
            app.Step1Label.Layout.Row = 5;
            app.Step1Label.Layout.Column = 2;
            app.Step1Label.Text = 'Step 1:';

            % Create Step1TitleLabel
            app.Step1TitleLabel = uilabel(app.GridLayout);
            app.Step1TitleLabel.BackgroundColor = [1 1 1];
            app.Step1TitleLabel.HorizontalAlignment = 'center';
            app.Step1TitleLabel.FontSize = 13;
            app.Step1TitleLabel.FontWeight = 'bold';
            app.Step1TitleLabel.Layout.Row = 5;
            app.Step1TitleLabel.Layout.Column = [3 5];
            app.Step1TitleLabel.Text = 'Setup Interface with Flow Chemistry Equipment';

            % Create SpecifyChemicalInputsLabel_2
            app.SpecifyChemicalInputsLabel_2 = uilabel(app.GridLayout);
            app.SpecifyChemicalInputsLabel_2.BackgroundColor = [1 1 1];
            app.SpecifyChemicalInputsLabel_2.HorizontalAlignment = 'center';
            app.SpecifyChemicalInputsLabel_2.FontSize = 13;
            app.SpecifyChemicalInputsLabel_2.FontWeight = 'bold';
            app.SpecifyChemicalInputsLabel_2.Layout.Row = 21;
            app.SpecifyChemicalInputsLabel_2.Layout.Column = [3 5];
            app.SpecifyChemicalInputsLabel_2.Text = 'Specify Chemical Inputs';

            % Create Step2Label_2
            app.Step2Label_2 = uilabel(app.GridLayout);
            app.Step2Label_2.BackgroundColor = [0.4824 0.3569 0.6902];
            app.Step2Label_2.HorizontalAlignment = 'center';
            app.Step2Label_2.FontSize = 13;
            app.Step2Label_2.FontWeight = 'bold';
            app.Step2Label_2.FontColor = [1 1 1];
            app.Step2Label_2.Layout.Row = 10;
            app.Step2Label_2.Layout.Column = 2;
            app.Step2Label_2.Text = 'Step 2:';

            % Create DefineOptimisationSpaceLabel
            app.DefineOptimisationSpaceLabel = uilabel(app.GridLayout);
            app.DefineOptimisationSpaceLabel.BackgroundColor = [1 1 1];
            app.DefineOptimisationSpaceLabel.HorizontalAlignment = 'center';
            app.DefineOptimisationSpaceLabel.FontSize = 13;
            app.DefineOptimisationSpaceLabel.FontWeight = 'bold';
            app.DefineOptimisationSpaceLabel.Layout.Row = 10;
            app.DefineOptimisationSpaceLabel.Layout.Column = [3 5];
            app.DefineOptimisationSpaceLabel.Text = 'Define Optimisation Space';

            % Create Step4Label
            app.Step4Label = uilabel(app.GridLayout);
            app.Step4Label.BackgroundColor = [0.4824 0.3569 0.6902];
            app.Step4Label.HorizontalAlignment = 'center';
            app.Step4Label.FontSize = 13;
            app.Step4Label.FontWeight = 'bold';
            app.Step4Label.FontColor = [1 1 1];
            app.Step4Label.Layout.Row = 5;
            app.Step4Label.Layout.Column = 7;
            app.Step4Label.Text = 'Step 4:';

            % Create SelectReactionScaleLabel
            app.SelectReactionScaleLabel = uilabel(app.GridLayout);
            app.SelectReactionScaleLabel.BackgroundColor = [1 1 1];
            app.SelectReactionScaleLabel.HorizontalAlignment = 'center';
            app.SelectReactionScaleLabel.FontSize = 13;
            app.SelectReactionScaleLabel.FontWeight = 'bold';
            app.SelectReactionScaleLabel.Layout.Row = 5;
            app.SelectReactionScaleLabel.Layout.Column = [8 10];
            app.SelectReactionScaleLabel.Text = 'Select Reaction Scale';

            % Create LaunchFlowCommanderButton
            app.LaunchFlowCommanderButton = uibutton(app.GridLayout, 'push');
            app.LaunchFlowCommanderButton.ButtonPushedFcn = createCallbackFcn(app, @LaunchFlowCommanderButtonPushed, true);
            app.LaunchFlowCommanderButton.FontWeight = 'bold';
            app.LaunchFlowCommanderButton.Layout.Row = 6;
            app.LaunchFlowCommanderButton.Layout.Column = [2 5];
            app.LaunchFlowCommanderButton.Text = 'Launch Flow Commander';

            % Create AppTitleLabel
            app.AppTitleLabel = uilabel(app.GridLayout);
            app.AppTitleLabel.FontSize = 32;
            app.AppTitleLabel.FontWeight = 'bold';
            app.AppTitleLabel.FontColor = [0.4824 0.3569 0.6902];
            app.AppTitleLabel.Layout.Row = [2 3];
            app.AppTitleLabel.Layout.Column = [2 12];
            app.AppTitleLabel.Text = 'Single-Step Multi-Objective Optimisation Station';

            % Create Step3Label
            app.Step3Label = uilabel(app.GridLayout);
            app.Step3Label.BackgroundColor = [0.4824 0.3569 0.6902];
            app.Step3Label.HorizontalAlignment = 'center';
            app.Step3Label.FontSize = 13;
            app.Step3Label.FontWeight = 'bold';
            app.Step3Label.FontColor = [1 1 1];
            app.Step3Label.Layout.Row = 21;
            app.Step3Label.Layout.Column = 2;
            app.Step3Label.Text = 'Step 3:';

            % Create Step5Label_2
            app.Step5Label_2 = uilabel(app.GridLayout);
            app.Step5Label_2.BackgroundColor = [0.4824 0.3569 0.6902];
            app.Step5Label_2.HorizontalAlignment = 'center';
            app.Step5Label_2.FontSize = 13;
            app.Step5Label_2.FontWeight = 'bold';
            app.Step5Label_2.FontColor = [1 1 1];
            app.Step5Label_2.Layout.Row = 8;
            app.Step5Label_2.Layout.Column = 7;
            app.Step5Label_2.Text = 'Step 5:';

            % Create SelectOptimisationTargetsLabel
            app.SelectOptimisationTargetsLabel = uilabel(app.GridLayout);
            app.SelectOptimisationTargetsLabel.BackgroundColor = [1 1 1];
            app.SelectOptimisationTargetsLabel.HorizontalAlignment = 'center';
            app.SelectOptimisationTargetsLabel.FontSize = 13;
            app.SelectOptimisationTargetsLabel.FontWeight = 'bold';
            app.SelectOptimisationTargetsLabel.Layout.Row = 8;
            app.SelectOptimisationTargetsLabel.Layout.Column = [8 10];
            app.SelectOptimisationTargetsLabel.Text = 'Select Optimisation Targets';

            % Create TitleText_2
            app.TitleText_2 = uilabel(app.GridLayout);
            app.TitleText_2.FontSize = 13;
            app.TitleText_2.Layout.Row = 9;
            app.TitleText_2.Layout.Column = [7 10];
            app.TitleText_2.Text = 'Select the target functions for the multi-objective optimisation from the list below.';

            % Create Objective1DropDown
            app.Objective1DropDown = uidropdown(app.GridLayout);
            app.Objective1DropDown.Items = {'[Select]', 'Yield', 'STY', 'EFactor', 'Cost'};
            app.Objective1DropDown.ValueChangedFcn = createCallbackFcn(app, @Objective1DropDownValueChanged, true);
            app.Objective1DropDown.Layout.Row = 10;
            app.Objective1DropDown.Layout.Column = 8;
            app.Objective1DropDown.Value = '[Select]';

            % Create Objective2DropDown
            app.Objective2DropDown = uidropdown(app.GridLayout);
            app.Objective2DropDown.Items = {'[Select]', 'Yield', 'STY', 'EFactor', 'Cost'};
            app.Objective2DropDown.ValueChangedFcn = createCallbackFcn(app, @Objective2DropDownValueChanged, true);
            app.Objective2DropDown.Layout.Row = 10;
            app.Objective2DropDown.Layout.Column = 10;
            app.Objective2DropDown.Value = '[Select]';

            % Create Step6Label_2
            app.Step6Label_2 = uilabel(app.GridLayout);
            app.Step6Label_2.BackgroundColor = [0.4824 0.3569 0.6902];
            app.Step6Label_2.HorizontalAlignment = 'center';
            app.Step6Label_2.FontSize = 13;
            app.Step6Label_2.FontWeight = 'bold';
            app.Step6Label_2.FontColor = [1 1 1];
            app.Step6Label_2.Layout.Row = 14;
            app.Step6Label_2.Layout.Column = 7;
            app.Step6Label_2.Text = 'Step 6:';

            % Create TrainOptimisationModelLabel
            app.TrainOptimisationModelLabel = uilabel(app.GridLayout);
            app.TrainOptimisationModelLabel.BackgroundColor = [1 1 1];
            app.TrainOptimisationModelLabel.HorizontalAlignment = 'center';
            app.TrainOptimisationModelLabel.FontSize = 13;
            app.TrainOptimisationModelLabel.FontWeight = 'bold';
            app.TrainOptimisationModelLabel.Layout.Row = 14;
            app.TrainOptimisationModelLabel.Layout.Column = [8 10];
            app.TrainOptimisationModelLabel.Text = 'Train Optimisation Model';

            % Create TitleText_5
            app.TitleText_5 = uilabel(app.GridLayout);
            app.TitleText_5.FontSize = 13;
            app.TitleText_5.Layout.Row = 22;
            app.TitleText_5.Layout.Column = [2 5];
            app.TitleText_5.Text = 'Specify the required properties of chemical species in the system.';

            % Create StartOptimisationButton
            app.StartOptimisationButton = uibutton(app.GridLayout, 'push');
            app.StartOptimisationButton.ButtonPushedFcn = createCallbackFcn(app, @StartOptimisationButtonPushed, true);
            app.StartOptimisationButton.BackgroundColor = [0.4196 0.6902 0.3608];
            app.StartOptimisationButton.FontSize = 18;
            app.StartOptimisationButton.FontWeight = 'bold';
            app.StartOptimisationButton.FontColor = [1 1 1];
            app.StartOptimisationButton.Layout.Row = [23 24];
            app.StartOptimisationButton.Layout.Column = [7 10];
            app.StartOptimisationButton.Text = 'Start Optimisation';

            % Create StatusBox
            app.StatusBox = uilabel(app.GridLayout);
            app.StatusBox.BackgroundColor = [1 1 1];
            app.StatusBox.HorizontalAlignment = 'center';
            app.StatusBox.FontSize = 15;
            app.StatusBox.FontWeight = 'bold';
            app.StatusBox.Layout.Row = [26 27];
            app.StatusBox.Layout.Column = [4 10];
            app.StatusBox.Text = '';

            % Create StatusLabel
            app.StatusLabel = uilabel(app.GridLayout);
            app.StatusLabel.BackgroundColor = [0.4824 0.3569 0.6902];
            app.StatusLabel.HorizontalAlignment = 'center';
            app.StatusLabel.FontSize = 16;
            app.StatusLabel.FontWeight = 'bold';
            app.StatusLabel.FontColor = [1 1 1];
            app.StatusLabel.Layout.Row = [26 27];
            app.StatusLabel.Layout.Column = 2;
            app.StatusLabel.Text = 'Status:';

            % Create LastStatusLabel
            app.LastStatusLabel = uilabel(app.GridLayout);
            app.LastStatusLabel.BackgroundColor = [0.4784 0.3608 0.6902];
            app.LastStatusLabel.HorizontalAlignment = 'center';
            app.LastStatusLabel.FontSize = 16;
            app.LastStatusLabel.FontWeight = 'bold';
            app.LastStatusLabel.FontColor = [1 1 1];
            app.LastStatusLabel.Layout.Row = [26 27];
            app.LastStatusLabel.Layout.Column = 12;
            app.LastStatusLabel.Text = 'Last Status:';

            % Create StatusTime
            app.StatusTime = uilabel(app.GridLayout);
            app.StatusTime.BackgroundColor = [1 1 1];
            app.StatusTime.HorizontalAlignment = 'center';
            app.StatusTime.FontSize = 13;
            app.StatusTime.Layout.Row = [26 27];
            app.StatusTime.Layout.Column = [13 15];
            app.StatusTime.Text = '';

            % Create OptimisationNumLabel
            app.OptimisationNumLabel = uilabel(app.GridLayout);
            app.OptimisationNumLabel.BackgroundColor = [0.4824 0.3569 0.6902];
            app.OptimisationNumLabel.HorizontalAlignment = 'center';
            app.OptimisationNumLabel.FontSize = 13;
            app.OptimisationNumLabel.FontWeight = 'bold';
            app.OptimisationNumLabel.FontColor = [1 1 1];
            app.OptimisationNumLabel.Layout.Row = 6;
            app.OptimisationNumLabel.Layout.Column = 14;
            app.OptimisationNumLabel.Text = 'Exp. No:';

            % Create ReactNum
            app.ReactNum = uilabel(app.GridLayout);
            app.ReactNum.BackgroundColor = [1 1 1];
            app.ReactNum.HorizontalAlignment = 'center';
            app.ReactNum.FontSize = 15;
            app.ReactNum.FontWeight = 'bold';
            app.ReactNum.Layout.Row = [5 6];
            app.ReactNum.Layout.Column = 15;
            app.ReactNum.Text = 'n/a';

            % Create PauseButton
            app.PauseButton = uibutton(app.GridLayout, 'push');
            app.PauseButton.ButtonPushedFcn = createCallbackFcn(app, @PauseButtonPushed, true);
            app.PauseButton.FontSize = 16;
            app.PauseButton.FontWeight = 'bold';
            app.PauseButton.Layout.Row = [23 24];
            app.PauseButton.Layout.Column = 12;
            app.PauseButton.Text = 'Pause';

            % Create ResumeButton
            app.ResumeButton = uibutton(app.GridLayout, 'push');
            app.ResumeButton.ButtonPushedFcn = createCallbackFcn(app, @ResumeButtonPushed, true);
            app.ResumeButton.FontSize = 16;
            app.ResumeButton.FontWeight = 'bold';
            app.ResumeButton.FontColor = [0.8 0.8 0.8];
            app.ResumeButton.Layout.Row = [23 24];
            app.ResumeButton.Layout.Column = 13;
            app.ResumeButton.Text = 'Resume';

            % Create PauseBox
            app.PauseBox = uilabel(app.GridLayout);
            app.PauseBox.BackgroundColor = [1 1 1];
            app.PauseBox.HorizontalAlignment = 'center';
            app.PauseBox.FontSize = 15;
            app.PauseBox.FontWeight = 'bold';
            app.PauseBox.FontColor = [0.4196 0.6902 0.3608];
            app.PauseBox.Layout.Row = [23 24];
            app.PauseBox.Layout.Column = [14 15];
            app.PauseBox.Text = 'System Running';

            % Create ExperimentalConditionsLabel
            app.ExperimentalConditionsLabel = uilabel(app.GridLayout);
            app.ExperimentalConditionsLabel.BackgroundColor = [0.4824 0.3569 0.6902];
            app.ExperimentalConditionsLabel.HorizontalAlignment = 'center';
            app.ExperimentalConditionsLabel.FontSize = 13;
            app.ExperimentalConditionsLabel.FontWeight = 'bold';
            app.ExperimentalConditionsLabel.FontColor = [1 1 1];
            app.ExperimentalConditionsLabel.Layout.Row = 8;
            app.ExperimentalConditionsLabel.Layout.Column = [12 13];
            app.ExperimentalConditionsLabel.Text = 'Experimental Conditions:';

            % Create VariableLabel1B
            app.VariableLabel1B = uilabel(app.GridLayout);
            app.VariableLabel1B.Layout.Row = 9;
            app.VariableLabel1B.Layout.Column = [12 13];
            app.VariableLabel1B.Text = '';

            % Create VariableLabel2B
            app.VariableLabel2B = uilabel(app.GridLayout);
            app.VariableLabel2B.Layout.Row = 10;
            app.VariableLabel2B.Layout.Column = [12 13];
            app.VariableLabel2B.Text = '';

            % Create VariableLabel3B
            app.VariableLabel3B = uilabel(app.GridLayout);
            app.VariableLabel3B.Layout.Row = 11;
            app.VariableLabel3B.Layout.Column = [12 13];
            app.VariableLabel3B.Text = '';

            % Create VariableLabel4B
            app.VariableLabel4B = uilabel(app.GridLayout);
            app.VariableLabel4B.Layout.Row = 12;
            app.VariableLabel4B.Layout.Column = [12 13];
            app.VariableLabel4B.Text = '';

            % Create VariableLabel5B
            app.VariableLabel5B = uilabel(app.GridLayout);
            app.VariableLabel5B.Layout.Row = 13;
            app.VariableLabel5B.Layout.Column = [12 13];
            app.VariableLabel5B.Text = '';

            % Create CurrentLabel
            app.CurrentLabel = uilabel(app.GridLayout);
            app.CurrentLabel.BackgroundColor = [1 1 1];
            app.CurrentLabel.HorizontalAlignment = 'center';
            app.CurrentLabel.FontSize = 13;
            app.CurrentLabel.FontWeight = 'bold';
            app.CurrentLabel.Layout.Row = 8;
            app.CurrentLabel.Layout.Column = 14;
            app.CurrentLabel.Text = 'Current ';

            % Create TargetObjective1Label
            app.TargetObjective1Label = uilabel(app.GridLayout);
            app.TargetObjective1Label.HorizontalAlignment = 'center';
            app.TargetObjective1Label.Layout.Row = 10;
            app.TargetObjective1Label.Layout.Column = 7;
            app.TargetObjective1Label.Text = 'Target Objective 1:';

            % Create TargetObjective2Label
            app.TargetObjective2Label = uilabel(app.GridLayout);
            app.TargetObjective2Label.HorizontalAlignment = 'center';
            app.TargetObjective2Label.Layout.Row = 10;
            app.TargetObjective2Label.Layout.Column = 9;
            app.TargetObjective2Label.Text = 'Target Objective 2:';

            % Create ConfirmObjectiveFunctionsButton
            app.ConfirmObjectiveFunctionsButton = uibutton(app.GridLayout, 'push');
            app.ConfirmObjectiveFunctionsButton.ButtonPushedFcn = createCallbackFcn(app, @ConfirmObjectiveFunctionsButtonPushed, true);
            app.ConfirmObjectiveFunctionsButton.FontWeight = 'bold';
            app.ConfirmObjectiveFunctionsButton.Layout.Row = 12;
            app.ConfirmObjectiveFunctionsButton.Layout.Column = [7 8];
            app.ConfirmObjectiveFunctionsButton.Text = 'Confirm Objective Functions';

            % Create ConfirmObjectives
            app.ConfirmObjectives = uilabel(app.GridLayout);
            app.ConfirmObjectives.HorizontalAlignment = 'center';
            app.ConfirmObjectives.FontWeight = 'bold';
            app.ConfirmObjectives.FontColor = [0.4667 0.6745 0.1882];
            app.ConfirmObjectives.Layout.Row = 12;
            app.ConfirmObjectives.Layout.Column = [9 10];
            app.ConfirmObjectives.Text = '';

            % Create TitleText_7
            app.TitleText_7 = uilabel(app.GridLayout);
            app.TitleText_7.FontSize = 13;
            app.TitleText_7.Layout.Row = 11;
            app.TitleText_7.Layout.Column = [7 10];
            app.TitleText_7.Text = 'If prompted, enter the relevant chemical properties upon confirmation.';

            % Create ReactantSolutionsButton
            app.ReactantSolutionsButton = uibutton(app.GridLayout, 'push');
            app.ReactantSolutionsButton.ButtonPushedFcn = createCallbackFcn(app, @ReactantSolutionsButtonPushed, true);
            app.ReactantSolutionsButton.FontWeight = 'bold';
            app.ReactantSolutionsButton.Layout.Row = 23;
            app.ReactantSolutionsButton.Layout.Column = [2 3];
            app.ReactantSolutionsButton.Text = 'Reactant Solutions';

            % Create ConfirmReactants
            app.ConfirmReactants = uilabel(app.GridLayout);
            app.ConfirmReactants.HorizontalAlignment = 'center';
            app.ConfirmReactants.FontWeight = 'bold';
            app.ConfirmReactants.FontColor = [0.4667 0.6745 0.1882];
            app.ConfirmReactants.Layout.Row = 23;
            app.ConfirmReactants.Layout.Column = [4 5];
            app.ConfirmReactants.Text = '';

            % Create ConfirmAnalysis
            app.ConfirmAnalysis = uilabel(app.GridLayout);
            app.ConfirmAnalysis.HorizontalAlignment = 'center';
            app.ConfirmAnalysis.FontWeight = 'bold';
            app.ConfirmAnalysis.FontColor = [0.4667 0.6745 0.1882];
            app.ConfirmAnalysis.Layout.Row = 24;
            app.ConfirmAnalysis.Layout.Column = [4 5];
            app.ConfirmAnalysis.Text = '';

            % Create ReactionOutputsLabel
            app.ReactionOutputsLabel = uilabel(app.GridLayout);
            app.ReactionOutputsLabel.BackgroundColor = [0.4784 0.3608 0.6902];
            app.ReactionOutputsLabel.HorizontalAlignment = 'center';
            app.ReactionOutputsLabel.FontSize = 13;
            app.ReactionOutputsLabel.FontWeight = 'bold';
            app.ReactionOutputsLabel.FontColor = [1 1 1];
            app.ReactionOutputsLabel.Layout.Row = 15;
            app.ReactionOutputsLabel.Layout.Column = [12 13];
            app.ReactionOutputsLabel.Text = 'Reaction Outputs:';

            % Create OptimalLabel
            app.OptimalLabel = uilabel(app.GridLayout);
            app.OptimalLabel.BackgroundColor = [1 1 1];
            app.OptimalLabel.HorizontalAlignment = 'center';
            app.OptimalLabel.FontSize = 13;
            app.OptimalLabel.FontWeight = 'bold';
            app.OptimalLabel.Layout.Row = 15;
            app.OptimalLabel.Layout.Column = 14;
            app.OptimalLabel.Text = 'Optimal';

            % Create TrainingObj1
            app.TrainingObj1 = uilabel(app.GridLayout);
            app.TrainingObj1.Layout.Row = 16;
            app.TrainingObj1.Layout.Column = [12 13];
            app.TrainingObj1.Text = '';

            % Create TrainingObj2
            app.TrainingObj2 = uilabel(app.GridLayout);
            app.TrainingObj2.Layout.Row = 17;
            app.TrainingObj2.Layout.Column = [12 13];
            app.TrainingObj2.Text = '';

            % Create MLObj1
            app.MLObj1 = uilabel(app.GridLayout);
            app.MLObj1.Layout.Row = 18;
            app.MLObj1.Layout.Column = [12 13];
            app.MLObj1.Text = '';

            % Create MLObj2
            app.MLObj2 = uilabel(app.GridLayout);
            app.MLObj2.Layout.Row = 19;
            app.MLObj2.Layout.Column = [12 13];
            app.MLObj2.Text = '';

            % Create TrainingOpt1
            app.TrainingOpt1 = uilabel(app.GridLayout);
            app.TrainingOpt1.HorizontalAlignment = 'center';
            app.TrainingOpt1.FontSize = 13;
            app.TrainingOpt1.FontWeight = 'bold';
            app.TrainingOpt1.FontColor = [1 1 1];
            app.TrainingOpt1.Layout.Row = 16;
            app.TrainingOpt1.Layout.Column = 14;
            app.TrainingOpt1.Text = '';

            % Create TrainingOpt2
            app.TrainingOpt2 = uilabel(app.GridLayout);
            app.TrainingOpt2.HorizontalAlignment = 'center';
            app.TrainingOpt2.FontSize = 13;
            app.TrainingOpt2.FontWeight = 'bold';
            app.TrainingOpt2.FontColor = [1 1 1];
            app.TrainingOpt2.Layout.Row = 17;
            app.TrainingOpt2.Layout.Column = 14;
            app.TrainingOpt2.Text = '';

            % Create MLOpt1
            app.MLOpt1 = uilabel(app.GridLayout);
            app.MLOpt1.HorizontalAlignment = 'center';
            app.MLOpt1.FontSize = 13;
            app.MLOpt1.FontWeight = 'bold';
            app.MLOpt1.FontColor = [1 1 1];
            app.MLOpt1.Layout.Row = 18;
            app.MLOpt1.Layout.Column = 14;
            app.MLOpt1.Text = '';

            % Create MLOpt2
            app.MLOpt2 = uilabel(app.GridLayout);
            app.MLOpt2.HorizontalAlignment = 'center';
            app.MLOpt2.FontSize = 13;
            app.MLOpt2.FontWeight = 'bold';
            app.MLOpt2.FontColor = [1 1 1];
            app.MLOpt2.Layout.Row = 19;
            app.MLOpt2.Layout.Column = 14;
            app.MLOpt2.Text = '';

            % Create GeneratePlotButton
            app.GeneratePlotButton = uibutton(app.GridLayout, 'push');
            app.GeneratePlotButton.ButtonPushedFcn = createCallbackFcn(app, @GeneratePlotButtonPushed, true);
            app.GeneratePlotButton.FontSize = 13;
            app.GeneratePlotButton.FontWeight = 'bold';
            app.GeneratePlotButton.Layout.Row = 21;
            app.GeneratePlotButton.Layout.Column = [12 15];
            app.GeneratePlotButton.Text = 'Generate Graph of Optimisation Experiments';

            % Create TrainSelect
            app.TrainSelect = uispinner(app.GridLayout);
            app.TrainSelect.Limits = [1 100];
            app.TrainSelect.RoundFractionalValues = 'on';
            app.TrainSelect.HorizontalAlignment = 'center';
            app.TrainSelect.Layout.Row = 17;
            app.TrainSelect.Layout.Column = 10;
            app.TrainSelect.Value = 8;

            % Create TrainLabel
            app.TrainLabel = uilabel(app.GridLayout);
            app.TrainLabel.FontSize = 13;
            app.TrainLabel.Layout.Row = 17;
            app.TrainLabel.Layout.Column = [8 9];
            app.TrainLabel.Text = 'Enter no. of experiments per variable:';

            % Create StartTrainingButton
            app.StartTrainingButton = uibutton(app.GridLayout, 'push');
            app.StartTrainingButton.ButtonPushedFcn = createCallbackFcn(app, @StartTrainingButtonPushed, true);
            app.StartTrainingButton.BackgroundColor = [0.9294 0.6941 0.1255];
            app.StartTrainingButton.FontSize = 18;
            app.StartTrainingButton.FontWeight = 'bold';
            app.StartTrainingButton.FontColor = [1 1 1];
            app.StartTrainingButton.Layout.Row = [19 20];
            app.StartTrainingButton.Layout.Column = [7 10];
            app.StartTrainingButton.Text = 'Start Training';

            % Create GenerateAutoExperimentsButton
            app.GenerateAutoExperimentsButton = uibutton(app.GridLayout, 'push');
            app.GenerateAutoExperimentsButton.ButtonPushedFcn = createCallbackFcn(app, @GenerateAutoExperimentsButtonPushed, true);
            app.GenerateAutoExperimentsButton.FontSize = 13;
            app.GenerateAutoExperimentsButton.FontWeight = 'bold';
            app.GenerateAutoExperimentsButton.Layout.Row = 18;
            app.GenerateAutoExperimentsButton.Layout.Column = [7 8];
            app.GenerateAutoExperimentsButton.Text = 'Generate Auto Experiments';

            % Create Step7Label
            app.Step7Label = uilabel(app.GridLayout);
            app.Step7Label.BackgroundColor = [0.4824 0.3569 0.6902];
            app.Step7Label.HorizontalAlignment = 'center';
            app.Step7Label.FontSize = 13;
            app.Step7Label.FontWeight = 'bold';
            app.Step7Label.FontColor = [1 1 1];
            app.Step7Label.Layout.Row = 22;
            app.Step7Label.Layout.Column = 7;
            app.Step7Label.Text = 'Step 7:';

            % Create MachineLearningOptimisationLabel
            app.MachineLearningOptimisationLabel = uilabel(app.GridLayout);
            app.MachineLearningOptimisationLabel.BackgroundColor = [1 1 1];
            app.MachineLearningOptimisationLabel.HorizontalAlignment = 'center';
            app.MachineLearningOptimisationLabel.FontSize = 13;
            app.MachineLearningOptimisationLabel.FontWeight = 'bold';
            app.MachineLearningOptimisationLabel.Layout.Row = 22;
            app.MachineLearningOptimisationLabel.Layout.Column = [8 10];
            app.MachineLearningOptimisationLabel.Text = 'Machine Learning Optimisation';

            % Create ConfirmTraining
            app.ConfirmTraining = uilabel(app.GridLayout);
            app.ConfirmTraining.HorizontalAlignment = 'center';
            app.ConfirmTraining.FontWeight = 'bold';
            app.ConfirmTraining.FontColor = [0.4667 0.6745 0.1882];
            app.ConfirmTraining.Layout.Row = 18;
            app.ConfirmTraining.Layout.Column = [9 10];
            app.ConfirmTraining.Text = '';

            % Create SystemState
            app.SystemState = uilabel(app.GridLayout);
            app.SystemState.BackgroundColor = [0.902 0.902 0.902];
            app.SystemState.HorizontalAlignment = 'center';
            app.SystemState.FontSize = 16;
            app.SystemState.FontWeight = 'bold';
            app.SystemState.Layout.Row = [26 27];
            app.SystemState.Layout.Column = 3;
            app.SystemState.Text = 'Setup';

            % Create TrainingNumLabel
            app.TrainingNumLabel = uilabel(app.GridLayout);
            app.TrainingNumLabel.BackgroundColor = [0.9294 0.6941 0.1255];
            app.TrainingNumLabel.HorizontalAlignment = 'center';
            app.TrainingNumLabel.FontSize = 13;
            app.TrainingNumLabel.FontWeight = 'bold';
            app.TrainingNumLabel.FontColor = [1 1 1];
            app.TrainingNumLabel.Layout.Row = 5;
            app.TrainingNumLabel.Layout.Column = 12;
            app.TrainingNumLabel.Text = 'Training';

            % Create TrainNum
            app.TrainNum = uilabel(app.GridLayout);
            app.TrainNum.BackgroundColor = [1 1 1];
            app.TrainNum.HorizontalAlignment = 'center';
            app.TrainNum.FontSize = 15;
            app.TrainNum.FontWeight = 'bold';
            app.TrainNum.Layout.Row = [5 6];
            app.TrainNum.Layout.Column = 13;
            app.TrainNum.Text = 'n/a';

            % Create TrainingNumLabel_2
            app.TrainingNumLabel_2 = uilabel(app.GridLayout);
            app.TrainingNumLabel_2.BackgroundColor = [0.4824 0.3569 0.6902];
            app.TrainingNumLabel_2.HorizontalAlignment = 'center';
            app.TrainingNumLabel_2.FontSize = 13;
            app.TrainingNumLabel_2.FontWeight = 'bold';
            app.TrainingNumLabel_2.FontColor = [1 1 1];
            app.TrainingNumLabel_2.Layout.Row = 6;
            app.TrainingNumLabel_2.Layout.Column = 12;
            app.TrainingNumLabel_2.Text = 'Exp No:';

            % Create TrainingNumLabel_3
            app.TrainingNumLabel_3 = uilabel(app.GridLayout);
            app.TrainingNumLabel_3.BackgroundColor = [0.4196 0.6902 0.3608];
            app.TrainingNumLabel_3.HorizontalAlignment = 'center';
            app.TrainingNumLabel_3.FontSize = 13;
            app.TrainingNumLabel_3.FontWeight = 'bold';
            app.TrainingNumLabel_3.FontColor = [1 1 1];
            app.TrainingNumLabel_3.Layout.Row = 5;
            app.TrainingNumLabel_3.Layout.Column = 14;
            app.TrainingNumLabel_3.Text = 'Optimisation';

            % Create TrainingDataButton
            app.TrainingDataButton = uibutton(app.GridLayout, 'push');
            app.TrainingDataButton.ButtonPushedFcn = createCallbackFcn(app, @TrainingDataButtonPushed, true);
            app.TrainingDataButton.FontWeight = 'bold';
            app.TrainingDataButton.Layout.Row = 16;
            app.TrainingDataButton.Layout.Column = [7 8];
            app.TrainingDataButton.Text = 'Generate Excel File';

            % Create SaveTrainingData
            app.SaveTrainingData = uibutton(app.GridLayout, 'push');
            app.SaveTrainingData.ButtonPushedFcn = createCallbackFcn(app, @SaveTrainingDataButtonPushed, true);
            app.SaveTrainingData.FontWeight = 'bold';
            app.SaveTrainingData.Layout.Row = 16;
            app.SaveTrainingData.Layout.Column = [9 10];
            app.SaveTrainingData.Text = 'Load External Training Data';

            % Create EnterexistingtrainingdataintoExcelfileandsavebelowLabel
            app.EnterexistingtrainingdataintoExcelfileandsavebelowLabel = uilabel(app.GridLayout);
            app.EnterexistingtrainingdataintoExcelfileandsavebelowLabel.FontSize = 13;
            app.EnterexistingtrainingdataintoExcelfileandsavebelowLabel.Layout.Row = 15;
            app.EnterexistingtrainingdataintoExcelfileandsavebelowLabel.Layout.Column = [8 10];
            app.EnterexistingtrainingdataintoExcelfileandsavebelowLabel.Text = 'Enter existing training data into Excel file and save below.';

            % Create ManualLabel
            app.ManualLabel = uilabel(app.GridLayout);
            app.ManualLabel.BackgroundColor = [0.651 0.651 0.651];
            app.ManualLabel.HorizontalAlignment = 'center';
            app.ManualLabel.FontSize = 13;
            app.ManualLabel.FontWeight = 'bold';
            app.ManualLabel.FontColor = [1 1 1];
            app.ManualLabel.Layout.Row = 15;
            app.ManualLabel.Layout.Column = 7;
            app.ManualLabel.Text = 'Manual';

            % Create AutoLabel
            app.AutoLabel = uilabel(app.GridLayout);
            app.AutoLabel.BackgroundColor = [0.651 0.651 0.651];
            app.AutoLabel.HorizontalAlignment = 'center';
            app.AutoLabel.FontSize = 13;
            app.AutoLabel.FontWeight = 'bold';
            app.AutoLabel.FontColor = [1 1 1];
            app.AutoLabel.Layout.Row = 17;
            app.AutoLabel.Layout.Column = 7;
            app.AutoLabel.Text = 'Auto';

            % Create LastReactionLabel
            app.LastReactionLabel = uilabel(app.GridLayout);
            app.LastReactionLabel.BackgroundColor = [1 1 1];
            app.LastReactionLabel.HorizontalAlignment = 'center';
            app.LastReactionLabel.FontSize = 13;
            app.LastReactionLabel.FontWeight = 'bold';
            app.LastReactionLabel.Layout.Row = 8;
            app.LastReactionLabel.Layout.Column = 15;
            app.LastReactionLabel.Text = 'Last Reaction';

            % Create LastReactionLabel_2
            app.LastReactionLabel_2 = uilabel(app.GridLayout);
            app.LastReactionLabel_2.BackgroundColor = [1 1 1];
            app.LastReactionLabel_2.HorizontalAlignment = 'center';
            app.LastReactionLabel_2.FontSize = 13;
            app.LastReactionLabel_2.FontWeight = 'bold';
            app.LastReactionLabel_2.Layout.Row = 15;
            app.LastReactionLabel_2.Layout.Column = 15;
            app.LastReactionLabel_2.Text = 'Last Reaction';

            % Create TrainingLast1
            app.TrainingLast1 = uilabel(app.GridLayout);
            app.TrainingLast1.HorizontalAlignment = 'center';
            app.TrainingLast1.FontSize = 13;
            app.TrainingLast1.FontWeight = 'bold';
            app.TrainingLast1.FontColor = [1 1 1];
            app.TrainingLast1.Layout.Row = 16;
            app.TrainingLast1.Layout.Column = 15;
            app.TrainingLast1.Text = '';

            % Create TrainingLast2
            app.TrainingLast2 = uilabel(app.GridLayout);
            app.TrainingLast2.HorizontalAlignment = 'center';
            app.TrainingLast2.FontSize = 13;
            app.TrainingLast2.FontWeight = 'bold';
            app.TrainingLast2.FontColor = [1 1 1];
            app.TrainingLast2.Layout.Row = 17;
            app.TrainingLast2.Layout.Column = 15;
            app.TrainingLast2.Text = '';

            % Create MLLast1
            app.MLLast1 = uilabel(app.GridLayout);
            app.MLLast1.HorizontalAlignment = 'center';
            app.MLLast1.FontSize = 13;
            app.MLLast1.FontWeight = 'bold';
            app.MLLast1.FontColor = [1 1 1];
            app.MLLast1.Layout.Row = 18;
            app.MLLast1.Layout.Column = 15;
            app.MLLast1.Text = '';

            % Create MLLast2
            app.MLLast2 = uilabel(app.GridLayout);
            app.MLLast2.HorizontalAlignment = 'center';
            app.MLLast2.FontSize = 13;
            app.MLLast2.FontWeight = 'bold';
            app.MLLast2.FontColor = [1 1 1];
            app.MLLast2.Layout.Row = 19;
            app.MLLast2.Layout.Column = 15;
            app.MLLast2.Text = '';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = optimiserC_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end