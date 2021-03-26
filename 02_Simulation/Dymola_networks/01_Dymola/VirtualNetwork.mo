within ;
package VirtualNetwork
  package WaterSupply
    model WSS_SingleConsumer
      extends Modelica.Icons.Example;
      import VirtualWaterLab =
             Lab_Units;
      import SI = Modelica.SIunits;

    //Variables
     SI.Pressure dp_pumping_station1;
     SI.Pressure dp_consumer1;
      SI.MassFlowRate q_consumer1;

     SI.Pressure dp_pumping_station2;
     SI.Pressure dp_consumer2;
      SI.MassFlowRate q_consumer2;

      Lab_Units.Units.PipeA_basic pipeA1_basic(L=20, D=0.025)
        annotation (Placement(transformation(extent={{-30,70},{-10,90}})));
      Lab_Units.Components.Sources.Source_qT source_qT1
        annotation (Placement(transformation(extent={{-132,70},{-112,90}})));
      Modelica.Blocks.Sources.Constant OD_in4(k=1) "m"
        annotation (Placement(transformation(extent={{-100,18},{-84,34}})));
      Modelica.Blocks.Sources.Constant OD_out3(k=0) "m"
        annotation (Placement(transformation(extent={{-116,4},{-100,20}})));
      Modelica.Blocks.Sources.Constant PWM_out2(k=0.8)
                                                     "m"
        annotation (Placement(transformation(extent={{-132,-8},{-116,8}})));
      Lab_Units.Units.Consumer_Water consumer_Water1(h=0)
        annotation (Placement(transformation(extent={{126,70},{146,90}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT2(p=101325)
        annotation (Placement(transformation(extent={{170,70},{190,90}})));
      Modelica.Blocks.Sources.Constant OD_in5(k=1) "m"
        annotation (Placement(transformation(extent={{104,36},{118,50}})));
      Modelica.Blocks.Sources.Constant OD_in6(k=0) "m"
        annotation (Placement(transformation(extent={{104,12},{118,26}})));
      Modelica.Blocks.Sources.Constant OD_out4(k=1) "m"
        annotation (Placement(transformation(extent={{104,-12},{118,2}})));
      Lab_Units.Units.Pumping pumping1
        annotation (Placement(transformation(extent={{-84,70},{-64,90}})));
      Lab_Units.Units.PipeC_basic pipeC1_basic(L=20, D=0.015)
        annotation (Placement(transformation(extent={{30,70},{50,90}})));
      Lab_Units.Components.Sources.Source_qT source_qT2
        annotation (Placement(transformation(extent={{-120,-80},{-100,-60}})));
      Modelica.Blocks.Sources.Constant OD_in1(k=1) "m"
        annotation (Placement(transformation(extent={{-88,-132},{-72,-116}})));
      Modelica.Blocks.Sources.Constant OD_out1(k=0) "m"
        annotation (Placement(transformation(extent={{-104,-146},{-88,-130}})));
      Modelica.Blocks.Sources.Constant PWM_out1(k=0.8)
                                                     "m"
        annotation (Placement(transformation(extent={{-120,-158},{-104,-142}})));
      Lab_Units.Units.Consumer_Water consumer_Water2(h=0)
        annotation (Placement(transformation(extent={{136,-80},{156,-60}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT1(p=101325)
        annotation (Placement(transformation(extent={{180,-80},{200,-60}})));
      Modelica.Blocks.Sources.Constant OD_in2(k=1) "m"
        annotation (Placement(transformation(extent={{114,-114},{128,-100}})));
      Modelica.Blocks.Sources.Constant OD_in3(k=0) "m"
        annotation (Placement(transformation(extent={{114,-138},{128,-124}})));
      Modelica.Blocks.Sources.Constant OD_out2(k=1) "m"
        annotation (Placement(transformation(extent={{114,-162},{128,-148}})));
      Lab_Units.Units.Pumping pumping2
        annotation (Placement(transformation(extent={{-72,-80},{-52,-60}})));
      Lab_Units.Units.PipeA pipeA2
        annotation (Placement(transformation(extent={{0,-80},{20,-60}})));
      Lab_Units.Units.PipeC pipeC2
        annotation (Placement(transformation(extent={{60,-80},{80,-60}})));
    equation
      dp_pumping_station1 =Lab_Units.p_ambient - pumping1.port_b.p;
      dp_consumer1 = pumping1.port_b.p - consumer_Water1.port_a1.p;
      q_consumer1 = consumer_Water1.port_a1.m_flow;

      dp_pumping_station2 =Lab_Units.p_ambient - pumping2.port_b.p;
      dp_consumer2 = pumping2.port_b.p - consumer_Water2.port_a1.p;
      q_consumer2 = consumer_Water2.port_a1.m_flow;

      connect(consumer_Water1.port_b,sink_pT2. port_a) annotation (Line(
          points={{146,80},{170,80}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water1.port_a2,consumer_Water1. port_a1) annotation (Line(
          points={{126,76},{116,76},{116,86},{126,86}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in5.y,consumer_Water1. OD[1]) annotation (Line(points={{118.7,
              43},{118.7,44},{136,44},{136,68.6667}},color={0,0,127}));
      connect(OD_in6.y,consumer_Water1. OD[2]) annotation (Line(points={{118.7,19},{
              118.7,18},{136,18},{136,70}},      color={0,0,127}));
      connect(OD_out4.y,consumer_Water1. OD[3]) annotation (Line(points={{118.7,
              -5},{118.7,-4},{136,-4},{136,71.3333}},   color={0,0,127}));
      connect(source_qT1.port_b, pumping1.port_a) annotation (Line(
          points={{-112,80},{-84,80}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in4.y, pumping1.Input[1]) annotation (Line(points={{-83.2,26},
              {-78,26},{-78,67.8667},{-74,67.8667}},
                                                   color={0,0,127}));
      connect(OD_out3.y, pumping1.Input[2]) annotation (Line(points={{-99.2,12},{-86,
              12},{-86,69.2},{-74,69.2}},    color={0,0,127}));
      connect(PWM_out2.y, pumping1.Input[3]) annotation (Line(points={{-115.2,0},
              {-94,0},{-94,70.5333},{-74,70.5333}},    color={0,0,127}));
      connect(pumping1.port_b, pipeA1_basic.port_a1) annotation (Line(
          points={{-64,80},{-46,80},{-46,86},{-30,86}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA1_basic.port_a2, pipeA1_basic.port_b1) annotation (Line(
          points={{-30,76},{-20,76},{-20,86},{-10,86}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA1_basic.port_b2, pipeC1_basic.port_a1) annotation (Line(
          points={{-10,76},{14,76},{14,86},{30,86}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC1_basic.port_a2, pipeC1_basic.port_b1) annotation (Line(
          points={{30,76},{46,76},{46,86},{50,86}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC1_basic.port_b2, consumer_Water1.port_a1) annotation (Line(
          points={{50,76},{116,76},{116,86},{126,86}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water2.port_b,sink_pT1. port_a) annotation (Line(
          points={{156,-70},{180,-70}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water2.port_a2,consumer_Water2. port_a1) annotation (Line(
          points={{136,-74},{126,-74},{126,-64},{136,-64}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in2.y,consumer_Water2. OD[1]) annotation (Line(points={{128.7,
              -107},{128.7,-106},{146,-106},{146,-81.3333}},
                                                     color={0,0,127}));
      connect(OD_in3.y,consumer_Water2. OD[2]) annotation (Line(points={{128.7,
              -131},{128.7,-132},{146,-132},{146,-80}},
                                                 color={0,0,127}));
      connect(OD_out2.y,consumer_Water2. OD[3]) annotation (Line(points={{128.7,
              -155},{128.7,-154},{146,-154},{146,-78.6667}},
                                                        color={0,0,127}));
      connect(source_qT2.port_b,pumping2. port_a) annotation (Line(
          points={{-100,-70},{-72,-70}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in1.y,pumping2. Input[1]) annotation (Line(points={{-71.2,-124},
              {-66,-124},{-66,-82.1333},{-62,-82.1333}},
                                                   color={0,0,127}));
      connect(OD_out1.y,pumping2. Input[2]) annotation (Line(points={{-87.2,-138},
              {-74,-138},{-74,-80.8},{-62,-80.8}},
                                             color={0,0,127}));
      connect(PWM_out1.y,pumping2. Input[3]) annotation (Line(points={{-103.2,
              -150},{-82,-150},{-82,-79.4667},{-62,-79.4667}},
                                                       color={0,0,127}));
      connect(pumping2.port_b, pipeA2.port_a1) annotation (Line(
          points={{-52,-70},{-24,-70},{-24,-64},{0,-64}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_a2, pipeA2.port_b1) annotation (Line(
          points={{0,-74},{10,-74},{10,-64},{20,-64}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_b2, pipeC2.port_a1) annotation (Line(
          points={{20,-74},{44,-74},{44,-64},{60,-64}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC2.port_a2, pipeC2.port_b1) annotation (Line(
          points={{60,-74},{70,-74},{70,-64},{80,-64}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC2.port_b2, consumer_Water2.port_a1) annotation (Line(
          points={{80,-74},{104,-74},{104,-68},{126,-68},{126,-64},{136,-64}},
          color={0,0,0},
          thickness=0.5));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-140,
                -180},{200,100}})),                                  Diagram(
            coordinateSystem(preserveAspectRatio=false, extent={{-140,-180},{200,
                100}})));
    end WSS_SingleConsumer;

    model WSS_3Consumers
      /*
  
  This simulation compares 2 networks with multiple consumers:
    
  - Network 2: uses a unit pipe units  (pipe + valve)
  
  */
      extends Modelica.Icons.Example;
      import VirtualWaterLab = Lab_Units;
      import SI = Modelica.SIunits;

      Lab_Units.Components.Sources.Source_qT source_qT
        annotation (Placement(transformation(extent={{-116,18},{-96,38}})));
      Lab_Units.Units.Pumping pumping1
        annotation (Placement(transformation(extent={{-68,20},{-48,40}})));
      Modelica.Blocks.Sources.Constant OD_in1(k=0.8)
                                                   "m"
        annotation (Placement(transformation(extent={{-80,-4},{-64,12}})));
      Modelica.Blocks.Sources.Constant OD_out1(k=0) "m"
        annotation (Placement(transformation(extent={{-80,-30},{-64,-14}})));
      Modelica.Blocks.Sources.Constant PWM_out1(k=0.8)
                                                     "m"
        annotation (Placement(transformation(extent={{-80,-60},{-64,-44}})));
      Lab_Units.Units.Consumer_Water consumer_Water1(h=0)
        annotation (Placement(transformation(extent={{60,104},{80,124}})));
      Modelica.Blocks.Sources.Constant OD_in4(k=1) "m"
        annotation (Placement(transformation(extent={{48,82},{62,96}})));
      Modelica.Blocks.Sources.Constant OD_in5(k=0) "m"
        annotation (Placement(transformation(extent={{48,58},{62,72}})));
      Modelica.Blocks.Sources.Constant OD_out3(k=1) "m"
        annotation (Placement(transformation(extent={{48,34},{62,48}})));

      Lab_Units.Units.Consumer_Water consumer_Water2(h=1)
        annotation (Placement(transformation(extent={{196,110},{216,130}})));
      Modelica.Blocks.Sources.Constant OD_in2(k=1) "m"
        annotation (Placement(transformation(extent={{176,82},{190,96}})));
      Modelica.Blocks.Sources.Constant OD_in3(k=0) "m"
        annotation (Placement(transformation(extent={{176,58},{190,72}})));
      Modelica.Blocks.Sources.Constant OD_out2(k=1) "m"
        annotation (Placement(transformation(extent={{176,34},{190,48}})));

      Lab_Units.Units.PipeC_basic pipeC1(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{14,104},{34,124}})));

      type Head=Real(unit="bar");
      type VolumeFlow=Real(unit="m3/h");

    //Pipe Parameters
      parameter SI.Length PipeA_L = 20;
      parameter SI.Length PipeC_L = 20;
      parameter SI.Length PipeA_D = 0.025;
      parameter SI.Length PipeC_D = 0.015;

    //Variables
     SI.Pressure dp_pumping_station;
     SI.Pressure dp_consumer1;
     SI.Pressure dp_consumer2;
     SI.Pressure dp_consumer3;
     Head h_consumer1;
     Head h_consumer2;
     Head h_consumer3;
     VolumeFlow q_consumer1;
     VolumeFlow q_consumer2;
     VolumeFlow q_consumer3;
     VolumeFlow q_pumping;

     SI.Pressure dp_pumping_station2;
     SI.Pressure dp_consumer21;
     SI.Pressure dp_consumer22;
     SI.Pressure dp_consumer23;
     Head h_consumer21;
     Head h_consumer22;
     Head h_consumer23;
     VolumeFlow q_consumer21;
     VolumeFlow q_consumer22;
     VolumeFlow q_consumer23;
     VolumeFlow q_pumping2;

      Lab_Units.Components.Sources.Sink_pT sink_pT
        annotation (Placement(transformation(extent={{230,108},{250,128}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT1
        annotation (Placement(transformation(extent={{90,104},{110,124}})));
      Lab_Units.Units.PipeA_basic pipeA1(D=PipeA_D, L=PipeA_L)
        annotation (Placement(transformation(extent={{-28,14},{-8,34}})));
      Lab_Units.Units.PipeC_basic pipeC2(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{150,108},{170,128}})));
      Lab_Units.Units.Consumer_Water consumer_Water3(h=2)
        annotation (Placement(transformation(extent={{200,-6},{220,14}})));
      Modelica.Blocks.Sources.Constant OD_in6(k=1) "m"
        annotation (Placement(transformation(extent={{186,-32},{200,-18}})));
      Modelica.Blocks.Sources.Constant OD_in7(k=0) "m"
        annotation (Placement(transformation(extent={{186,-56},{200,-42}})));
      Modelica.Blocks.Sources.Constant OD_out4(k=1) "m"
        annotation (Placement(transformation(extent={{186,-80},{200,-66}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT2
        annotation (Placement(transformation(extent={{232,-6},{252,14}})));
      Lab_Units.Units.PipeC_basic pipeC3(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{152,-6},{172,14}})));
      Lab_Units.Units.PipeA_basic pipeA2(D=PipeA_D, L=PipeA_L)
        annotation (Placement(transformation(extent={{90,4},{110,24}})));
      Lab_Units.Components.Sources.Source_qT source_qT1 annotation (Placement(
            transformation(extent={{-132,-212},{-112,-192}})));
      Lab_Units.Units.Pumping pumping2
        annotation (Placement(transformation(extent={{-84,-210},{-64,-190}})));
      Modelica.Blocks.Sources.Constant OD_in8(k=0.8)
                                                   "m"
        annotation (Placement(transformation(extent={{-96,-234},{-80,-218}})));
      Modelica.Blocks.Sources.Constant OD_out5(k=0) "m"
        annotation (Placement(transformation(extent={{-96,-260},{-80,-244}})));
      Modelica.Blocks.Sources.Constant PWM_out2(k=0.8)
                                                     "m"
        annotation (Placement(transformation(extent={{-96,-290},{-80,-274}})));
      Lab_Units.Units.Consumer_Water consumer_Water21(h=0)
        annotation (Placement(transformation(extent={{44,-126},{64,-106}})));
      Modelica.Blocks.Sources.Constant OD_in9(k=1) "m"
        annotation (Placement(transformation(extent={{32,-148},{46,-134}})));
      Modelica.Blocks.Sources.Constant OD_in10(k=0)
                                                   "m"
        annotation (Placement(transformation(extent={{32,-172},{46,-158}})));
      Modelica.Blocks.Sources.Constant OD_out6(k=1) "m"
        annotation (Placement(transformation(extent={{32,-196},{46,-182}})));
      Lab_Units.Units.Consumer_Water consumer_Water22(h=0)
        annotation (Placement(transformation(extent={{180,-122},{200,-102}})));
      Modelica.Blocks.Sources.Constant OD_in11(k=1)
                                                   "m"
        annotation (Placement(transformation(extent={{160,-148},{174,-134}})));
      Modelica.Blocks.Sources.Constant OD_in12(k=0)
                                                   "m"
        annotation (Placement(transformation(extent={{160,-172},{174,-158}})));
      Modelica.Blocks.Sources.Constant OD_out7(k=1) "m"
        annotation (Placement(transformation(extent={{160,-196},{174,-182}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT3
        annotation (Placement(transformation(extent={{214,-122},{234,-102}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT4
        annotation (Placement(transformation(extent={{74,-126},{94,-106}})));
      Lab_Units.Units.Consumer_Water consumer_Water23(h=0)
        annotation (Placement(transformation(extent={{184,-236},{204,-216}})));
      Modelica.Blocks.Sources.Constant OD_in13(k=1)
                                                   "m"
        annotation (Placement(transformation(extent={{170,-262},{184,-248}})));
      Modelica.Blocks.Sources.Constant OD_in14(k=0)
                                                   "m"
        annotation (Placement(transformation(extent={{170,-286},{184,-272}})));
      Modelica.Blocks.Sources.Constant OD_out8(k=1) "m"
        annotation (Placement(transformation(extent={{170,-310},{184,-296}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT5
        annotation (Placement(transformation(extent={{216,-236},{236,-216}})));
      Lab_Units.Units.PipeC pipeC21(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{-20,-124},{0,-104}})));
      Lab_Units.Units.PipeC pipeC22(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{130,-128},{150,-108}})));
      Lab_Units.Units.PipeA pipeA21(D=PipeA_D, L=PipeA_D)
        annotation (Placement(transformation(extent={{-50,-216},{-30,-196}})));
      Lab_Units.Units.PipeA pipeA22(D=PipeA_D, L=PipeA_D)
        annotation (Placement(transformation(extent={{14,-274},{34,-254}})));
      Lab_Units.Units.PipeC pipeC23(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{124,-238},{144,-218}})));
    equation

      dp_pumping_station =(Lab_Units.p_ambient - pumping1.port_b.p);
      dp_consumer1 =(pumping1.port_b.p - consumer_Water1.valve_In1.port_a.p);
      dp_consumer2 =(pumping1.port_b.p -consumer_Water2.valve_In1.port_a.p);
      dp_consumer3 =(pumping1.port_b.p - consumer_Water3.valve_In1.port_a.p);
      h_consumer1 = consumer_Water1.h/10;
      h_consumer2 = consumer_Water2.h/10;
      h_consumer3 = consumer_Water3.h/10;

      q_pumping =(pipeA1.port_a1.m_flow)*3600/Lab_Units.rho;
      q_consumer1 =(pipeC1.port_a2.m_flow)*3600/Lab_Units.rho;
      q_consumer2 =(pipeC2.port_a2.m_flow)*3600/Lab_Units.rho;
      q_consumer3 =(pipeC3.port_a2.m_flow)*3600/Lab_Units.rho;

      dp_pumping_station2 =(Lab_Units.p_ambient - pumping2.port_b.p);
      dp_consumer21 =(pumping2.port_b.p - consumer_Water21.valve_In1.port_a.p);
      dp_consumer22 =(pumping2.port_b.p -consumer_Water22.valve_In1.port_a.p);
      dp_consumer23 =(pumping2.port_b.p - consumer_Water23.valve_In1.port_a.p);
      h_consumer21 = consumer_Water21.h/10;
      h_consumer22 = consumer_Water22.h/10;
      h_consumer23 = consumer_Water23.h/10;

      q_pumping2 =(pipeA1.port_a1.m_flow)*3600/Lab_Units.rho;
      q_consumer21 =(pipeC21.port_a2.m_flow)*3600/Lab_Units.rho;
      q_consumer22 =(pipeC22.port_a2.m_flow)*3600/Lab_Units.rho;
      q_consumer23 =(pipeC23.port_a2.m_flow)*3600/Lab_Units.rho;

      connect(OD_in1.y, pumping1.Input[1]) annotation (Line(points={{-63.2,4},{
              -58,4},{-58,17.8667}},                     color={0,0,127}));

      connect(OD_out1.y, pumping1.Input[2]) annotation (Line(points={{-63.2,-22},{-58,
              -22},{-58,19.2}},                color={0,0,127}));
      connect(PWM_out1.y, pumping1.Input[3]) annotation (Line(points={{-63.2,
              -52},{-58,-52},{-58,20.5333}},             color={0,0,127}));
      connect(source_qT.port_b, pumping1.port_a) annotation (Line(
          points={{-96,28},{-96,29},{-68,29},{-68,30}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in4.y, consumer_Water1.OD[1]) annotation (Line(points={{62.7,89},
              {62.7,88.5},{70,88.5},{70,102.667}},   color={0,0,127}));
      connect(OD_in5.y, consumer_Water1.OD[2]) annotation (Line(points={{62.7,65},{62.7,
              65.5},{70,65.5},{70,104}},      color={0,0,127}));
      connect(OD_out3.y, consumer_Water1.OD[3]) annotation (Line(points={{62.7,41},
              {62.7,40.5},{70,40.5},{70,105.333}},          color={0,0,127}));
      connect(consumer_Water1.port_a2, consumer_Water1.port_a1) annotation (Line(
          points={{60,110},{48,110},{48,120},{60,120}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in2.y,consumer_Water2. OD[1]) annotation (Line(points={{190.7,
              89},{190.7,88.5},{206,88.5},{206,108.667}},
                                                     color={0,0,127}));
      connect(OD_in3.y,consumer_Water2. OD[2]) annotation (Line(points={{190.7,
              65},{190.7,65.5},{206,65.5},{206,110}},
                                              color={0,0,127}));
      connect(OD_out2.y,consumer_Water2. OD[3]) annotation (Line(points={{190.7,
              41},{190.7,42.5},{206,42.5},{206,111.333}},   color={0,0,127}));
      connect(consumer_Water2.port_a2,consumer_Water2. port_a1) annotation (Line(
          points={{196,116},{182,116},{182,126},{196,126}},
          color={0,0,0},
          thickness=0.5));

      connect(pipeC1.port_a2, pipeC1.port_b1) annotation (Line(
          points={{14,110},{24,110},{24,120},{34,120}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC1.port_b2, consumer_Water1.port_a1) annotation (Line(
          points={{34,110},{48,110},{48,120},{60,120}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water2.port_b, sink_pT.port_a) annotation (Line(
          points={{216,120},{224,120},{224,118},{230,118}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water1.port_b, sink_pT1.port_a) annotation (Line(
          points={{80,114},{90,114}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA1.port_a1, pumping1.port_b) annotation (Line(
          points={{-28,30},{-48,30}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA1.port_a2, pipeA1.port_b1) annotation (Line(
          points={{-28,20},{-20,20},{-20,30},{-8,30}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA1.port_b2, pipeC1.port_a1) annotation (Line(
          points={{-8,20},{2,20},{2,120},{14,120}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC2.port_a2, pipeC2.port_b1) annotation (Line(
          points={{150,114},{158,114},{158,124},{170,124}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC2.port_b2, consumer_Water2.port_a1) annotation (Line(
          points={{170,114},{182,114},{182,126},{196,126}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in6.y,consumer_Water3. OD[1]) annotation (Line(points={{200.7,-25},
              {200.7,-25.5},{210,-25.5},{210,-7.33333}},
                                                     color={0,0,127}));
      connect(OD_in7.y,consumer_Water3. OD[2]) annotation (Line(points={{200.7,-49},
              {200.7,-48.5},{210,-48.5},{210,-6}},
                                              color={0,0,127}));
      connect(OD_out4.y,consumer_Water3. OD[3]) annotation (Line(points={{200.7,-73},
              {200.7,-71.5},{210,-71.5},{210,-4.66667}},    color={0,0,127}));
      connect(consumer_Water3.port_a2,consumer_Water3. port_a1) annotation (Line(
          points={{200,0},{186,0},{186,10},{200,10}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water3.port_b, sink_pT2.port_a) annotation (Line(
          points={{220,4},{232,4}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC3.port_a2, pipeC3.port_b1) annotation (Line(
          points={{152,0},{162,0},{162,10},{172,10}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC3.port_b2, consumer_Water3.port_a1) annotation (Line(
          points={{172,0},{186,0},{186,10},{200,10}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_a1, pipeC1.port_a1) annotation (Line(
          points={{90,20},{2,20},{2,120},{14,120}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_b1, pipeC2.port_a1) annotation (Line(
          points={{110,20},{122,20},{122,124},{150,124}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_a2, pipeA2.port_b1) annotation (Line(
          points={{90,10},{100,10},{100,20},{110,20}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_b2, pipeC3.port_a1) annotation (Line(
          points={{110,10},{152,10}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in8.y,pumping2. Input[1]) annotation (Line(points={{-79.2,-226},
              {-74,-226},{-74,-212.133}},                color={0,0,127}));
      connect(OD_out5.y,pumping2. Input[2]) annotation (Line(points={{-79.2,-252},{-74,
              -252},{-74,-210.8}},             color={0,0,127}));
      connect(PWM_out2.y,pumping2. Input[3]) annotation (Line(points={{-79.2,
              -282},{-74,-282},{-74,-209.467}},          color={0,0,127}));
      connect(source_qT1.port_b, pumping2.port_a) annotation (Line(
          points={{-112,-202},{-112,-201},{-84,-201},{-84,-200}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in9.y, consumer_Water21.OD[1]) annotation (Line(points={{46.7,
              -141},{46.7,-141.5},{54,-141.5},{54,-127.333}}, color={0,0,127}));
      connect(OD_in10.y, consumer_Water21.OD[2]) annotation (Line(points={{46.7,-165},
              {46.7,-164.5},{54,-164.5},{54,-126}}, color={0,0,127}));
      connect(OD_out6.y, consumer_Water21.OD[3]) annotation (Line(points={{46.7,
              -189},{46.7,-189.5},{54,-189.5},{54,-124.667}}, color={0,0,127}));
      connect(consumer_Water21.port_a2, consumer_Water21.port_a1) annotation (
          Line(
          points={{44,-120},{32,-120},{32,-110},{44,-110}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in11.y, consumer_Water22.OD[1]) annotation (Line(points={{174.7,
              -141},{174.7,-141.5},{190,-141.5},{190,-123.333}}, color={0,0,127}));
      connect(OD_in12.y, consumer_Water22.OD[2]) annotation (Line(points={{174.7,
              -165},{174.7,-164.5},{190,-164.5},{190,-122}}, color={0,0,127}));
      connect(OD_out7.y, consumer_Water22.OD[3]) annotation (Line(points={{174.7,
              -189},{174.7,-187.5},{190,-187.5},{190,-120.667}}, color={0,0,127}));
      connect(consumer_Water22.port_a2, consumer_Water22.port_a1) annotation (
          Line(
          points={{180,-116},{166,-116},{166,-106},{180,-106}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water22.port_b, sink_pT3.port_a) annotation (Line(
          points={{200,-112},{214,-112}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water21.port_b, sink_pT4.port_a) annotation (Line(
          points={{64,-116},{74,-116}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in13.y, consumer_Water23.OD[1]) annotation (Line(points={{184.7,
              -255},{184.7,-255.5},{194,-255.5},{194,-237.333}}, color={0,0,127}));
      connect(OD_in14.y, consumer_Water23.OD[2]) annotation (Line(points={{184.7,
              -279},{184.7,-278.5},{194,-278.5},{194,-236}}, color={0,0,127}));
      connect(OD_out8.y, consumer_Water23.OD[3]) annotation (Line(points={{184.7,
              -303},{184.7,-301.5},{194,-301.5},{194,-234.667}}, color={0,0,127}));
      connect(consumer_Water23.port_a2, consumer_Water23.port_a1) annotation (
          Line(
          points={{184,-230},{170,-230},{170,-220},{184,-220}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water23.port_b, sink_pT5.port_a) annotation (Line(
          points={{204,-226},{216,-226}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC21.port_a2, pipeC21.port_b1) annotation (Line(
          points={{-20,-118},{-10,-118},{-10,-108},{0,-108}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC22.port_a2, pipeC22.port_b1) annotation (Line(
          points={{130,-122},{140,-122},{140,-112},{150,-112}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC22.port_b2, consumer_Water22.port_a1) annotation (Line(
          points={{150,-122},{158,-122},{158,-112},{166,-112},{166,-106},{180,-106}},
          color={0,0,0},
          thickness=0.5));

      connect(pipeC21.port_b2, consumer_Water21.port_a1) annotation (Line(
          points={{0,-118},{16,-118},{16,-112},{32,-112},{32,-110},{44,-110}},
          color={0,0,0},
          thickness=0.5));
      connect(pumping2.port_b, pipeA21.port_a1) annotation (Line(
          points={{-64,-200},{-50,-200}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC21.port_a1, pipeA21.port_b2) annotation (Line(
          points={{-20,-108},{-26,-108},{-26,-210},{-30,-210}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA21.port_b1, pipeA21.port_a2) annotation (Line(
          points={{-30,-200},{-40,-200},{-40,-210},{-50,-210}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA22.port_a2, pipeA22.port_b1) annotation (Line(
          points={{14,-268},{24,-268},{24,-258},{34,-258}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA22.port_a1, pipeA21.port_b2) annotation (Line(
          points={{14,-258},{-8,-258},{-8,-210},{-30,-210}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA22.port_b1, pipeC22.port_a1) annotation (Line(
          points={{34,-258},{78,-258},{78,-176},{130,-176},{130,-112}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC23.port_a2, pipeC23.port_b1) annotation (Line(
          points={{124,-232},{134,-232},{134,-222},{144,-222}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC23.port_b2, consumer_Water23.port_a1) annotation (Line(
          points={{144,-232},{158,-232},{158,-222},{170,-222},{170,-220},{184,-220}},
          color={0,0,0},
          thickness=0.5));

      connect(pipeA22.port_b2, pipeC23.port_a1) annotation (Line(
          points={{34,-268},{68,-268},{68,-264},{106,-264},{106,-222},{124,-222}},
          color={0,0,0},
          thickness=0.5));
      annotation (Diagram(coordinateSystem(extent={{-140,-320},{360,160}})), Icon(
            coordinateSystem(extent={{-140,-320},{360,160}})));
    end WSS_3Consumers;

    model WWS_3cons_2

      /*
  
  This simulation compares 2 networks with multiple consumers:
  
  - Network 1: uses a basic pipe units (pipe)
  
  - Network 2: uses a unit pipe units  (pipe + valve)
  
  This simulation aims to test the extra pressure loss introduced by the fitting of the pipes (abrupt transition)
  and by the 3-way valves.
  
  */
      extends Modelica.Icons.Example;
      import VirtualWaterLab =
             Lab_Units;
      import SI = Modelica.SIunits;

      Lab_Units.Components.Sources.Source_qT source_qT
        annotation (Placement(transformation(extent={{-116,18},{-96,38}})));
      Lab_Units.Units.Pumping pumping1
        annotation (Placement(transformation(extent={{-68,20},{-48,40}})));
      Modelica.Blocks.Sources.Constant OD_in1(k=0.8)
                                                   "m"
        annotation (Placement(transformation(extent={{-80,-4},{-64,12}})));
      Modelica.Blocks.Sources.Constant OD_out1(k=0) "m"
        annotation (Placement(transformation(extent={{-80,-30},{-64,-14}})));
      Modelica.Blocks.Sources.Constant PWM_out1(k=0.8)
                                                     "m"
        annotation (Placement(transformation(extent={{-80,-60},{-64,-44}})));
      Lab_Units.Units.Consumer_Water consumer_Water1(h=0)
        annotation (Placement(transformation(extent={{60,104},{80,124}})));
      Modelica.Blocks.Sources.Constant OD_in4(k=1) "m"
        annotation (Placement(transformation(extent={{48,82},{62,96}})));
      Modelica.Blocks.Sources.Constant OD_in5(k=0) "m"
        annotation (Placement(transformation(extent={{48,58},{62,72}})));
      Modelica.Blocks.Sources.Constant OD_out3(k=1) "m"
        annotation (Placement(transformation(extent={{48,34},{62,48}})));

      Lab_Units.Units.Consumer_Water consumer_Water2(h=1)
        annotation (Placement(transformation(extent={{196,108},{216,128}})));
      Modelica.Blocks.Sources.Constant OD_in2(k=1) "m"
        annotation (Placement(transformation(extent={{176,82},{190,96}})));
      Modelica.Blocks.Sources.Constant OD_in3(k=0) "m"
        annotation (Placement(transformation(extent={{176,58},{190,72}})));
      Modelica.Blocks.Sources.Constant OD_out2(k=1) "m"
        annotation (Placement(transformation(extent={{176,34},{190,48}})));

      Lab_Units.Units.PipeC_basic pipeC1(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{14,104},{34,124}})));

      type Head=Real(unit="bar");
      type VolumeFlow=Real(unit="m3/h");

    //Pipe Parameters
      parameter SI.Length PipeA_L = 20;
      parameter SI.Length PipeC_L = 20;
      parameter SI.Length PipeA_D = 0.025;
      parameter SI.Length PipeC_D = 0.015;

    //Variables
     SI.Pressure dp_pumping_station;
     SI.Pressure dp_consumer1;
     SI.Pressure dp_consumer2;
     SI.Pressure dp_consumer3;
     Head h_consumer1;
     Head h_consumer2;
     Head h_consumer3;
     VolumeFlow q_consumer1;
     VolumeFlow q_consumer2;
     VolumeFlow q_consumer3;
     VolumeFlow q_pumping;

     SI.Pressure dp_pumping_station2;
     SI.Pressure dp_consumer21;
     SI.Pressure dp_consumer22;
     SI.Pressure dp_consumer23;
     Head h_consumer21;
     Head h_consumer22;
     Head h_consumer23;
     VolumeFlow q_consumer21;
     VolumeFlow q_consumer22;
     VolumeFlow q_consumer23;
     VolumeFlow q_pumping2;

      Lab_Units.Components.Sources.Sink_pT sink_pT
        annotation (Placement(transformation(extent={{230,108},{250,128}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT1
        annotation (Placement(transformation(extent={{90,104},{110,124}})));
      Lab_Units.Units.PipeA_basic pipeA1(D=PipeA_D, L=PipeA_L)
        annotation (Placement(transformation(extent={{-28,14},{-8,34}})));
      Lab_Units.Units.PipeC_basic pipeC2(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{150,108},{170,128}})));
      Lab_Units.Units.Consumer_Water consumer_Water3(h=0.5)
        annotation (Placement(transformation(extent={{200,-6},{220,14}})));
      Modelica.Blocks.Sources.Constant OD_in6(k=1) "m"
        annotation (Placement(transformation(extent={{186,-32},{200,-18}})));
      Modelica.Blocks.Sources.Constant OD_in7(k=0) "m"
        annotation (Placement(transformation(extent={{186,-56},{200,-42}})));
      Modelica.Blocks.Sources.Constant OD_out4(k=1) "m"
        annotation (Placement(transformation(extent={{186,-80},{200,-66}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT2
        annotation (Placement(transformation(extent={{232,-6},{252,14}})));
      Lab_Units.Units.PipeC_basic pipeC3(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{152,-6},{172,14}})));
      Lab_Units.Units.PipeA_basic pipeA2(D=PipeA_D, L=PipeA_L)
        annotation (Placement(transformation(extent={{90,4},{110,24}})));
      Lab_Units.Components.Sources.Source_qT source_qT1 annotation (Placement(
            transformation(extent={{-132,-212},{-112,-192}})));
      Lab_Units.Units.Pumping pumping2
        annotation (Placement(transformation(extent={{-84,-210},{-64,-190}})));
      Modelica.Blocks.Sources.Constant OD_in8(k=0.8)
                                                   "m"
        annotation (Placement(transformation(extent={{-96,-234},{-80,-218}})));
      Modelica.Blocks.Sources.Constant OD_out5(k=0) "m"
        annotation (Placement(transformation(extent={{-96,-260},{-80,-244}})));
      Modelica.Blocks.Sources.Constant PWM_out2(k=0.8)
                                                     "m"
        annotation (Placement(transformation(extent={{-96,-290},{-80,-274}})));
      Lab_Units.Units.Consumer_Water consumer_Water21(h=0)
        annotation (Placement(transformation(extent={{44,-126},{64,-106}})));
      Modelica.Blocks.Sources.Constant OD_in9(k=1) "m"
        annotation (Placement(transformation(extent={{32,-148},{46,-134}})));
      Modelica.Blocks.Sources.Constant OD_in10(k=0)
                                                   "m"
        annotation (Placement(transformation(extent={{32,-172},{46,-158}})));
      Modelica.Blocks.Sources.Constant OD_out6(k=1) "m"
        annotation (Placement(transformation(extent={{32,-196},{46,-182}})));
      Lab_Units.Units.Consumer_Water consumer_Water22(h=0)
        annotation (Placement(transformation(extent={{180,-122},{200,-102}})));
      Modelica.Blocks.Sources.Constant OD_in11(k=1)
                                                   "m"
        annotation (Placement(transformation(extent={{160,-148},{174,-134}})));
      Modelica.Blocks.Sources.Constant OD_in12(k=0)
                                                   "m"
        annotation (Placement(transformation(extent={{160,-172},{174,-158}})));
      Modelica.Blocks.Sources.Constant OD_out7(k=1) "m"
        annotation (Placement(transformation(extent={{160,-196},{174,-182}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT3
        annotation (Placement(transformation(extent={{214,-122},{234,-102}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT4
        annotation (Placement(transformation(extent={{74,-126},{94,-106}})));
      Lab_Units.Units.Consumer_Water consumer_Water23(h=0.5)
        annotation (Placement(transformation(extent={{184,-236},{204,-216}})));
      Modelica.Blocks.Sources.Constant OD_in13(k=1)
                                                   "m"
        annotation (Placement(transformation(extent={{170,-262},{184,-248}})));
      Modelica.Blocks.Sources.Constant OD_in14(k=0)
                                                   "m"
        annotation (Placement(transformation(extent={{170,-286},{184,-272}})));
      Modelica.Blocks.Sources.Constant OD_out8(k=1) "m"
        annotation (Placement(transformation(extent={{170,-310},{184,-296}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT5
        annotation (Placement(transformation(extent={{216,-236},{236,-216}})));
      Lab_Units.Units.PipeC pipeC21(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{-20,-124},{0,-104}})));
      Lab_Units.Units.PipeC pipeC22(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{130,-128},{150,-108}})));
      Lab_Units.Units.PipeA pipeA21(D=PipeA_D, L=PipeA_D)
        annotation (Placement(transformation(extent={{-50,-216},{-30,-196}})));
      Lab_Units.Units.PipeA pipeA22(D=PipeA_D, L=PipeA_D)
        annotation (Placement(transformation(extent={{14,-274},{34,-254}})));
      Lab_Units.Units.PipeC pipeC23(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{124,-238},{144,-218}})));
    equation

      dp_pumping_station =(Lab_Units.p_ambient - pumping1.port_b.p);
      dp_consumer1 =(pumping1.port_b.p - consumer_Water1.valve_In1.port_a.p);
      dp_consumer2 =(pumping1.port_b.p -consumer_Water2.valve_In1.port_a.p);
      dp_consumer3 =(pumping1.port_b.p - consumer_Water3.valve_In1.port_a.p);
      h_consumer1 = consumer_Water1.h/10;
      h_consumer2 = consumer_Water2.h/10;
      h_consumer3 = consumer_Water3.h/10;

      q_pumping =(pipeA1.port_a1.m_flow)*3600/Lab_Units.rho;
      q_consumer1 =(pipeC1.port_a2.m_flow)*3600/Lab_Units.rho;
      q_consumer2 =(pipeC2.port_a2.m_flow)*3600/Lab_Units.rho;
      q_consumer3 =(pipeC3.port_a2.m_flow)*3600/Lab_Units.rho;

      dp_pumping_station2 =(Lab_Units.p_ambient - pumping2.port_b.p);
      dp_consumer21 =(pumping2.port_b.p - consumer_Water21.valve_In1.port_a.p);
      dp_consumer22 =(pumping2.port_b.p -consumer_Water22.valve_In1.port_a.p);
      dp_consumer23 =(pumping2.port_b.p - consumer_Water23.valve_In1.port_a.p);
      h_consumer21 = consumer_Water21.h/10;
      h_consumer22 = consumer_Water22.h/10;
      h_consumer23 = consumer_Water23.h/10;

      q_pumping2 =(pipeA1.port_a1.m_flow)*3600/Lab_Units.rho;
      q_consumer21 =(pipeC21.port_a2.m_flow)*3600/Lab_Units.rho;
      q_consumer22 =(pipeC22.port_a2.m_flow)*3600/Lab_Units.rho;
      q_consumer23 =(pipeC23.port_a2.m_flow)*3600/Lab_Units.rho;

      connect(OD_in1.y, pumping1.Input[1]) annotation (Line(points={{-63.2,4},{
              -58,4},{-58,17.8667}},                     color={0,0,127}));

      connect(OD_out1.y, pumping1.Input[2]) annotation (Line(points={{-63.2,-22},{-58,
              -22},{-58,19.2}},                color={0,0,127}));
      connect(PWM_out1.y, pumping1.Input[3]) annotation (Line(points={{-63.2,
              -52},{-58,-52},{-58,20.5333}},             color={0,0,127}));
      connect(source_qT.port_b, pumping1.port_a) annotation (Line(
          points={{-96,28},{-96,29},{-68,29},{-68,30}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in4.y, consumer_Water1.OD[1]) annotation (Line(points={{62.7,89},
              {62.7,88.5},{70,88.5},{70,102.667}},   color={0,0,127}));
      connect(OD_in5.y, consumer_Water1.OD[2]) annotation (Line(points={{62.7,65},{62.7,
              65.5},{70,65.5},{70,104}},      color={0,0,127}));
      connect(OD_out3.y, consumer_Water1.OD[3]) annotation (Line(points={{62.7,41},
              {62.7,40.5},{70,40.5},{70,105.333}},          color={0,0,127}));
      connect(consumer_Water1.port_a2, consumer_Water1.port_a1) annotation (Line(
          points={{60,110},{48,110},{48,120},{60,120}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in2.y,consumer_Water2. OD[1]) annotation (Line(points={{190.7,
              89},{190.7,88.5},{206,88.5},{206,106.667}},
                                                     color={0,0,127}));
      connect(OD_in3.y,consumer_Water2. OD[2]) annotation (Line(points={{190.7,65},{
              190.7,65.5},{206,65.5},{206,108}},
                                              color={0,0,127}));
      connect(OD_out2.y,consumer_Water2. OD[3]) annotation (Line(points={{190.7,
              41},{190.7,42.5},{206,42.5},{206,109.333}},   color={0,0,127}));
      connect(consumer_Water2.port_a2,consumer_Water2. port_a1) annotation (Line(
          points={{196,114},{182,114},{182,124},{196,124}},
          color={0,0,0},
          thickness=0.5));

      connect(pipeC1.port_a2, pipeC1.port_b1) annotation (Line(
          points={{14,110},{24,110},{24,120},{34,120}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC1.port_b2, consumer_Water1.port_a1) annotation (Line(
          points={{34,110},{48,110},{48,120},{60,120}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water2.port_b, sink_pT.port_a) annotation (Line(
          points={{216,118},{230,118}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water1.port_b, sink_pT1.port_a) annotation (Line(
          points={{80,114},{90,114}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA1.port_a1, pumping1.port_b) annotation (Line(
          points={{-28,30},{-48,30}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA1.port_a2, pipeA1.port_b1) annotation (Line(
          points={{-28,20},{-20,20},{-20,30},{-8,30}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA1.port_b2, pipeC1.port_a1) annotation (Line(
          points={{-8,20},{2,20},{2,120},{14,120}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC2.port_a2, pipeC2.port_b1) annotation (Line(
          points={{150,114},{158,114},{158,124},{170,124}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC2.port_b2, consumer_Water2.port_a1) annotation (Line(
          points={{170,114},{182,114},{182,124},{196,124}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in6.y,consumer_Water3. OD[1]) annotation (Line(points={{200.7,-25},
              {200.7,-25.5},{210,-25.5},{210,-7.33333}},
                                                     color={0,0,127}));
      connect(OD_in7.y,consumer_Water3. OD[2]) annotation (Line(points={{200.7,-49},
              {200.7,-48.5},{210,-48.5},{210,-6}},
                                              color={0,0,127}));
      connect(OD_out4.y,consumer_Water3. OD[3]) annotation (Line(points={{200.7,-73},
              {200.7,-71.5},{210,-71.5},{210,-4.66667}},    color={0,0,127}));
      connect(consumer_Water3.port_a2,consumer_Water3. port_a1) annotation (Line(
          points={{200,0},{186,0},{186,10},{200,10}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water3.port_b, sink_pT2.port_a) annotation (Line(
          points={{220,4},{232,4}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC3.port_a2, pipeC3.port_b1) annotation (Line(
          points={{152,0},{162,0},{162,10},{172,10}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC3.port_b2, consumer_Water3.port_a1) annotation (Line(
          points={{172,0},{186,0},{186,10},{200,10}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_a1, pipeC1.port_a1) annotation (Line(
          points={{90,20},{2,20},{2,120},{14,120}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_b1, pipeC2.port_a1) annotation (Line(
          points={{110,20},{122,20},{122,124},{150,124}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_a2, pipeA2.port_b1) annotation (Line(
          points={{90,10},{100,10},{100,20},{110,20}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_b2, pipeC3.port_a1) annotation (Line(
          points={{110,10},{152,10}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in8.y,pumping2. Input[1]) annotation (Line(points={{-79.2,-226},
              {-74,-226},{-74,-212.133}},                color={0,0,127}));
      connect(OD_out5.y,pumping2. Input[2]) annotation (Line(points={{-79.2,-252},{-74,
              -252},{-74,-210.8}},             color={0,0,127}));
      connect(PWM_out2.y,pumping2. Input[3]) annotation (Line(points={{-79.2,
              -282},{-74,-282},{-74,-209.467}},          color={0,0,127}));
      connect(source_qT1.port_b, pumping2.port_a) annotation (Line(
          points={{-112,-202},{-112,-201},{-84,-201},{-84,-200}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in9.y, consumer_Water21.OD[1]) annotation (Line(points={{46.7,
              -141},{46.7,-141.5},{54,-141.5},{54,-127.333}}, color={0,0,127}));
      connect(OD_in10.y, consumer_Water21.OD[2]) annotation (Line(points={{46.7,-165},
              {46.7,-164.5},{54,-164.5},{54,-126}}, color={0,0,127}));
      connect(OD_out6.y, consumer_Water21.OD[3]) annotation (Line(points={{46.7,
              -189},{46.7,-189.5},{54,-189.5},{54,-124.667}}, color={0,0,127}));
      connect(consumer_Water21.port_a2, consumer_Water21.port_a1) annotation (
          Line(
          points={{44,-120},{32,-120},{32,-110},{44,-110}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in11.y, consumer_Water22.OD[1]) annotation (Line(points={{174.7,
              -141},{174.7,-141.5},{190,-141.5},{190,-123.333}}, color={0,0,127}));
      connect(OD_in12.y, consumer_Water22.OD[2]) annotation (Line(points={{174.7,
              -165},{174.7,-164.5},{190,-164.5},{190,-122}}, color={0,0,127}));
      connect(OD_out7.y, consumer_Water22.OD[3]) annotation (Line(points={{174.7,
              -189},{174.7,-187.5},{190,-187.5},{190,-120.667}}, color={0,0,127}));
      connect(consumer_Water22.port_a2, consumer_Water22.port_a1) annotation (
          Line(
          points={{180,-116},{166,-116},{166,-106},{180,-106}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water22.port_b, sink_pT3.port_a) annotation (Line(
          points={{200,-112},{214,-112}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water21.port_b, sink_pT4.port_a) annotation (Line(
          points={{64,-116},{74,-116}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in13.y, consumer_Water23.OD[1]) annotation (Line(points={{184.7,
              -255},{184.7,-255.5},{194,-255.5},{194,-237.333}}, color={0,0,127}));
      connect(OD_in14.y, consumer_Water23.OD[2]) annotation (Line(points={{184.7,
              -279},{184.7,-278.5},{194,-278.5},{194,-236}}, color={0,0,127}));
      connect(OD_out8.y, consumer_Water23.OD[3]) annotation (Line(points={{184.7,
              -303},{184.7,-301.5},{194,-301.5},{194,-234.667}}, color={0,0,127}));
      connect(consumer_Water23.port_a2, consumer_Water23.port_a1) annotation (
          Line(
          points={{184,-230},{170,-230},{170,-220},{184,-220}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water23.port_b, sink_pT5.port_a) annotation (Line(
          points={{204,-226},{216,-226}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC21.port_a2, pipeC21.port_b1) annotation (Line(
          points={{-20,-118},{-10,-118},{-10,-108},{0,-108}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC22.port_a2, pipeC22.port_b1) annotation (Line(
          points={{130,-122},{140,-122},{140,-112},{150,-112}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC22.port_b2, consumer_Water22.port_a1) annotation (Line(
          points={{150,-122},{158,-122},{158,-112},{166,-112},{166,-106},{180,-106}},
          color={0,0,0},
          thickness=0.5));

      connect(pipeC21.port_b2, consumer_Water21.port_a1) annotation (Line(
          points={{0,-118},{16,-118},{16,-112},{32,-112},{32,-110},{44,-110}},
          color={0,0,0},
          thickness=0.5));
      connect(pumping2.port_b, pipeA21.port_a1) annotation (Line(
          points={{-64,-200},{-50,-200}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC21.port_a1, pipeA21.port_b2) annotation (Line(
          points={{-20,-108},{-26,-108},{-26,-210},{-30,-210}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA21.port_b1, pipeA21.port_a2) annotation (Line(
          points={{-30,-200},{-40,-200},{-40,-210},{-50,-210}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA22.port_a2, pipeA22.port_b1) annotation (Line(
          points={{14,-268},{24,-268},{24,-258},{34,-258}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA22.port_a1, pipeA21.port_b2) annotation (Line(
          points={{14,-258},{-8,-258},{-8,-210},{-30,-210}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA22.port_b1, pipeC22.port_a1) annotation (Line(
          points={{34,-258},{78,-258},{78,-176},{130,-176},{130,-112}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC23.port_a2, pipeC23.port_b1) annotation (Line(
          points={{124,-232},{134,-232},{134,-222},{144,-222}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC23.port_b2, consumer_Water23.port_a1) annotation (Line(
          points={{144,-232},{158,-232},{158,-222},{170,-222},{170,-220},{184,-220}},
          color={0,0,0},
          thickness=0.5));

      connect(pipeA22.port_b2, pipeC23.port_a1) annotation (Line(
          points={{34,-268},{68,-268},{68,-264},{106,-264},{106,-222},{124,-222}},
          color={0,0,0},
          thickness=0.5));
      annotation (Diagram(coordinateSystem(extent={{-140,-320},{360,160}})), Icon(
            coordinateSystem(extent={{-140,-320},{360,160}})));
    end WWS_3cons_2;

    model WSS_3Cons_Setup

      extends Modelica.Icons.Example;
      import VirtualWaterLab = Lab_Units;
      import SI = Modelica.SIunits;

      Lab_Units.Components.Sources.Source_qT source_qT
        annotation (Placement(transformation(extent={{-128,20},{-108,40}})));
      Modelica.Blocks.Sources.Constant OD_in1(k=0.8)
                                                   "m"
        annotation (Placement(transformation(extent={{-92,-2},{-76,14}})));
      Modelica.Blocks.Sources.Constant OD_out1(k=0) "m"
        annotation (Placement(transformation(extent={{-92,-28},{-76,-12}})));
      Modelica.Blocks.Sources.Constant PWM_out1(k=0.8)
                                                     "m"
        annotation (Placement(transformation(extent={{-92,-58},{-76,-42}})));
      Modelica.Blocks.Sources.Constant OD_in4(k=1) "m"
        annotation (Placement(transformation(extent={{40,90},{54,104}})));
      Modelica.Blocks.Sources.Constant OD_in5(k=1) "m"
        annotation (Placement(transformation(extent={{40,66},{54,80}})));
      Modelica.Blocks.Sources.Constant OD_out3(k=1) "m"
        annotation (Placement(transformation(extent={{40,42},{54,56}})));

      Modelica.Blocks.Sources.Constant OD_in2(k=1) "m"
        annotation (Placement(transformation(extent={{144,44},{158,58}})));
      Modelica.Blocks.Sources.Constant OD_in3(k=1) "m"
        annotation (Placement(transformation(extent={{142,20},{156,34}})));
      Modelica.Blocks.Sources.Constant OD_out2(k=1) "m"
        annotation (Placement(transformation(extent={{142,-4},{156,10}})));
      Modelica.Blocks.Sources.Constant OD_in6(k=1) "m"
        annotation (Placement(transformation(extent={{182,-58},{196,-44}})));
      Modelica.Blocks.Sources.Constant OD_in7(k=1) "m"
        annotation (Placement(transformation(extent={{182,-82},{196,-68}})));
      Modelica.Blocks.Sources.Constant OD_out4(k=1) "m"
        annotation (Placement(transformation(extent={{182,-106},{196,-92}})));

      type Head=Real(unit="bar");
      type VolumeFlow=Real(unit="m3/h");

    //Pipe Parameters
      parameter SI.Length PipeA_L = 20;
      parameter SI.Length PipeC_L = 20;
      parameter SI.Length PipeA_D = 0.0250;
      parameter SI.Length PipeC_D = 0.015;

    //Variables
     SI.Pressure dp_pumping_station;
     SI.Pressure dp_consumer1;
     SI.Pressure dp_consumer2;
     SI.Pressure dp_consumer3;
     Head h_consumer1;
     Head h_consumer2;
     Head h_consumer3;
     VolumeFlow q_consumer1;
     VolumeFlow q_consumer2;
     VolumeFlow q_consumer3;
     VolumeFlow q_pumping;

      Lab_Units.Components.Sources.Sink_pT sink_pT
        annotation (Placement(transformation(extent={{198,64},{218,84}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT2
        annotation (Placement(transformation(extent={{238,-36},{258,-16}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT1
        annotation (Placement(transformation(extent={{76,112},{96,132}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT3
        annotation (Placement(transformation(extent={{118,-76},{138,-56}})));
      Lab_Units.Units.Consumer_Water consumer_Water1(h=0)
        annotation (Placement(transformation(extent={{50,112},{70,132}})));
      Lab_Units.Units.Consumer_Water consumer_Water2(h=0.5)
        annotation (Placement(transformation(extent={{166,62},{186,82}})));
      Lab_Units.Units.Consumer_Water consumer_Water3(h=2)
        annotation (Placement(transformation(extent={{196,-34},{216,-14}})));
      Lab_Units.Units.Pumping pumping1
        annotation (Placement(transformation(extent={{-80,20},{-60,40}})));
      Lab_Units.Units.PipeA_basic pipeA1(D=PipeA_D, L=PipeA_L)
        annotation (Placement(transformation(extent={{-38,20},{-18,40}})));
      Lab_Units.Units.PipeC_basic pipeC2(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{108,62},{128,82}})));
      Lab_Units.Units.PipeC_basic pipeC1(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{12,112},{32,132}})));
      Lab_Units.Units.PipeA_basic pipeA2(D=PipeA_D, L=PipeA_L)
        annotation (Placement(transformation(extent={{26,-24},{46,-4}})));
      Lab_Units.Units.PipeC_basic pipeC3(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{146,-34},{166,-14}})));
      Lab_Units.Units.PipeA_basic pipeA3(D=PipeA_D, L=PipeA_L)
        annotation (Placement(transformation(extent={{64,-72},{84,-52}})));
      Lab_Units.Units.PipeC_basic pipeC4(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{156,136},{176,156}})));
    equation

      dp_pumping_station =(Lab_Units.p_ambient - pumping1.port_b.p);
      dp_consumer1 =(pumping1.port_b.p -consumer_Water2.port_a1.p);
      dp_consumer2 =(pumping1.port_b.p -consumer_Water3.port_a1.p);
      dp_consumer3 =(pumping1.port_b.p - consumer_Water3.port_a1.p);
      h_consumer1 =consumer_Water1.h /10;
      h_consumer2 =consumer_Water2.h /10;
      h_consumer3 = consumer_Water3.h/10;

      q_pumping =(pipeA1.port_a1.m_flow)*3600/Lab_Units.rho;
      q_consumer1 =(pipeC1.port_a2.m_flow)*3600/Lab_Units.rho;
      q_consumer2 =(pipeC2.port_a2.m_flow)*3600/Lab_Units.rho;
      q_consumer3 =(pipeC3.port_a2.m_flow)*3600/Lab_Units.rho;

      connect(consumer_Water1.port_b, sink_pT1.port_a) annotation (Line(
          points={{70,122},{76,122}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water2.port_b, sink_pT.port_a) annotation (Line(
          points={{186,72},{198,72},{198,74}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water3.port_b, sink_pT2.port_a) annotation (Line(
          points={{216,-24},{228,-24},{228,-26},{238,-26}},
          color={0,0,0},
          thickness=0.5));
      connect(source_qT.port_b, pumping1.port_a) annotation (Line(
          points={{-108,30},{-80,30}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in1.y, pumping1.Input[1]) annotation (Line(points={{-75.2,6},{
              -72,6},{-72,17.8667},{-70,17.8667}},
                                            color={0,0,127}));
      connect(OD_out1.y, pumping1.Input[2]) annotation (Line(points={{-75.2,-20},{-72,
              -20},{-72,19.2},{-70,19.2}}, color={0,0,127}));
      connect(PWM_out1.y, pumping1.Input[3]) annotation (Line(points={{-75.2,
              -50},{-72,-50},{-72,20.5333},{-70,20.5333}},
                                                 color={0,0,127}));
      connect(OD_in4.y, consumer_Water1.OD[1]) annotation (Line(points={{54.7,97},
              {54.7,98.5},{60,98.5},{60,110.667}},
                                               color={0,0,127}));
      connect(OD_in5.y, consumer_Water1.OD[2]) annotation (Line(points={{54.7,73},
              {54.7,70.5},{60,70.5},{60,112}},
                                         color={0,0,127}));
      connect(OD_out3.y, consumer_Water1.OD[3]) annotation (Line(points={{54.7,49},
              {54.7,46.5},{60,46.5},{60,113.333}},color={0,0,127}));
      connect(OD_in2.y, consumer_Water2.OD[1]) annotation (Line(points={{158.7,
              51},{158.7,49.5},{176,49.5},{176,60.6667}},
                                                     color={0,0,127}));
      connect(OD_in3.y, consumer_Water2.OD[2]) annotation (Line(points={{156.7,27},{
              156.7,27.5},{176,27.5},{176,62}}, color={0,0,127}));
      connect(OD_out2.y, consumer_Water2.OD[3]) annotation (Line(points={{156.7,3},
              {156.7,3.5},{176,3.5},{176,63.3333}},color={0,0,127}));
      connect(OD_in6.y, consumer_Water3.OD[1]) annotation (Line(points={{196.7,
              -51},{196.7,-50},{206,-50},{206,-35.3333}},
                                                     color={0,0,127}));
      connect(OD_in7.y, consumer_Water3.OD[2]) annotation (Line(points={{196.7,-75},
              {196.7,-74},{206,-74},{206,-34}}, color={0,0,127}));
      connect(OD_out4.y, consumer_Water3.OD[3]) annotation (Line(points={{196.7,
              -99},{196.7,-98},{206,-98},{206,-32.6667}},
                                                     color={0,0,127}));
      connect(pumping1.port_b, pipeA1.port_a1) annotation (Line(
          points={{-60,30},{-48,30},{-48,36},{-38,36}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA1.port_a2, pipeA1.port_b1) annotation (Line(
          points={{-38,26},{-28,26},{-28,36},{-18,36}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC1.port_a2, pipeC1.port_b1) annotation (Line(
          points={{12,118},{24,118},{24,128},{32,128}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC1.port_b2, consumer_Water1.port_a1) annotation (Line(
          points={{32,118},{42,118},{42,128},{50,128}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water1.port_a2, consumer_Water1.port_a1) annotation (Line(
          points={{50,118},{42,118},{42,128},{50,128}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC1.port_a1, pipeA1.port_b2) annotation (Line(
          points={{12,128},{-4,128},{-4,26},{-18,26}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_a1, pipeA1.port_b2) annotation (Line(
          points={{26,-8},{4,-8},{4,26},{-18,26}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC2.port_a2, pipeC2.port_b1) annotation (Line(
          points={{108,68},{120,68},{120,78},{128,78}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC2.port_b2, consumer_Water2.port_a1) annotation (Line(
          points={{128,68},{146,68},{146,78},{166,78}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water2.port_a2, consumer_Water2.port_a1) annotation (Line(
          points={{166,68},{146,68},{146,78},{166,78}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_b1, pipeC2.port_a1) annotation (Line(
          points={{46,-8},{78,-8},{78,78},{108,78}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA2.port_a2, pipeA2.port_b1) annotation (Line(
          points={{26,-18},{36,-18},{36,-8},{46,-8}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC3.port_b2, consumer_Water3.port_a1) annotation (Line(
          points={{166,-28},{182,-28},{182,-18},{196,-18}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water3.port_a2, consumer_Water3.port_a1) annotation (Line(
          points={{196,-28},{182,-28},{182,-18},{196,-18}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC3.port_a2, pipeC3.port_b1) annotation (Line(
          points={{146,-28},{156,-28},{156,-18},{166,-18}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC3.port_a1, pipeA2.port_b2) annotation (Line(
          points={{146,-18},{46,-18}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA3.port_a1, pipeA1.port_a2) annotation (Line(
          points={{64,-56},{-38,-56},{-38,26}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA3.port_b1, pipeC3.port_a2) annotation (Line(
          points={{84,-56},{118,-56},{118,-28},{146,-28}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA3.port_a2, pipeA3.port_b2) annotation (Line(
          points={{64,-66},{76,-66},{76,-66},{84,-66}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA3.port_b2, sink_pT3.port_a) annotation (Line(
          points={{84,-66},{118,-66}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC4.port_a1, pipeC1.port_b1) annotation (Line(
          points={{156,152},{36,152},{36,128},{32,128}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC4.port_b1, pipeC4.port_a2) annotation (Line(
          points={{176,152},{166,152},{166,142},{156,142}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC4.port_b2, pipeC3.port_b1) annotation (Line(
          points={{176,142},{234,142},{234,-8},{166,-8},{166,-18}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC2.port_b1, pipeC4.port_a2) annotation (Line(
          points={{128,78},{142,78},{142,142},{156,142}},
          color={0,0,0},
          thickness=0.5));
      annotation (Diagram(coordinateSystem(extent={{-140,-160},{360,160}})), Icon(
            coordinateSystem(extent={{-140,-160},{360,160}})));
    end WSS_3Cons_Setup;

    model WSS_3Consumers_v2

      type Head=Real(unit="bar");
      type VolumeFlow=Real(unit="m3/h");

    //Pipe Parameters
      parameter SI.Length PipeA_L = 20;
      parameter SI.Length PipeC_L = 20;
      parameter SI.Length PipeA_D = 0.025;
      parameter SI.Length PipeC_D = 0.015;

      Lab_Units.Components.Sources.Source_qT source_qT1 annotation (Placement(
            transformation(extent={{-172,-28},{-152,-8}})));
      Lab_Units.Units.Pumping pumping2
        annotation (Placement(transformation(extent={{-124,-26},{-104,-6}})));
      Modelica.Blocks.Sources.Constant OD_in8(k=0.8)
                                                   "m"
        annotation (Placement(transformation(extent={{-136,-50},{-120,-34}})));
      Modelica.Blocks.Sources.Constant OD_out5(k=0) "m"
        annotation (Placement(transformation(extent={{-136,-76},{-120,-60}})));
      Modelica.Blocks.Sources.Constant PWM_out2(k=0.8)
                                                     "m"
        annotation (Placement(transformation(extent={{-136,-106},{-120,-90}})));
      Lab_Units.Units.Consumer_Water consumer_Water21(h=0)
        annotation (Placement(transformation(extent={{4,58},{24,78}})));
      Modelica.Blocks.Sources.Constant OD_in9(k=1) "m"
        annotation (Placement(transformation(extent={{-8,36},{6,50}})));
      Modelica.Blocks.Sources.Constant OD_in10(k=0)
                                                   "m"
        annotation (Placement(transformation(extent={{-8,12},{6,26}})));
      Modelica.Blocks.Sources.Constant OD_out6(k=1) "m"
        annotation (Placement(transformation(extent={{-8,-12},{6,2}})));
      Lab_Units.Units.Consumer_Water consumer_Water22(h=0)
        annotation (Placement(transformation(extent={{140,62},{160,82}})));
      Modelica.Blocks.Sources.Constant OD_in11(k=1)
                                                   "m"
        annotation (Placement(transformation(extent={{120,36},{134,50}})));
      Modelica.Blocks.Sources.Constant OD_in12(k=0)
                                                   "m"
        annotation (Placement(transformation(extent={{120,12},{134,26}})));
      Modelica.Blocks.Sources.Constant OD_out7(k=1) "m"
        annotation (Placement(transformation(extent={{120,-12},{134,2}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT3
        annotation (Placement(transformation(extent={{174,62},{194,82}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT4
        annotation (Placement(transformation(extent={{34,58},{54,78}})));
      Lab_Units.Units.Consumer_Water consumer_Water23(h=0)
        annotation (Placement(transformation(extent={{144,-50},{164,-30}})));
      Modelica.Blocks.Sources.Constant OD_in13(k=1)
                                                   "m"
        annotation (Placement(transformation(extent={{130,-76},{144,-62}})));
      Modelica.Blocks.Sources.Constant OD_in14(k=0)
                                                   "m"
        annotation (Placement(transformation(extent={{130,-100},{144,-86}})));
      Modelica.Blocks.Sources.Constant OD_out8(k=1) "m"
        annotation (Placement(transformation(extent={{130,-124},{144,-110}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT5
        annotation (Placement(transformation(extent={{176,-50},{196,-30}})));
      Lab_Units.Units.PipeC pipeC21(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
      Lab_Units.Units.PipeC pipeC22(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{90,56},{110,76}})));
      Lab_Units.Units.PipeA pipeA21(D=PipeA_D, L=PipeA_D)
        annotation (Placement(transformation(extent={{-90,-32},{-70,-12}})));
      Lab_Units.Units.PipeA pipeA22(D=PipeA_D, L=PipeA_D)
        annotation (Placement(transformation(extent={{-16,-42},{4,-22}})));
      Lab_Units.Units.PipeC pipeC23(D=PipeC_D, L=PipeC_L)
        annotation (Placement(transformation(extent={{84,-52},{104,-32}})));
    equation
      connect(OD_in8.y,pumping2. Input[1]) annotation (Line(points={{-119.2,-42},
              {-114,-42},{-114,-28.1333}},               color={0,0,127}));
      connect(OD_out5.y,pumping2. Input[2]) annotation (Line(points={{-119.2,-68},{-114,
              -68},{-114,-26.8}},              color={0,0,127}));
      connect(PWM_out2.y,pumping2. Input[3]) annotation (Line(points={{-119.2,
              -98},{-114,-98},{-114,-25.4667}},          color={0,0,127}));
      connect(source_qT1.port_b,pumping2. port_a) annotation (Line(
          points={{-152,-18},{-152,-17},{-124,-17},{-124,-16}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in9.y,consumer_Water21. OD[1]) annotation (Line(points={{6.7,43},
              {6.7,42.5},{14,42.5},{14,56.6667}},             color={0,0,127}));
      connect(OD_in10.y,consumer_Water21. OD[2]) annotation (Line(points={{6.7,19},{
              6.7,19.5},{14,19.5},{14,58}},         color={0,0,127}));
      connect(OD_out6.y,consumer_Water21. OD[3]) annotation (Line(points={{6.7,-5},
              {6.7,-5.5},{14,-5.5},{14,59.3333}},             color={0,0,127}));
      connect(consumer_Water21.port_a2,consumer_Water21. port_a1) annotation (
          Line(
          points={{4,64},{-8,64},{-8,74},{4,74}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in11.y,consumer_Water22. OD[1]) annotation (Line(points={{134.7,
              43},{134.7,42.5},{150,42.5},{150,60.6667}},        color={0,0,127}));
      connect(OD_in12.y,consumer_Water22. OD[2]) annotation (Line(points={{134.7,19},
              {134.7,19.5},{150,19.5},{150,62}},             color={0,0,127}));
      connect(OD_out7.y,consumer_Water22. OD[3]) annotation (Line(points={{134.7,
              -5},{134.7,-3.5},{150,-3.5},{150,63.3333}},        color={0,0,127}));
      connect(consumer_Water22.port_a2,consumer_Water22. port_a1) annotation (
          Line(
          points={{140,68},{126,68},{126,78},{140,78}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water22.port_b,sink_pT3. port_a) annotation (Line(
          points={{160,72},{174,72}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water21.port_b,sink_pT4. port_a) annotation (Line(
          points={{24,68},{34,68}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in13.y,consumer_Water23. OD[1]) annotation (Line(points={{144.7,
              -69},{144.7,-69.5},{154,-69.5},{154,-51.3333}},    color={0,0,127}));
      connect(OD_in14.y,consumer_Water23. OD[2]) annotation (Line(points={{144.7,
              -93},{144.7,-92.5},{154,-92.5},{154,-50}},     color={0,0,127}));
      connect(OD_out8.y,consumer_Water23. OD[3]) annotation (Line(points={{144.7,
              -117},{144.7,-115.5},{154,-115.5},{154,-48.6667}}, color={0,0,127}));
      connect(consumer_Water23.port_a2,consumer_Water23. port_a1) annotation (
          Line(
          points={{144,-44},{130,-44},{130,-34},{144,-34}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water23.port_b,sink_pT5. port_a) annotation (Line(
          points={{164,-40},{176,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC21.port_a2,pipeC21. port_b1) annotation (Line(
          points={{-60,66},{-50,66},{-50,76},{-40,76}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC22.port_a2,pipeC22. port_b1) annotation (Line(
          points={{90,62},{100,62},{100,72},{110,72}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC22.port_b2,consumer_Water22. port_a1) annotation (Line(
          points={{110,62},{118,62},{118,72},{126,72},{126,78},{140,78}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC21.port_b2,consumer_Water21. port_a1) annotation (Line(
          points={{-40,66},{-24,66},{-24,72},{-8,72},{-8,74},{4,74}},
          color={0,0,0},
          thickness=0.5));
      connect(pumping2.port_b,pipeA21. port_a1) annotation (Line(
          points={{-104,-16},{-90,-16}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC21.port_a1,pipeA21. port_b2) annotation (Line(
          points={{-60,76},{-66,76},{-66,-26},{-70,-26}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA21.port_b1,pipeA21. port_a2) annotation (Line(
          points={{-70,-16},{-80,-16},{-80,-26},{-90,-26}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA22.port_a2,pipeA22. port_b1) annotation (Line(
          points={{-16,-36},{-6,-36},{-6,-26},{4,-26}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA22.port_a1,pipeA21. port_b2) annotation (Line(
          points={{-16,-26},{-70,-26}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA22.port_b1,pipeC22. port_a1) annotation (Line(
          points={{4,-26},{66,-26},{66,72},{90,72}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC23.port_a2,pipeC23. port_b1) annotation (Line(
          points={{84,-46},{94,-46},{94,-36},{104,-36}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeC23.port_b2,consumer_Water23. port_a1) annotation (Line(
          points={{104,-46},{118,-46},{118,-36},{130,-36},{130,-34},{144,-34}},
          color={0,0,0},
          thickness=0.5));
      connect(pipeA22.port_b2,pipeC23. port_a1) annotation (Line(
          points={{4,-36},{84,-36}},
          color={0,0,0},
          thickness=0.5));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false, extent={{-200,-140},
                {220,100}})), Diagram(coordinateSystem(preserveAspectRatio=false,
              extent={{-200,-140},{220,100}})));
    end WSS_3Consumers_v2;
  end WaterSupply;

  package DisctrictHeating
  end DisctrictHeating;

  package WasteCollection
    model WWS_Basic
       extends Modelica.Icons.Example;
      import VirtualWaterLab =
             Lab_Units;
      import SI = Modelica.SIunits;

        type Head=Real(unit="bar");

    //Pipe Parameters
      parameter SI.Length PipeA_L = 80;
      parameter SI.Length PipeC_L = 20;
      parameter SI.Length PipeA_D = 0.0250;
      parameter SI.Length PipeC_D = 0.020;

    //Variables
     /*SI.Pressure dp_pumping_station;
 SI.Pressure dp_consumer1;
 SI.Pressure dp_consumer2;
 SI.Pressure dp_consumer3;
 Head h_consumer1;
 Head h_consumer2;
 Head h_consumer3;*/

      Modelica.Blocks.Sources.Constant OD_in1(k=1) "m"
        annotation (Placement(transformation(extent={{212,62},{228,78}})));
      Modelica.Blocks.Sources.Constant OD_in2(k=1) "m"
        annotation (Placement(transformation(extent={{212,38},{228,54}})));
      Modelica.Blocks.Sources.Constant OD_in3(k=0.8)
                                                   "m"
        annotation (Placement(transformation(extent={{86,70},{102,86}})));
      Modelica.Blocks.Sources.Constant OD_out1(k=0) "m"
        annotation (Placement(transformation(extent={{86,46},{102,62}})));
      Modelica.Blocks.Sources.Constant PWM_out1(k=0.8) "m"
        annotation (Placement(transformation(extent={{86,22},{102,38}})));
      Lab_Units.Components.Sources.Source_pT source_pT(p=130000)
        annotation (Placement(transformation(extent={{44,96},{64,116}})));
      Lab_Units.Units.Pumping pumping
        annotation (Placement(transformation(extent={{104,96},{124,116}})));
      Lab_Units.Components.Sources.Sink_pT sink_pT3(p=101325)
        annotation (Placement(transformation(extent={{316,90},{336,110}})));
      Lab_Units.Units.Sewer_Pipe pipeW(h_in1=0.75, h_in2=0.5)
        annotation (Placement(transformation(extent={{230,90},{250,110}})));
      Lab_Units.Units.Consumer_Water consumer_Water(h=3)
        annotation (Placement(transformation(extent={{168,60},{188,80}})));
      Lab_Units.Components.Sources.Source_pT source_pT1(p=130000)
        annotation (Placement(transformation(extent={{136,66},{156,86}})));
      Modelica.Blocks.Sources.Constant OD_in4(k=0.8)
                                                   "m"
        annotation (Placement(transformation(extent={{142,30},{158,46}})));
      Modelica.Blocks.Sources.Constant OD_out2(k=0) "m"
        annotation (Placement(transformation(extent={{142,-2},{158,14}})));
      Modelica.Blocks.Sources.Constant OD_Out(k=1) "m"
        annotation (Placement(transformation(extent={{142,-26},{158,-10}})));
    equation
      /*dp_pumping_station = (VirtualWaterLab.p_ambient - pumping1.port_b.p);
  dp_consumer1 =(pumping1.port_b.p - pipeC_basic1.port_b2.p);
  dp_consumer2 =(pumping1.port_b.p - pipeC_basic2.port_b2.p);
  dp_consumer3 =(pumping1.port_b.p - pipeC_basic3.port_b2.p);
  h_consumer1 = consumer_Water1.h/10;
  h_consumer2 = consumer_Water2.h/10;
  h_consumer3 = consumer_Water3.h/10;*/

      connect(source_pT.port_b, pumping.port_a) annotation (Line(
          points={{64,106},{104,106}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in3.y, pumping.Input[1]) annotation (Line(points={{102.8,78},{
              114,78},{114,93.8667}},
                                   color={0,0,127}));
      connect(PWM_out1.y, pumping.Input[3]) annotation (Line(points={{102.8,30},
              {114,30},{114,96.5333}}, color={0,0,127}));
      connect(pumping.Input[2], OD_out1.y)
        annotation (Line(points={{114,95.2},{114,54},{102.8,54}},
                                                               color={0,0,127}));
      connect(OD_in3.y, pumping.Input[1]) annotation (Line(points={{102.8,78},{
              114,78},{114,93.8667}},
                                   color={0,0,127}));
      connect(pipeW.OD[2], OD_in2.y) annotation (Line(points={{240,91},{240,46},
              {228.8,46}},     color={0,0,127}));
      connect(pipeW.OD[1], OD_in1.y) annotation (Line(points={{240,89},{240,70},
              {228.8,70}},     color={0,0,127}));
      connect(pipeW.port_b2, sink_pT3.port_a) annotation (Line(
          points={{250.2,100},{316,100}},
          color={0,0,0},
          thickness=0.5));
      connect(pumping.port_b, pipeW.port_a1) annotation (Line(
          points={{124,106},{230,106}},
          color={0,0,0},
          thickness=0.5));
      connect(source_pT1.port_b, consumer_Water.port_a1) annotation (Line(
          points={{156,76},{168,76}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water.port_a2, consumer_Water.port_a1) annotation (Line(
          points={{168,66},{160,66},{160,76},{168,76}},
          color={0,0,0},
          thickness=0.5));
      connect(consumer_Water.port_b, pipeW.port_a2) annotation (Line(
          points={{188,70},{204,70},{204,96},{230,96}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_in4.y, consumer_Water.OD[1]) annotation (Line(points={{158.8,
              38},{168,38},{168,58.6667},{178,58.6667}},
                                                    color={0,0,127}));
      connect(OD_out2.y, consumer_Water.OD[2]) annotation (Line(points={{158.8,6},
              {168,6},{168,60},{178,60}},       color={0,0,127}));
      connect(OD_Out.y, consumer_Water.OD[3]) annotation (Line(points={{158.8,
              -18},{170,-18},{170,61.3333},{178,61.3333}},
                                                     color={0,0,127}));
      annotation (Diagram(coordinateSystem(extent={{-140,-160},{360,160}})), Icon(
            coordinateSystem(extent={{-140,-160},{360,160}})));
    end WWS_Basic;
  end WasteCollection;
  annotation (uses(Modelica(version="3.2.2")));
end VirtualNetwork;
