within ;
package VirtualWaterLab
  extends Modelica.Icons.Package;
  import SI = Modelica.SIunits;

//Constants
  import Modelica.Constants.pi;
  constant SI.Density rho = 1000;
  constant SI.SpecificHeatCapacity Cp = 4186;
  constant SI.Temperature T0 = 273.15;
  constant SI.Temperature T_ambient = 25+ 273.15;

  constant SI.Acceleration g = 9.81;
  constant SI.Pressure p_ambient = 101325;





  package Icons

    extends Modelica.Icons.IconsPackage;

    model Pipe
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,50},{100,-50}},
              lineColor={0,0,0},
              lineThickness=1,
              fillColor={215,215,215},
              fillPattern=FillPattern.HorizontalCylinder)}), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Pipe;

    model Pipe_OC
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,50},{100,-50}},
              lineColor={0,0,0},
              lineThickness=1,
              fillColor={215,215,215},
              fillPattern=FillPattern.HorizontalCylinder),
              Rectangle(
              extent={{-100,4},{100,-50}},
              lineColor={0,0,0},
              lineThickness=1,
              fillColor={28,108,200},
              fillPattern=FillPattern.HorizontalCylinder)}), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Pipe_OC;

    model Valve
       annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
              extent={{-4,40},{4,0}},
              lineColor={0,0,0},
              fillColor={135,135,135},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{-100,52},{0,0},{-100,-52},{-100,52}},
              lineColor={0,0,0},
              fillColor={175,175,175},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{-50,52},{50,0},{-50,-52},{-50,52}},
              lineColor={0,0,0},
              fillColor={175,175,175},
              fillPattern=FillPattern.Solid,
              origin={50,0},
              rotation=180),
            Ellipse(
              extent={{-20,80},{20,40}},
              lineColor={0,0,0},
              lineThickness=0.5,
              fillColor={0,0,0},
              fillPattern=FillPattern.Solid),
            Polygon(
              points={{20,-70},{60,-85},{20,-100},{20,-70}},
              lineColor={0,128,255},
              fillColor={0,128,255},
              fillPattern=FillPattern.Solid,
              visible=showDesignFlowDirection),
            Polygon(
              points={{20,-75},{50,-85},{20,-95},{20,-75}},
              lineColor={255,255,255},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              visible=allowFlowReversal),
            Line(
              points={{55,-85},{-60,-85}},
              color={0,128,255},
              visible=showDesignFlowDirection)}), Diagram(coordinateSystem(preserveAspectRatio=false)));
    end Valve;

    model Pump
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
              extent={{-100,50},{100,-50}},
              lineColor={0,0,0},
              lineThickness=1,
              fillColor={215,215,215},
              fillPattern=FillPattern.HorizontalCylinder),
            Ellipse(
              extent={{-80,80},{80,-80}},
              lineColor={0,0,0},
              lineThickness=0.5,
              fillPattern=FillPattern.Solid,
              fillColor={215,215,215}),
            Polygon(
              points={{-44,48},{-44,-48},{64,0},{-44,48}},
              lineColor={0,0,0},
              fillColor={95,95,95},
              fillPattern=FillPattern.Solid)}), Diagram(coordinateSystem(
              preserveAspectRatio=false)));
    end Pump;

    model Boundary
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200},
              lineThickness=0.5,
              fillPattern=FillPattern.Sphere,
              fillColor={85,170,255})}), Diagram(coordinateSystem(
              preserveAspectRatio=false)));
    end Boundary;

    model Tank
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={0,0,0},
              lineThickness=1,
              fillColor={215,215,215},
              fillPattern=FillPattern.HorizontalCylinder,
              origin={0,0},
              rotation=90),
              Rectangle(
              extent={{-50,100},{50,-100}},
              lineColor={0,0,0},
              lineThickness=1,
              fillColor={85,170,255},
              fillPattern=FillPattern.HorizontalCylinder,
              origin={0,-50},
              rotation=90)}),                                        Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Tank;

    model Radiator
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
              extent={{-100,40},{100,-80}},
              lineColor={28,108,200},
              fillColor={215,215,215},
              fillPattern=FillPattern.HorizontalCylinder,
              radius=10),
            Rectangle(
              extent={{-79,27},{-73,-67}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              radius=10),
            Rectangle(
              extent={{-59,27},{-53,-67}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              radius=10),
            Rectangle(
              extent={{-41,27},{-35,-67}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              radius=10),
            Rectangle(
              extent={{-19,27},{-13,-67}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              radius=10),
            Rectangle(
              extent={{1,27},{7,-67}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              radius=10),
            Rectangle(
              extent={{21,27},{27,-67}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              radius=10),
            Rectangle(
              extent={{41,27},{47,-67}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              radius=10),
            Rectangle(
              extent={{61,27},{67,-67}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              radius=10),
            Bitmap(extent={{-46,36},{44,80}},
              imageSource=
                  "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",
              fileName=
                  "modelica://VirtualWaterLab/../../../../../es.aau.dk/Users/jvl/Documents/Dymola/Icons/fan.png"),
            Rectangle(
              extent={{81,27},{87,-67}},
              lineColor={0,0,0},
              fillColor={255,255,255},
              fillPattern=FillPattern.Solid,
              radius=10)}),                                          Diagram(
            coordinateSystem(preserveAspectRatio=false)));

    end Radiator;

    model Boiler
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,60},{100,-60}},
              lineColor={238,46,47},
              lineThickness=1,
              fillColor={215,215,215},
              fillPattern=FillPattern.HorizontalCylinder,
              radius=30)}), Diagram(coordinateSystem(preserveAspectRatio=false)));
    end Boiler;

    model PipeBlock
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={244,125,35},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              radius=20),
            Line(
              points={{-3.1606e-015,58},{6.12325e-016,-32}},
              color={0,0,0},
              thickness=0.5,
              origin={-12,16},
              rotation=90),
            Line(
              points={{1.38546e-016,34},{0,-22}},
              color={0,0,0},
              thickness=0.5,
              origin={-2,8},
              rotation=90),
            Ellipse(
              extent={{-4,4},{4,-4}},
              lineColor={0,0,0},
              lineThickness=0.5,
              startAngle=90,
              endAngle=270,
              closure=EllipseClosure.None,
              origin={20,12},
              rotation=180),
            Ellipse(
              extent={{-4,4},{4,-4}},
              lineColor={0,0,0},
              lineThickness=0.5,
              startAngle=90,
              endAngle=270,
              closure=EllipseClosure.None,
              origin={-36,4},
              rotation=360),
            Line(
              points={{1.38546e-016,34},{0,-22}},
              color={0,0,0},
              thickness=0.5,
              origin={-2,0},
              rotation=90),
            Line(
              points={{1.38546e-016,34},{0,-22}},
              color={0,0,0},
              thickness=0.5,
              origin={-2,-16},
              rotation=90),
            Ellipse(
              extent={{-4,4},{4,-4}},
              lineColor={0,0,0},
              lineThickness=0.5,
              startAngle=90,
              endAngle=270,
              closure=EllipseClosure.None,
              origin={20,-4},
              rotation=180),
            Ellipse(
              extent={{-4,4},{4,-4}},
              lineColor={0,0,0},
              lineThickness=0.5,
              startAngle=90,
              endAngle=270,
              closure=EllipseClosure.None,
              origin={-36,-12},
              rotation=360),
            Line(
              points={{1.38546e-016,34},{0,-22}},
              color={0,0,0},
              thickness=0.5,
              origin={-2,-8},
              rotation=90),
            Line(
              points={{1.38546e-016,34},{0,-22}},
              color={0,0,0},
              thickness=0.5,
              origin={-2,-24},
              rotation=90),
            Ellipse(
              extent={{-4,4},{4,-4}},
              lineColor={0,0,0},
              lineThickness=0.5,
              startAngle=90,
              endAngle=270,
              closure=EllipseClosure.None,
              origin={20,-20},
              rotation=180),
            Ellipse(
              extent={{-4,4},{4,-4}},
              lineColor={0,0,0},
              lineThickness=0.5,
              startAngle=90,
              endAngle=270,
              closure=EllipseClosure.None,
              origin={-36,-28},
              rotation=360),
            Line(
              points={{1.38546e-016,34},{2.14375e-015,-28}},
              color={0,0,0},
              thickness=0.5,
              origin={-2,-32},
              rotation=90),
            Ellipse(
              extent={{-4,4},{4,-4}},
              lineColor={0,0,0},
              lineThickness=0.5,
              startAngle=180,
              endAngle=270,
              closure=EllipseClosure.None,
              origin={26,-28},
              rotation=180),
            Line(
              points={{-8.19153e-015,44},{-7.11903e-016,4}},
              color={0,0,0},
              thickness=0.5,
              origin={30,16},
              rotation=180),
            Ellipse(
              extent={{-4,4},{4,-4}},
              lineColor={0,0,0},
              lineThickness=0.5,
              startAngle=180,
              endAngle=270,
              closure=EllipseClosure.None,
              origin={34,12},
              rotation=360),
            Line(
              points={{-1.46829e-015,82},{-4.99313e-015,56}},
              color={0,0,0},
              thickness=0.5,
              origin={116,16},
              rotation=90)}), Diagram(coordinateSystem(preserveAspectRatio=
                false)));
    end PipeBlock;

    model PipeWaste
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={244,125,35},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              radius=20), Bitmap(
              extent={{-60,-97},{60,97}},
              imageSource=
                  "iVBORw0KGgoAAAANSUhEUgAAAKoAAACqCAYAAAA9dtSCAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyhpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNS1jMDIxIDc5LjE1NTc3MiwgMjAxNC8wMS8xMy0xOTo0NDowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTQgKE1hY2ludG9zaCkiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MDg0QzQ3MDk2NDk4MTFFNUE0N0M4RDlEOTc3REY2RDAiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MDg0QzQ3MEE2NDk4MTFFNUE0N0M4RDlEOTc3REY2RDAiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDo4MTU4NDFDNDY0NzUxMUU1QTQ3QzhEOUQ5NzdERjZEMCIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDowODRDNDcwODY0OTgxMUU1QTQ3QzhEOUQ5NzdERjZEMCIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/Pgz8PSoAABG5SURBVHja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",
              fileName=
                  "C:/Users/jvl/OneDrive - Aalborg Universitet/Jorge/Visio/Images/icon-pipe@2x.png",
              origin={-3,0},
              rotation=270)}),Diagram(coordinateSystem(preserveAspectRatio=
                false)));

    end PipeWaste;

    model PumpStation
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={0,140,72},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              radius=20),
            Ellipse(
              extent={{-80,80},{80,-80}},
              lineColor={0,0,0},
              lineThickness=0.5,
              fillPattern=FillPattern.Solid,
              fillColor={215,215,215}),
            Polygon(
              points={{-44,48},{-44,-48},{64,0},{-44,48}},
              lineColor={0,0,0},
              fillColor={95,95,95},
              fillPattern=FillPattern.Solid)}), Diagram(coordinateSystem(
              preserveAspectRatio=false)));
    end PumpStation;

    model Heater
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={238,46,47},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              radius=20),                     Bitmap(extent={{-118,-80},{116,90}},
              imageSource=
                  "iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAMAAADDpiTIAAAC8VBMVEX///8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACckYSCAAAA+nRSTlMAgCBQKJC4aNhgiLCY8DhYcAL9/g0WyAb5/PMExC0HIrXh+wFxCJNCuqX4X09R95U91GTp3OSGJTfmG+vJdtlMMPEyIddXdEfKexinSu/CqEHsv8CgL2HP7mNmoolVqr2OQOUuE4Xn6n7HDm0Vr6NF9NIMzHM8m/bNEVk1CxdpnRBa01x53oSLOlQDHT6zKm/RmYFeKWJSK7Tg1vqeijNyP6yUt625bE6xGiN3sh9nDzFEdcbFg38Zko/bazuX8pHO30smbraWpLx8q0YkgngeLF3iptWhmnqpTa40U9qNw90FNujLSbsU9Zy+VhKHn2rjQ2UnW0jQCn05Kn49QAAAFthJREFUeF7s3duPltUZxuG7qIVohM73McAwYJEZZFMEZCdqKQUcdhJARNF26IAgGwcBpSGykSoiyogbTBTcIGBaFI2obcO0lBaUaEJIFHeBgAruNzHqgenBfeSRB2Y9cADPGp9vcl9/wHf2vVnrfdd6fghEGhpnDml9CobM3F6JkiYXb5uyeHaBp6w4Z+qUlS1QkuTFPbvoYtXgzig1cqATHc0bhlIik/5JZ//ojlIh5ROZweFylARZdwmzGLAF8QmGVjCTrn9GdFK2nhl904DY5C/MamIZIpOzmdl0BCa/Ynb1CEu2VDC7wiQEJW2/Y34ctBQxyR42iacQkiwvsElUHEREcoxNpA4BSXc2mRmIR46wyfwS4ci4rmwyhUZEI6+zCVUjGtlLW3Fxbf2yNqdgWX3tmCJtnyAYua1I08YNOA0H76NtPmKR3pme1ZuLtDyCWGQuLYdw2sbS8hDi0yaQnapw2qrm0XAYscguGtbBQT8a/o9QpOpxpnbBxXGmvkAo8jkNC+CiJw23IxI5SMOojOvLkYhEXqJhGlxcQ8PvEYm8SUM/uLgw/gdB+TsNF2f8znwGIpEPaGgLFyNo+A0ikZ4Zt2q/puEBRCJ1TB2Hj1k07EQk8g5TneCjMv4NIbmWqa1w0pGpJxCItM96fn8QU0cQiLxBw344uSj60XD5iIb+cNKJqVsRiDxNwzA46WJuMQKRP9BwNOdLhisRiOyk4VI46ctUVwQi/2Wq+CGcDKbhFsQhNzF1GbwMtZ8vccg8plblXWFsQBzyMlOfwUsNDbsRh/RhagG8jKZhPMKQF2jYBC9DaLgDYciZNGzO+/PfIgyZkfcvOo6G1QhD2tDQHV660VCL2DQg9H646cDUesSmCcFfw80ApiYiDJnCVAf4+V3sQVHyN6bOh58xTLVDGPIgU7+Fnx5MXY4wZABTz8DPn5iajSikoZB5lb6EqT6IQhpzT/G5m4b2CEJepGEl/IyloRxByPjc13e30bAPQcjDNLSGnztpWI4g5BANLeBnGA0LEYT8i4Zu8NPPfwCNZN6mnwtHnWnojyBkAlOt4OheGkYhCHmfqavg6EYa1iAI6cjUFXBUVWDqAsQgK2j4d/b5EwsQgzxLw3PZ7x3chxhkd/4xblOZmoAY5D0aRsPTZKZuRgzyHxquzn759C3EIGtoKM9+6PB/iEG+ZKqiDJ7OYqpYhhBkI1OXwNUvaFiKEGQxU3vhqjpwM0IGMfUqfMRvRkhV14yTXOM3I2Q+DYPhI34zQjrTUA8f8ZsRstC5F6VmhHpRakaoF6VmhHpRakaoFxW/GSH4iqmBcBK/GSGP5epFqRmhXlT8ZoScl6cXpWaEelFqRqgXFb8ZIb1z9qLiNyNkBw1PIqFmhHpRakaoF6VmhHpRakaoF6VmhHpRzbkZoV7UH+EjfjNCbvfuRakZoV6UmhHqRakZoV6UmhHqRcVvRkhtzl5U/GaEvOvfi1IzQr0oNSPUi1IzQr2o+M0IqczZi4rfjJDtOXtR8ZsRMoKGlkioGaFelJoR6kWpGaFelJoR6kWpGaFeVHNpRsgxsxeVw10RmxGyi6nJSKgZoV6UmhHqRakZoV6UbzNiOCJTL6rZNyNkbc5eVPxmhGyjYSZyqLYb9XGpF6VmhHpRakaoF5W1GdEbcakX1fybEXK9ey9KzQj1omyzaJiLcNSLugEpNSPUi1IzQr0o/2bEXxGWelFqRqgX1cybETLd7kXl0cUhTeNL3mZqESxqRqgXpWaEelH+zYgViEq9KDUj1Itq3s0Ied7uRWVSQ8M9+PnIEPdeVOk3I9SLegUJNSPUi8rVjFiJUqJeVPNvRqgXVQkHakaoFxW/GSHtHHpRcZsR0mLap91wMo8y1QOJEmxGyPb9XeaQXHTOdeNwQr0celERmxGyb0kH/qhY79qLit+MkOVbfzqRa4dfLyp+M0IO1CU7u2t8elHxmxHSULOXqUINLMscelGRmhHSreVAmqbCUu3Qi4rTjJAXVn9MG4uzYKh1mNkRpRkhjZuG88TWOvSiQjcjtO/rxZN5zbsXpWZE23KEcXRrgSfXyrMXpWbEyO/7Tq0ojtl5tAoBLKz7gb0z/a2q2sPwW1SES4+yyzk9FOS0KDIPBbWozFZRwULRW7XgCELlWBWUWhyOelFRKwSVQXAWxGoZZFRUBjECimDg4nCJGD5gTNSYKIkxd30yftjEyPDba629zntqz/sX7GQ/WTtP9koeJS6CY6zKqBeVbUZ0mK38TdpL976fpqsAi4TVi8o2I5qNy/urYZ/O9b6V56pAizB7Uf6i/4BmRPWWv/3UPrMX0fs+P6QCLhJGLyrbjIjmtDvam65ged91w1TgRex7UdlmRHxOlcqYBHb/r7orjUVse1HZZoQ3d5E69p4jeN/OPKW1iGUvKtuM2D9DHW9z0u59nyh5MgCdA/eiss2ImjOUP/Yh5vneZw3AzoCgZJsRHRaqE21ze6RtiZV+5McegIPiBZ1sM8IX/xNvRfq8b5IyW8SwF5VtRsT+FH9hzdjeJy+i34vKNiN88ZcBYHufvIh5L4rfjOCLPx+AlwXvMwBgl0YvitmM4Is/H4DVgvcZAVAj96L4zQi++PMB8K6/W1kvYtCL4jcj+OLPByAxVtP7Bvd7UQBAoxdFbUbwxZ8PQHKZpvdddsBDrgiA3Itq0s2I0jvyVEYAMOJfmt63tAsAAQBCL6pxNSNiG3zxJwOw6xk97ysYvQrQAKBI6EU1zWZE9Flf/MkAvHyDnvf13tQAaAEwXehFNcVmRKL1AOWPCsDq75XWykpSgAAAoRfVyJoRXo9FymjNyN43fk0UEAAI1ot6CP6aYDOi3hd/LgCJsd/qel8cEAEg9KIaVzOieJ1SfACQHKTrfQs8QBcAuRfV1JoRE3zx5wIw4ueIpveVA9AAgNWLkpsRfPHnA7Ar18D7jAGYq92L4jcj+OKf380ZABf9T9f7CgELAAZp9qL4zQi++D/fC60dAfBrV03vm5gCdACw7EXxmxF88f/v/Dq4AcB78jtN7xseBfQAsOpF8ZsRfPEfM+1swAkAicO63lcZB2wAkHtRTaMZUd9XBd2UmW8DTgBIDrrAwPv0ATDuRfGbEXzxf6HPCMAJAClT77MHoEyjF8VsRvDFv82+BsAJAA25vfW8b+QqwBAAs14UvxnBF/8lQwEJAEPvK9Dzvu2FgDEAJr0ofjOCL/6TXwWcANBF2/tigB0A8mFcCWGEZgRV/L84CXABgHfAxPusAKD1ouRmRG7Giv/VdXABQKLfYKW1FoL3aQMg96L4zQi++L+SABwAkFyj6X0DBe8zAyBH6EWRmxF88V+fBBwAkCrR9L7m5QAcAJAr9KLS2IyYnIHivzgFOACgYZOu9w0F3ADQKr29KH4zYkJRcPHvVgg4AGDVaGPvsweA2oviNyNKdwQX/20VgAMAuiy18D57AGi9KLkZUZtR4r92FhA+AN6Bywy8zxEAci+K1ozgi39PIHwA4kbe5wwAuRfFaUbwxb9jSw/hAxBdM97A+xwDME/oRaW1GdHfpfh3VEE3oFMCCB2AVEmZgfc5B6Bc6EURmhFs8d+dBEwBIHifLgDMXpTcjOCLf+cUYA4Awfv0AZB7UfPgfDVCz4Yk/jtKgdABKDfxPmcAEHtRcjOCLP5FFUDYAHgLTLzPJQByL6o7HIzTjIh1thF/ewDilXbe5x6ArkIvKq3NiPUId8ndwcW/bz0QNgDR4bbe5x6Aqa56UfxmRKKThvj38BA2ALGJut53MwDnABB6UZRmhNdSQ/xbJ4CQASjcTvA+fQDatxF6UWltRixHaOsZXPzbPRsFQgZg6EiC9wUEQO5F5cBu/GbErLUq6NpuiAEhA1DenOB9GgC47UXxmxEVwcU/745SIFwAvAUDNb1vWhQgAEDoRUnNiI7hiH8bFXQLJwDhAhCvbKHpffPjAA+ASge9KGozItb5BRV064qBcAHooO19vTyACcDlgszQmhHuxX9GPRA2ALUE79MFgNiLkpsRD6dN/BcJ4m8EAMH7tAEouOrIiqbNO2YvqgzC2M0Ie/Gv8sWfBkDvPoWAewCkba0SelGMZoR78c+JAlQAymbGAAIA0uReFL8ZYS/+W2IAFYDzBO9jASD3ovjNCHvxH9cMIAAgeB8NAPteFL8ZUagh/rM7AFQA8nudBWQQALa9KH4zIqUh/mfUAFQAlgjeRwDAKt3Cb0Ykd08JLv77ASYABfsqgMYAwGcQRmhG2Iv/1rkemADU9ikFMhIAuRfFb0bYi/+cOEAAwMD7+ABoPCqzGdHzCxV0mwXxN9mpBO/TTzSLk3tR/GaEvfhXO7zWLO/i+XFwdokSZ9SL4jcjKra5Fn95h9jeJ69a9mODXhS/GVHYTUP897hNHsjex9zTymBFEEZuRqQWBxf/gxvhbC3p3ifvJiVN6EUxmxH24j91CBzu3WGy97FXLKUn9HpR/GZEotOY4OK/14PTbTwRitf63sddD+FjqdOL4jcj6nTE/+M4XK+89vjedxcyY4cFAoReFKkZYS/+76TlBfzWVvI+/j5QuitmSuoToYj/KdVIz/6f+8tR6atRR3kfd0N2CJ9NoRdFaEZYiv+XK5DGVXx9Y/6RtVo263dk3Oo2lozK93eNkuYfnpxmhLX4L9/zB3v3EWpX2cVh/Gos3EQEe4n12o+9x27E3nsvH9ZIYo8tigUVFTFciOBA7KIBjSGiA/nAgToQFe5IwYEDnThQnERBHDlzoevy5sDeez0Dn3f8Zw/2/cHh5VzO01LnWb8BoNGLQpsR538y9p//3G7dIQHkXhTfjNhv7IzmdMefuRdA7kXxzYjJcXsqTz3R8eIvgNyL4psRP495kT10cee7lwByL4pvRnwx3sV/UU8XfwGckQCgzYhfpsYAMPr4p4nuRwC5F8U3IybHuPhf3M/FXwC5F8U3I55fJ4CVfSWHBZB7UXwzYlR38RdA7kXxzYi21uk+c8MCyL0ovhnRvPj/1uvFXwC5F8U3IxoX/7d/6P/1COAu+JvqI8cEsPCPIS7+AoheFNyMaAMY/W+Yi78AoheFNiPaADb/dWaIVyOA3IvimxGF/7YqgNyL4psRpT9lK4DoRWHNCBaAACJVBjUjSAACiF4U1owgAQggelFYMwIFIIBRLKFmBAlAANGLwpoRJAABRC8Ka0aQAAQQvSisGYECEMAmsYSaESQAAcS75ZoRIAABRC+Ka0ZwAAQQvSiwGcEBEED0osBmxCAAls9tngVdACxpP/uETgDaz760ZwDRbOGaEa8NAmDOgJ98G7SfvWEnAOuoTvUMIHpRYDOCAyCA6EWBzQgOgACiF8U1Iz7nAAggelFgM4IDIIDoRYHNCA6AAKIXxTUjHuUACCB6UWAzAgQggBUxxJoRGAABRC8KbEbcgwEQQPSiyGYEBkAA0YsimxEYAAFEL4psRmAABBC9KLQZQQEQQES70GYEBUAA0YsimxHLKQACiF4U2oygAAggelFoM4ICIIDoRZHNiGUQAAFEL4ptRkAABBC9KLYZgQEQwNex45oRcyEAAoheFNuMgAAIIHpRbDMCAiCA6EWhzYg3IQACiF4U24yAAAggelFsM4ICIIA9Y0Y2IyAAAoheFNuMgAAIIHpRcDMCASCA6EXRzQgEgACiF0U3IxAAAoheFN2MQAAIIHpRdDOCASCAW2LFNiMQAAKIXhTdjEAACCB6UXQzAgEggOhF0c0IBIAAohdFNyMQAAKIXhTdjGAACGBZrNhmBAFAANGLwpsRBAABRC8Kb0YQAAQQvSi8GYEAEMAoRnAzggAggIi18M0IAIAAohfFNyMIAAKYFyO6GQEAEED0ovhmBABAAPFa+WYEAEAA8RL4ZkT/ABbMa57TugA4uv3sKzoBaD97UY8AohfFNyOAaJTRqOhF8c0IAoAAVsWIbkYAAAQQvSi+GQEAEED0ovhmBABAANGL4psRAAABRC+Kb0YAAAQQvSi+GQEAEED0ovhmBABAAMfFBm9GAAAEEL0ovhkBABBA6kWRzYhCAALIvSi+GVEIQAC5F8U3I8oBCGAq9aLIZkQ5AAFcn5ZkM6IQgAByL4pvRhQCEEDuRfHNiEIAAsi9KL4ZUQhAALkXxTcjCgEIIPei+GZEIQAB5F4U34woByCAe9OSbEYUAhBA7kXxzYhCAALIvSi+GVEHQAC5F8U3I46qBiCAwzAA3zaaESUABJB7UXwzohiAAL5MQ7QZsaQQgAByL4pvRhQCEEDuRfHNiDoAAsi9KL4ZsaYQgAByL4pvRhQCEEDuRfHNiDoAAsi9KL4ZsbQQgAByL4pvRhQCEEDuRfHNiDoAAsi9KL4ZcVUhAAHkXhTfjCgEIIDci+KbEXUABJB7UXwzYrpvADOTzbO2C4DV7Wf/2AlA+9l39AVg97SDmxH2Agp7AbkXxTcjKgEIIPei+GZEIQAB5F4U34woBCCA3IvimxGVAAQwSjO6GXFJIQAB5F4U34yoBCCArdMMb0bUARBA7kXxzYgVhQAEkHtRfDNiIAACWNXhjQLNiL4BCGD+wlkAvJ9meDNiIAACmFg5C4DP0gpvRgwFQACLO/xCGNCM6BuAAF7IAD5II74ZMRQAAeRIyxYzacM3IwYDIIA1B/wLwLV5wzcjBgMggInft/0HgG/m5wnfjBgOgAAm3nnpzzhP79ZYcs2IAQEIYGLO939//p/amKHNiAEACCDO2qUXTY0+vPq7GxsbthkxDAABxFm9U2PANyMGBiCA9uGbESgAAfDNCBSAAPhmBApAAHwzAgUgAL4ZgQIQAN+MAAAIADqjRjOCASAAvhmBAhAA34z47wAQwLGNZgQDQAB8MwIFIAC+GYECEADfjGABCIBvRqAABMA3I1AAAuCbESgAAfDNCBSAAPhmBApAAHwzAgUgAL4ZgQIQAN+MQAEIgG9GoAAEwDcjUAAC4JsRKAAB8M0IFIAA+GYECkAAfDMCBSAAvhmBAxAA34yYHcBf7N07KzcAGIZxREkWh1IOOR8jOR5yeEMSyiCnKJOBYnIq3lAIKSmbSbEoi8FkNZiMRpsPYDX5Bv+7/Lf7uZ7u+Zl++/UHAN+ZCW8kGQDDiX8fJwUg8e9tAwCiGeEajWK6GWENgOlmhDUAppsR1gCYbkZYA2C6GWENgOlmhDUAppsR1gCYbkY4A2C6GfFpDYDpZoQ1AKabEc4AmG5GvFkDYLoZYQ2A6WaEMwCmmxG91gCYbkZ4A2C6GeEMgOlmxIM5AKabERoAs25GaADMtxnxZQ6A6WaEBsCsmxEaAPNtRrybA2C6GaEBMOtmhAbAfJsRE+YAmG5GaADMuhmhATDfZsSNOQCmmxEaALNuRmgAzLoZoQEw62aEBsCsmxEaALNuRmgAzLoZoQEw62aEBsCsmxEaALNuRmgAzLoZoQEw62aEBsCsmxEaALNuRmgAzLoZoQEw62aEBsCsmxEaALNuRmgAzLoZERwAzYjgAGhGBAdAMyI4AJoRwQHQjAgOgGZEcAA0I4IDoBkRHADNiOAAaEYEB0AzIjgAmhHBAdCMCA6AZkRwADQjggOgGREdAM2I4ABoRgQHQDMiOACaEcEB0IwAQJh1/7IDB0UAACAIBDURYWxD9HtZgASOS+AimL7naduBQxwEwQCK4//N5kwkCpVRSAT2bQS7iWNYCTiKpyBRvY8HesniZvEG7/30xxM5izdyFmfkLC7IWdyQs3ghZ3FHzuJAzqIgZ/FA1oJDxqLQylis9DIWJ7ZKtqJeYJKt6ICxyFTMV4B9kKUYGgBoZhmKsvN17WqZiWoa+VlOa5GNONp+A4APSPbn4mcIJMsAAAAASUVORK5CYII=",
              fileName=
                  "modelica://VirtualWaterLab/../../../../../es.aau.dk/Users/jvl/Documents/Dymola/Icons/factory-icon-61837.png")}),
          Diagram(coordinateSystem(preserveAspectRatio=false)));

    end Heater;

    model Consumer_Water
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={28,108,200},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              radius=20),                     Bitmap(extent={{-118,-80},{116,90}},
              imageSource=
                  "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/hs6WbHwwcpZ8t/gyYiF36s0fLXooCT/rX5yw+O7nuxbTjLkJI1j4YFKv4H8t3r7n0efNfR9kHE7SMNY+J+Vl/Lnv53Pjzvx7VsYt4M0ioV/W3kwd/7b9XrNqeeWMm4HaRAL31/pzpv/Tn657uT/zmXcDpIaC18c+qDIrokXPyXJf7818eED9aCLpMXCTwxdPvNErvz3mpQXm9cwbReZGAsfnz58ec+5PPlvWku2l2E7SX0sfHbhyOU9458KDt4vyz/T/mc5zyfI3KT6QM2//4Wjl894euzCPy0SXmfqh0k/xawd5bNXXhL6+bXjLp/Tt/8/F04f3HaruP5OrclXMWln/xtY9pPXzw6e2LfpRkNXmPrskkeB1mhdsf3IueTkSw92O3KDEKBQbruyf8vOGQgQ3d/vzTW5Vg8CRPYgvq7fHuhBgKi4q37OJ2YgQERMOzXxRXsEiIi0D/DNQYB4HgGkbeDXhwDRcH3apPcjQDQsS/3kDgJEQ2/qqBEgGtYiAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAKUJ0BSMgiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAhg6/c/vMYCjyCANwKsCXEBEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEMDKAjyytjDKFqC4e/ojjwQomwIFKBsEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQIBh/g8PMhHgATaLVgAAAABJRU5ErkJggg==",
              fileName=
                  "modelica://VirtualWaterLab/../../../../../es.aau.dk/Users/jvl/Documents/Dymola/Icons/WaterConsumer.png"),
            Bitmap(extent={{-26,-18},{24,32}},
              imageSource=
                  "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",
              fileName=
                  "modelica://VirtualWaterLab/../../../../../es.aau.dk/Users/jvl/Documents/Dymola/Icons/drop.png")}),
          Diagram(coordinateSystem(preserveAspectRatio=false)));

    end Consumer_Water;

    model Consumer_Heat
       annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,100},{100,-100}},
              lineColor={238,46,47},
              fillColor={215,215,215},
              fillPattern=FillPattern.Solid,
              radius=20),                     Bitmap(extent={{-118,-80},{116,90}},
              imageSource=
                  "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/hs6WbHwwcpZ8t/gyYiF36s0fLXooCT/rX5yw+O7nuxbTjLkJI1j4YFKv4H8t3r7n0efNfR9kHE7SMNY+J+Vl/Lnv53Pjzvx7VsYt4M0ioV/W3kwd/7b9XrNqeeWMm4HaRAL31/pzpv/Tn657uT/zmXcDpIaC18c+qDIrokXPyXJf7818eED9aCLpMXCTwxdPvNErvz3mpQXm9cwbReZGAsfnz58ec+5PPlvWku2l2E7SX0sfHbhyOU9458KDt4vyz/T/mc5zyfI3KT6QM2//4Wjl894euzCPy0SXmfqh0k/xawd5bNXXhL6+bXjLp/Tt/8/F04f3HaruP5OrclXMWln/xtY9pPXzw6e2LfpRkNXmPrskkeB1mhdsf3IueTkSw92O3KDEKBQbruyf8vOGQgQ3d/vzTW5Vg8CRPYgvq7fHuhBgKi4q37OJ2YgQERMOzXxRXsEiIi0D/DNQYB4HgGkbeDXhwDRcH3apPcjQDQsS/3kDgJEQ2/qqBEgGtYiAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAIgAAKUJ0BSMgiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAiAAAhg6/c/vMYCjyCANwKsCXEBEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEAABEMDKAjyytjDKFqC4e/ojjwQomwIFKBsEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQAAEQIBh/g8PMhHgATaLVgAAAABJRU5ErkJggg==",
              fileName=
                  "modelica://VirtualWaterLab/../../../../../es.aau.dk/Users/jvl/Documents/Dymola/Icons/WaterConsumer.png"),
            Bitmap(extent={{-32,-24},{26,34}},
              imageSource=
                  "iVBORw0KGgoAAAANSUhEUgAAAgAAAAIACAYAAAD0eNT6AABQZElEQVR42u3deZxjdZX38equVCedimHfRXCQRUHaFR0HrKa7qyr5nXNuqtqOKKLDiLbLiNu4zbiUDu4iKPq4o7iD26iDCio+iDoK6KOOoCK4IDsIsjdNLz5/eG9zabqTm+Xe3OXTr1de88ek3piT3+98T5K7jI3xj3/84x//+Mc//vX6b9Wq5YtWrVq+OPRYhIeHh4eHh5ctr9f/+PjWDzw8PDw8PLxseb1OHaVVq5ZPhB6lfqcPPDw8PDw8vOS9fv7jE6tWLV8SekwM+GLw8PDw8PDwEvT6+Y+XV61aXgk9ygO+GDw8PDw8PLwEvX7+45VVq5YvDT0qA74YPDw8PDw8vAS9wIz6xMWrVi2vrlq1fDL0qK5atXxxn/9hPDw8PDw8vOS9Rf5Bg4uj/scnV61aXgs9Jgd8MXh4eHh4eHjJesEBhN0HgNB/vB561AZ8MTU8PDw8PDy8RL1FobMGOg8A/pOrof8BO/j/d5AXEzg74OHh4eHh4SXiBQcQLgkNAIs6PbkS+uqhTrHx8PDw8PAy6QVnDWwZALpNCku3+u2BYuPh4eHh4WXLq4bOGliyatXyUrffCCqhAWCSYuPh4eHh4WXOCzI8GAAmOn31X/InhGAAqFJsPDw8PDy8zHnhswaWdrxokH9QwERoAKhQbDw8PDw8vEx69dAAUOl20F94ABjkcoW8eXiJeZ7niZn92sxuM7ObROQaEfd7Vf2ZiHxHVb8gIh9S1Teq6nPMbLrZbB40NTVVoX54eHg59oIBoNoxz/0/Gg+dI0j442XGW7NmzVIze5OZrTPTv6ne9zDTv5nZNh8icoOq/sjMPqqqL1PVmUaj8WDeDzw8vBx49UjH8IUGgBLhj5dVr9lsHK6q344S/p0eIvJXVf2uiJws4o5VdQfzfuDh4WXMi3b2XmgAIPzxMu+JuBNF3B39hP99j/t/k6Cq14jI50XkuWb2MN4PPDy8XHgD3lGIYuOlzvM87x9U9fvDCP9tfZMgIn82s0+a2XEzMzM7837g4eFl3aM4eLnxFhYWFqvqy0Vk/TDDfxvDwEYz+4GZvdrzvEfwfuDh4RH+eHgp8FT18WZ2ZRzhv62Hql6hqm9rNhtP4v3Aw8Mj/PHwRujNzc3tYmbnxh3+2/AuU9W3O9d8HO8HHh4e4Y+HNwLP/0ngP81sc0Lhv7V3kao+v91u78D7gYeHR/jj4SXseZ7nmdldCYd/+JiBu1X1057nHT02NraI9xcPD4/wx8NLyPM8O0JVr086/LfxuExVX9xoNOq8v3h4eEmFf+Sz/yg2Xh69RmP2MBH3mxGGf/hbgdvN7P2qegjvLx4eXoxecOn/yBcJqlFsvDx6qm5fVT1/lOG/1WOzqp7nnPN4f/Hw8GII/1KkASB0P+E6xcbLq3fccceWzeyLKQj/rb2fibjjjj/+WSXeXzw8vCGEf3C/n84DgP/kqv/pv06x8fLstdvtcVX9dIrCf4snIr/1PO/Za9euneD9xcPD6zP8y/7dfic6Xvrff3LF//RfC91bmGLj5dZbWFhYbGYfSVP4b3WcwB/M7Ph2uz3O+4uHh9eDV/EfWwaAbpPC0tAAUKPYeEXxVPU9aQv/bZw5cOzCwsJi3l88PLwuXtXP82AAKHX7jaASGgAmKTZe0TwzOyWl4R/+RuBSM2vx/uLh4W3HCzI8GAAmOn31X/InhGAAqFJsvKJ6ZvbRtIb/Vo8LROSJvL94eHghL/j2PhgAyp3Cf9yfDpaEfi+g2HiF9fxjAs5MefgH3mYR+ZJzzcN5f/Hw8PxHMABUuh30Fx4AypGvEkSx8XLsHXfcsWXn3LdSHv5bLBG3XkROXb16dZ33Fw+v0F4wAFQ75rn/R+OhcwQJfzw831uxYvkeqvqDtIf/VqcOXqOqx/L+4uEV1qtHOoYvNACUCH88vAd6zebsQ1T1t1kI/60e54vIYby/eHiF86KdvRcaAAh/PLzteKp6gIjckKHwDx4bzOyU6enpSd5fPDy8rYG+gp9i4xXNM7Mnmtm6DIV/+PEnVW3y/uLh4Q38j2LjFdHzPK9tZpszFv5bHqr6+fn5+d15f/Hw8Ah/PLwePTP7jyyGf+hxs6q8gPcXDw+P4uDh9eiZ2VcyGv5bPOfcOY3GzEG8v3h4hD/FwcOL6DUajbqZXZbV8A89bvE87+m8v3h4hD/FwcOL+M/MDjWzO7Ma/mFPRM6am5vbhfcXD4/wp9h4eBH+eZ73tKyHf+hxnarO8P7i4eU7/COf/Uex8fA6e6r6wRyEf/DYrKont9vtJby/eHi584JL/0e+SFCNYuPhbd+bnl6xu3PukhyEf/jx02azeRDvLx5ersK/FGkACN1PuE6x8fA6eyLNJ5rpupyEf/C408yO5/3Fw8tF+Af3++k8APhPrvqf/usUGw+vu2dmL85R+Icfn3CusTvrBQ8vs+Ff9u/2O9Hx0v/+kyv+p/9a6N7CFBsPr4unqt/KWfj/zUz/5py7pNlsPIb1goeXOa/iP7YMAN0mhaWhAaBGsfHwonnOuT3N7MY8hX/Iu9255jNZL3h4mfGqfp4HA0Cp228EldAAMEmx8fB680RkTQ7DP+yd0m63x1kveHip9oIMDwaAiU5f/Zf8CSEYAKoUGw+vP09EvprT8A8e34164SDWCx5e4l7w7X0wAJQ7hf+4Px0sCf1eQLHx8Pr0PM/bW1VvzWn4B1cP/EOr1Xok6wUPL3VePTQAVLod9BceAMqRrxJEsfHwtvtPVZ+f1/APnyooImtYL3h4qfKCAaDaMc/9PxoPnSNI+OPhDcdbpKrfz3H4b3mo6n+OjY0tYr3g4aXCq0c6hi80AJQIfzy84XrNZvMgM7snz+EfGgI+32g0yqwXPLyRe9HO3gsNAIQ/Hl4MnoicnPfwDw0BP5qZmf4H1gseXga8foOfYuPhRfNEmvuIuOvyHv4h74+NxuwRrBc8vOx4FAcPLybPuebzCxL+f1PVv4m4W0VEWS94eIQ/Hl6hveXLj9xBVX9ShPAPPBFZr6rHsF7w8Ah/PLxCe57nPcHMNhch/EP//82e572E9YKHR/jj4RXaM7NPFSj8wwcHvmMsdJog6wUPj/DHwyuU55zbT0TWFyn8Q49PTk1NlVgveHiEPx5eIT0ze38Bwz/4JuBrjUajzHrBwxtd+Ec++49i4+EN15ufn99LRO4uWviHhoDvTE9PT7Je8PAS94JL/0e+SFCNYuPhDdczs3cWMfzDFwx6ylNW78R6wcNLNPxLkQaA0P2E6xQbD2+43tzc3C5mdlsRw/++uwm6X87MTB/AesHDSyT8g/v9dB4A/CdX/U//dYqNhzd8z8zeWNTwD3m/bTRmDmK94OHFGv5l/26/Ex0v/e8/ueJ/+q+F7i1MsfHwhui1Wq0dReSOAod/8LjMueberBc8vFi8iv/YMgB0mxSWhgaAGsXGw4vHU9X3Fzn8A09Efjs/P78X6wUPb6he1c/zYAAodfuNoBIaACYpNh5enDcKcoeqyr1FDv/7jgmIPgSw/vDwunpBhgcDwESnr/5L/oQQDABVio2HF7+nqmcWPfxDj8s8z9ub9YKHN5AXfHsfDADlTuE/7k8HS0K/F1BsPLwEvGaz8QTC/36PXzcajd1YL3h4fXv10ABQ6XbQX3gAKEe+ShDFxsMbimdm3yT87/f4hYjsxHrBw+vLCwaAasc89/9oPHSOIOGPh5ewp6orCf8HPC70PO9BrBc8vJ69eqRj+EIDQInwx8MbmbfIzH5H+D/gioHfF3E11gseXk9etLP3QgMA4Y+HN0JPVV9B+G9zCDiv2ZzZjfWChzdkr9/gp9h4eMP1/MsD30P4P9ATkS85N7sT6wUPLx6P4uDhjdgzs88Q/tv2ROTDrBc8PMIfDy+XnogcRfh39F7PesHDI/zx8HLpicglhP/2PVV9HusFD4/wx8PLnaeqryT8t++JyCZVnWO94OER/nh4ufJarda+ZraZ8N++JyJ3i8gRrBc8PMIfDy9Xnqr+iPDv/DcicoOZPZT1gofXs7mI4uDhpdRTlZcT/pEevwlfMpj1h4fXOfj96/5EvkhQjWLj4SXrNRqz/6CqGwj/aFcLbDQaZdYfHl7X8C9FGgBC9xOuU2w8vOQ9Vf024R/58VnWHx5ex/AP7vfTeQDwn1z1P/3XKTYeXvKemT2T8O/Fkzex/vDwtpnnZf9uvxMdL/3vP7nif/qvhe4tTLHx8BL0RGQnM9tA+Ef2Nqvq01l/eHj38yr+Y8sA0G1SWBoaAGoUGw9vNJ6qfp/w7+Vywe5Oz/OWsf7w8JYv9r/JXxoaAErdfiOohAaASYqNhzc6z8xeRfj35onIHxuNxm6sP7yCe0GGBwPARKev/kv+hBAMAFWKjYc3Ws/zvEcQ/n15F6xdu3aC9YdXUC/49j4YAMqdwn/cnw6WhH4voNh4eCnwROQPhH/vnqqexvrDK6hXDw0AlW4H/YUHgHLkqwRRbDy82D1VfR/h37d3HOsPr4BeMABUO+a5/0fjoXMECX88vBR5ZtYg/Pu+XPDdzrlHsf7wCubVIx3DFxoASoQ/Hl76vOnp6ckHng5I+Ef9WxH5w8zMzM6sP7wCedHO3gsNAIQ/Hl5KPTO7kPAfyDtnYWFhMesPD+/+QF/BT7Hx8JLzVPVkwn9g7w2sPzy8Ifyj2Hh4yXlmNkf4D+aJuI3ONYX1h4dH+OPhZcYTae7vX+qW8B/Mu77ZbBzI+sPDozh4eJnxRNxvCP/BPVU9//jjn1Vi/eER/hQHDy8TnqqeTvgPx1PVBdYfHuFPcfDwMuGJuBcQ/sPxRGST53lPZv3hEf4UBw8v9Z6qPI7wH54nIn9utVo7sv7wihb+kc/+o9h4eOnwGo1G+YEXBCL8B/FU9QusP7wCecGl/yNfJKhGsfHw0uGJyCWE/3A9z/OezfrDK0j4lyINAKH7CdcpNh5eOjwz+yzhP3TvThE5kPWHl/PwD+7303kA8J9c9T/91yk2Hl46PDN7FeE/fE9VL56amiqx/vByGv5l/26/Ex0v/e8/ueJ/+q+F7i1MsfHwRuyJyCzhH4+nqm9g/eHl0Kv4jy0DQLdJYWloAKhRbLw0emb2b2vXrp0oUv1EZB/COh5PVe91rnkU+w0vR17Vz/NgACh1+42gEhoAJik2XorD8GNm9t1tncqV4/otMrN1hH88noj7zfT0it3Zb3g58IIMDwaAiU5f/Zf8CSEYAKoUGy/Nnud5z/ab96/N7KFFqZ+ZXUZYx+qdxn7Dy7gXfHsfDADlTuE/7k8HS0K/F1BsvFR7nucdHLqoyzWe5x1chPqZ2TmEdXyeiNukqk9mv+Fl2KuHBoBKt4P+wgNAOfJVgig23ujD8KZQM79OxD0+7/Uzsw8S1rF7v5uamqqw3/Ay6gUDQLVjnvt/NB46R5Dwx8tSGH59q99wb2w2G/+Y5/rddyogYR2np6rvYL/hZdSrRzqGLzQAlAh/vAyG4au3buYi7kZVWZbX+pnZMYR1IvcK2Cgij2W/4WXQi3b2XmgAIPzxMueJyNS2mrmIXN5oNHbLY/2cay4nrJPxROSXRTvVFK9AXr/BT7Hx0uCtWLF8N1XdsJ1mftH09PRk3urXbDYOI6yT81T1dew3PG4RTLHxUuip6uUdvsb974WFhcX5qt+KvQnr5DwRWe+cezj7DY/wp9h4KfNU9Vtdmvmb8lY/M72HsE7UO5/9hkf4U2y8lHmq+t4uzXuzqlqe6qeq1xLWiXv/zH7DI/wpNl66wvC5EX7HvdXMHpaX+onIJYR14t6N09Mr92P/4hH+FBsvPWF4VMQG/tPgiO6s109Vv09Yj8Q7g/2LR/hTbLyUePPz87v30MhPykP9zOy/COuReJuda06zf/GyHP6Rz/6j2HhZ8ETkrxGP6N4o4lZm/fWa2ccJ69F4qvorz9MJ9i9eBr3g0v+RLxJUo9h4afdU9Sc93PL197Oz03tl/PV+mLAenaeqL2T/4mUw/EuRBoDQ/YTrFBsv7V60r8Tv18xPyfLrVdUPENYj9W6emZnZmf2Ll6HwD+7303kA8J9c9T/91yk2Xto9VT29t69x5V7Ps8My/HpPI6xH66nqB9i/eBkJ/7J/t9+Jjpf+959c8T/910L3FqbYeKn1zOydfTTzC8bGxhZl8fWq6qmE9Wg9/2ZBy9i/eCn3Kv5jywDQbVJYGhoAahQbL+3efXcF7K2Zi8izMvp630VYj95T1e+zf/FS7FX9PA8GgFK33wgqoQFgkmLjZcFT1ef02cyvWrNmzdKsvV4zexthnZp7Baxh/+Kl0AsyPBgAJjp99V/yJ4RgAKhSbLyseCIyP0Az//esvV4zezNhnQ5PVa8I3zKY/YuXAi/49j4YAMqdwn/cnw6WhH4voNh4mfFUdWqAZn5bo9HYLWOv9y2Edaq8l7J/8VLk1UMDQKXbQX/hAaAc+SpBFBsvJV6r1XrkIM1cVd+TpddrZu8lrFPl3ex5tjP7Fy8lXjAAVDvmuf9H46FzBAl/vMx5Iu7wQZq5iNztnNszO69XTies0+WJyGnsX7yUePVIx/CFBoAS4Y+XVU/E/eOgzVxVT87O65UvEdap8+5xrnk4+xcvBV60s/dCAwDhj5dZr9GYPXIIzfxOEdk9C6/XOXcOYZ0+T0TOYv/iZcbrN/gpNl6aPOeaTx7S17gnZ+H1isgFhHX6PBG3ScQdzv7Fy5pHcfAy66nK8iE181ucm90z/a9Xf0ZYp9MTka+yf/EIfzy8hDznmkcPq5k713xx2l+viPsNYZ1eT0SOYP/iEf54eAl4nmf/OMT7vV+a9tcrIjcQ1qn2vsv+xSP88fAS8MxsxZDv974yra93bq5VMbPNhHXqvRXsXzzCHw8vZk9Vjx1yMz8zra/XObcf4Zp+T0R+yP7FI/zx8GL2VPVlQ27m98zMzOycxtfbarWeRFhnxlvB/sVLW/hHPvuPYuNlwVPVt8fQzE9M4+v1PK9NuGbmRkHfZ//ipcgLLv0f+SJBNYqNl3ZPVc+IoZn/Io2v18xeSrhmx1PVKfYvXkrCvxRpAAjdT7hOsfHS7qnqt+Jo5iJyWNper5m9i3DNjqeq32P/4qUg/IP7/XQeAPwnV/1P/3WKjZd2T0T+X0zN/M1pe70i8jnCNVuec26G/Ys3wvAv+3f7neh46X//yRX/038tdG9hio2XWs/MboqjmYvI5Wl7vap6MeGaOe/b7F+8EXkV/7FlAOg2KSwNDQA1io2XZs85t2eczVxEHpui17vIzO4kXLN4oyD3T+xfvIS9qp/nwQBQ6vYbQSU0AExSbLy0e57nrYq5mb8tRd90PJRwzaanqmexf/ES9IIMDwaAiU5f/Zf8CSEYAKoUGy8L3raPih9eMxeRS9Lyes1MCdfMehucc/uxf/ES8IJv74MBoNwp/Mf96WBJ6PcCio2XCU9VT4+7mTvXPDwlw86rCdfseqp6GvsXLwGvHhoAKt0O+gsPAOXIVwmi2Hgp8MzswribuZm+Jg2v18w+Sbhm2rtLVXdl/+LF7AUDQLVjnvt/NB46R5Dwx8uSt0hE7oj/AC75vykZdn5KuGbbU9XXsX/xYvbqkY7hCw0AJcIfL2ue53mPSKiZr1u+fKo6yte7sLCw2MzuIlyz7anqtWvXrp1g/+LF6EU7ey80ABD+eJnzzOzEpJr5qG8RbGaHE6758ETkGexfvJF7/QY/xcZLgyciX0uwmb9tlK9XVf+VcM2NdxH7F49bBOPh9ektX37kDqp6S4LN/KJRvl7n3BcJ1/x4rVbrSfQDPMIfD68PT1WOSrKZi8jGdrtdG9XrFXFXE665ukvgF+gHeIQ/Hl4fnoj8xwgO4Fo5ovA/lHDNnbfBObcv/QCP8MfD69ETkXOSbuaq+oZRvF5VOYFwzZ8nIm+lH+AR/nh4PXiNxsyDzXTdCJr5uaN4var6UcI1l941s7Mrd6Yf4BH+eHgRPVV57oia+W1jY2OLkn+9+ivCNa93CZRj6Qd4SYZ/5LP/KDZeGj0z++9RNXMROTDhYedAM9tMuObTE5Hv0A/wEvKCS/9HvkhQjWLjpcl7ylNW72Rm94zw6O1jkny9IrKWcM2vJyKbzOyh9AO8BMK/FGkACN1PuE6x8dLkicizRtzM35nk6zWzrxOuub9L4FvoB3gxh39wv5/OA4D/5Kr/6b9OsfHS5JnZN0bczM9L6vWuWbNmqYjcTbjm3rtqYWFhMf0AL6bwL/t3+53oeOl//8kV/9N/LXRvYYqNN3LPObenqt472lO33A0JDjtKuBbDE5FZ+gFeDF7Ff2wZALpNCktDA0CNYuOlxTOz16ehmU9Pr9w/iderqh8mXAtzl8DP0w/whuxV/TwPBoBSt98IKqEBYJJi46XFm5qaKpnZ1Wlo5s41mwnUb5GIXEO4FsZb12q1dqQf4A3JCzI8GAAmOn31X/InhGAAqFJsvDR5ZrY6RaduvTTu1ysijyVci+Wp6vPpB3hD8IJv74MBoNwp/Mf96WBJ6PcCio2XKk9EzktRMz817terqicTrsXyVPUn9AO8IXj10ABQ6XbQX3gAKEe+ShDFxkvIU9VD0tTMVfVrcb7edrs9bmbXEa6F9B5GP8Ab0AsGgGrHPPf/aDx0jiDhj5c6T1U/kKZmLiKXxvl6RcQRhsX0VPV19AO8Ab16pGP4QgNAifDHS6Pned7e3a/8l3gzXze21T0Bhlk/ETmLMCymJyKX0g/wBvSinb0XGgAIf7xUeqr6njQ2c+fcnnG83lartWPngYdwzbvXbDb+iX6AF7vXb/BTbLwkPDPbo/OV8EbXzD3Pe1wc9VPV5xGGxfZE5FT6AV6SHsXBS51nZu9KazMXkfk46mdm/0MYFt778/LlR+5AP8Aj/PEK6anqrmZ2Z4qb+YnDrl+z2TyIMMTz7xL4RPoBHuGPV0hPVd+R8mb+tmHXb9vHOxCGRfRU9e30AzzCH69wnnNuPzNbl/KLtpw+zPq12+0dROR2whDPf/yOfoBH+OMVzjOzz6a9mYvIfw+zfqr6CsIQb6s1dhj9AI/wxyuMp6qPN7PNaW/mwWVbh1E//0ZHVxKGeFutsTfQX/CGHf6Rz/6j2HhJe2b2gyw0cxG5fFj18zzvaYQh3jYeP6e/4A3RCy79H/kiQTWKjZdg+K/OUDO/cVj1M7OLCEO87Vxwaj/6C96Qwr8UaQAI3U+4TrHxkvCmpqYqqnpFVpq5iFs/pPD/J8IQr8NPTS+kv+ANIfyD+/10HgD8J1f9T/91io2XhGdmJ2Wtma9YsXyPQetnZl8mDPE6DABn01/wBgz/sn+334mOl/73n1zxP/3XQvcWpth4sXme5x0sIuuz1sxnZqYPGKR+Iu5wEbeJMMTr8LhramqqQn/B69Or+I8tA0C3SWFpaACoUWy8uD1V/V4Wm7mIe/gg9XPOnU0Y4kV4NOgveH14VT/PgwGg1O03gkpoAJik2HgJhP8zs3u5Vndw/+HfPJowxIv4M8D76S94PXpBhgcDwESnr/5L/oQQDABVio0XtyciO4nIDVlt5q1W65H91k9VzycM8aINAPIH+gteD17w7X0wAJQ7hf+4Px0sCf1eQLHxYvdE5IwsN3NVfUw/9RNxRhji9XaLYPdI+gteRK8eGgAq3Q76Cw8A5chXCaLYeIMd/e5lvZl7nve4furnnLuIMMTrzZMX0V/wInrBAFDtmOf+H42HzhEk/PFi95xzu6jKdVlv5qr6+F7rJ+KeRhji9eo5575If8GL6NUjHcMXGgBKhD9eUp6InJmHZi4iR/RSv+XLj9zROXcJYYjX+wGncj39BS+iF+3svdAAQPjjJeKpytPy0sy7HQOwdf1U5UWEIV6/XtS7A9Kv8KICfQU/xcbr75N/c38Rd0OOmvnhUes3Pb1yf1X9C2GI16+nqi+mv+DF4VEcvNg9VT07ZzdqeXjU+qnqxwlDvAG9r9Bf8Ah/vAyGv7wkh838oVHq51xzuYhsIgzxBjzm5Ab6Cx7hj5cpT8Q9TlXvzlszbzQau3Wrn0hjR1W9mDDEG5L3MPoLHuGPl5FP/s1dVfUXeWzma9asWdqtfqr6AsILb4jeP9Nf8Ah/vEx4IvKenDbzDd3q12jM7mFmtxBeeEP0Pkp/wSP88VLvOec8Ebcpj808+D22U/3M7OOEF96QvV/TX/AGCf/IZ/9RbLx+vWazcaCIuyGvzVxELu1UP8/zVpnZZsILb8jeZhHZiX6F10/w+9f9iXyRoBrFxuv9k//sTqp6fs6b+fnbq1+r1drRzK4ivPDi8DzPWzXqfuCcexT9L3PhX4o0AITuJ1yn2Hi9eqr6lvzfolXP2l79zOwzhBdeXJ6q/vuo+4GqPlNEHkv/y0z4B/f76TwA+E+u+p/+6xQbrxfPOScibmPem7mIvGdb9fM8r0144cU8fH511P1gfn5+LxH5ZbvdXkL/S334l/27/U50vPS//+SK/+m/Frq3MMXG6+rNzEwfIOKuLUYzl1duXb/5+fm9zOxmwgsv3uHTXZmGfiAil5rZSfS/VHsV/7FlAOg2KSwNDQA1io0X7ZP/7E6qel5RmrlzzdVb18/Mvkl44SW0/h466n5gZh81sw2e5z2afppKr+rneTAAlLr9RlAJDQCTFBsvqiciby1SM282G4eH66eqzyO88JLyRNzcqPuBmR3vnxHzSzO3M/00VV6Q4cEAMNHpq/+SPyEEA0CVYuP1EP6tIl3rXlXvPv74Z5VCjfBhZnYn4YWXlKeqrxp1P1DVQ+773ydvop+mxgu+vQ8GgHKn8B/3p4Mlod8LKDZeJG92dvoQM7upYM33J0FNpqamKmb2U8ILL2Hvk6PuB56nE2a6zv9GYp1zzcPpp6nw6qEBoNLtoL/wAFCOfJUgil14z8ztrKo/KmDz/WDoU9DphBfeCLyfpaEfqOr/3vezhJxDP02FFwwA1Y557v/ReOgcQcIfL7JnZqcWsfmq6rFjY2NjIvJcwgtvFJ6I3L2wsLB41P1AVc/c6n/favrpyL16pGP4QgNAifDH68XzPO+pBW6++3ie9zgzu4fwwhuVJyIHjrof/P3g3/v977uq3W7X6Kcj9aKdvRcaAAh/vMieqjxCRO4oaPP9+dzc3C5mdiXhhTdKT0TmR38AsFu7jQsVnUw/zYDXb/BT7OJ6q1evrpvZr4vafFX1DSLybcILb9Seqr529B8G9Mnb+N91b7PZPIh+mh2P4uBF8szszAI33w0i8gnCCy8Nnoh8YtT9oNVq7bud/31fp58S/ng58jzPe0nBf3O9JtotfgkvvES8H4y6v/inwW73roX0U8IfLwdeq9V6kqreS/PFw0uHp6rXpqG/iMjt2/nf97/tdnucfkr442XYm5+f393Mrqb54uGly1PV6qj7i6pe0eF/41r6KeGPl1Gv3W6Pi8h5NF88vFR6h4+6v6jqxR2OU7jBTHegnxL+eBn0VPWtNF88vHR6IrJ61P3FzM7v8r/xrfTT9IR/5LP/KHbhw9+iHfRGM8fDG4Wnqq8ZdX8xs290eb23T0+v3J/+PHIvuPR/5IsE1Sh2MT0ze6iI/JXmi4eXau+0UfcXETkrwut9L/155OFfijQAhO4nXKfYxfMajUbZzH5G88XDS7cnIl8adX8xs890e70i7u65ubl96M8jC//gfj+dBwD/yVX/03+dYhfPM7MP0nzx8DLh/XjU/UVVPx3x9b6f/jyS8C/7d/ud6Hjpf//JFf/Tfy10b2GKXZzwfzrNFw8vG56Iu3LU/cXMPhnl9YrIeufcfvTnRL2K/9gyAHSbFJaGBoAaxS6O53newb3d5Idmjoc3Sk9E1o+NjS0aZX9R1TN6eL3vpz8n5lX9PA8GgFK33wgqoQFgkmIXx1uzZs1SM/sVzRcPL1uequ46yv5iZp/t4fWuM7M96M+xe0GGBwPARKev/kv+hBAMAFWKXSzPzD5O88XDy56nqoeMsr+o6ld7fL1voz/H6gXf3gcDQLlT+I/708GS0O8FFLtY4X8czRcPL7O3qD5ylP3FOXdOj6/3tna7vQP9OTavHhoAKt0O+gsPAOXIVwmi2LnwROTA6L/703zx8NLmqercKPuLc+57fbze/6A/x+YFA0C1Y577fzQeOkeQ8C+Q1263l0Q/35/mi4eXUu+EUfYXEbm4j9d749TUVIX+HItXj3QMX2gAKBH+xfNU9VSaLx5e5r1Xj7K/qOrl/bxOz/OeTX+Oxav1crnfccK/eJ6ZKc0XDy8X3jtH2V/+fse/vl7vL+jPI/T6DX6KnW3P87y9zewmmi8eXi68D46yv4jI+n5fr3NO6M+j9yhOcbxFZnYuzRcPLzfep0bVX1qt1o4D3svg6/Rnwh8vIU9VX0zzxcPLlfeVUfUX59zDB3m9Im5jozF7KP2Z8MeL2fM87xH+lbhovnh4+fHOHVV/MbMVg75eVX0n/Znwx4vR80/5+znNEg8vX56q/miE1xF5xqCvV0Sun5qaKtHvCX+8mDxVfTvNEg8vl94vRngq8WuGdDnjOfo94Y8XgyciR4nIJpolHl7+PFW9bFT9xcw+MqTLGZ9Nv08m/COf/Uexc/HJv6qqV9As8fBy610xqv5iZt8dxusVkY2e5+1Nv4/VCy79H/kiQTWKnW3PzE6hWeLh5dr74wj7y++H+Hr/g34fa/iXIg0AofsJ1yl2psP/idv/6p/mi4eXB0/EXTmK/rJ27doJM9swrNerqlfQ72ML/+B+P50HAP/JVf/Tf51iZ9NrNBplM/s1zRIPL9+eiLt6FP3KzA4d9usVkSPo90MP/7J/t9+Jjpf+959c8T/910L3FqbYGfNU9a00Szy8/Hsics0o+pXnee0YXu8p9PuhehX/sWUA6DYpLA0NADWKnT3P87xHb/urOZolHl7ePFW9dhT9SlXfMOzXKyLXLCwsLKbfD8Wr+nkeDAClbr8RVEIDwCTFzp63sLCwWFUvplni4RXGu3IU/UpEzorj9arq0fT7gb0gw4MBYKLTV/8lf0IIBoAqxc6mp6ovpFni4RXHE5HLR9GvROTymK5r8HH6/UBe8O19MACUO4X/uD8dLAn9XkCxM+jNz8/vLiJ/pVni4RXHE5FLk+5X7XZ7BzPbHNPr/cvs7Mqd6fd9e/XQAFDpdtBfeAAoR75KEMVOnWdmn6JZ4vXwe+snROS/qV/mvZ8n3a88z1sZ7+sVR7/v2wsGgGrHPPf/aDx0jiDhn1HP87wn0yzxevyq9e1jY2OLVPWVZrqB+mXWuzDpfiUir4331EY5jX7ft1ePdAxfaAAoEf7Z9aampkoicgnNEq/Hx0nB+nOuOa2qV1G/THo/SLpficjXY369l9Hv+/ZqvVzud5zwz7anqi+jWeL18Q3AQnj9Odd8qKpeSP2y5anqt5LuVyLuhrhfr+d5B9PvY/T6DX6KnR5PRHYys1tolnh9DABv3Hr9ibiamX2D+mXKOzPJfuVc89FJvF5VfSX9PhmP4mTUU9WTaZZ4/Xgi8rptrb+pqanSAw8opX5p9VT1w0n2K1V5QRKvV1W/T78n/PG286/Vau1vZvfQLPH68cz0NR3W36L7hkvql3LvnUn2KxH5bBKvV1XvnZ6enqTfE/542/76//M0S7wB7iL3b93Wn6q+g/ql/myO1ybZr8zs6qRer4g4+j3hj/fAxvwEM91Ms8Tr13POnRjxxlIfpn6p9l6UVL9yrnlowq/33fR7wh9vK09Vf0CzxBvQ+5co621hYWGxmZ1J/VJ7NsczkupXZnZikq9XRH5Jvyf88UKeiJujWeINwXtq1HW3du3aCTP7JvVLnycimlS/UtWzE369m+fn53cnP4YX/pHP/qPY6fSccz+hWeIN6onIbC/rb35+blJELqZ+aTubwz0hofCvmtm6ERzjcAz5MRQvuPR/5IsE1Sh26sLfo1niDcPzPO8Jva+/5iEich31S483Pb1y/yT6lZm1RvR630t+DCX8S5EGgND9hOsUO12eiPyIZok3DC/qlda2cR74SjO9h/dj9J6IW59Uv1LV00f0ei8iPwYO/+B+P50HAP/JVf/Tf51ip8dzrik0S7whensMcCrYv1C/VHhXJdGv2u32uIjcMJorVsq9zs3uSX70Hf5l/26/Ex0v/e8/ueJ/+q+F7i1MsVPgicgFNEu8YXlTU1OVQdazmb2X92O0nohcnES/8jxv1Shfr3PNJvnRl1fxH1sGgG6TwtLQAFCj2GkJfzdLs8QbonfPoOt5amqqpKrf5/0YnaeqZybRr0TkY6N9vbJAfvTsVf08DwaAUrffCCqhAWCSYqfHc86dTbPEG+IV1q4fxnpW1YeIyF95P0bjqepb4u5X/imgt4zy9arq18mPnrwgw4MBYKLTV/8lf0IIBoAqxU6Pp+oOE5FNNEu8IXqXDWs9q+oxvB8j806Iu1+pqo369YrIH8mPyF7w7X0wAJQ7hf+4Px0sCf1eQFinyFPVd9Ms8YbpqeqPhrmeVfUM3o+RnMp5dNz9ysz+Kw2vt91u70B+RPLqoQGg0u2gv/AAUI58lSCKnYg3Pb3qQdG+YqVZ4vV0C9kvDHM9t9vtmqpewfuRrOec2y/OfjU/P7+7qt6bkmHnyeRHJC8YAKod89z/o/HQOYKEf8o8VX0+zRIvBu+UYa9nz/OeYGYbeD+S8URk/cLCwuI4+5WZ/VuK6nci+RHJq0c6hi80AJQI/3R6InIpzRIvhsurvjyO9WxmJ/N+JOOJyCVx96tt95/RvF5VPZ38iOTVernc7zjhn04v+rm3NEu8nh9PjWM9z85O7yHi/sT7Eb+nqp+Ps195nnd0yup3EfkxRK/f4KfYyXgichbNEi8Or9XyjozxctVzvB/xe6r62jj71QMP/hv5672V/IjHozgp89rt9g693XmLZokX/dFozB4a53oWkTN5P2L3WnH1K+fcfiKyMYX124P8IPxz76nqc2iWePHcP95tUm3uGud6FpHdzewm3o/4vLm5uQPi6ldm9s6Unr1yJPlB+Ofei36JVZolXs/3j78uoQNYn8X7EZt319jY2KI4+lWr1dpRRG5PY/08z3s2+UH459pzzu1nZptplnjx3EJWLkhoPS8yswt5P4bviciP4+pXqvraFJ+98nbyg/DPtaeqr6NZ4sXofTSp9dxqtZ7E+zF8T1XfE0e/WrNmzVIzuzHF9fsi+UH459ozs8tolnjx3VhFXpHwej6T92Pon4SPjaNfmdnL0lw/Vf0J+TFY+Ec++4+wTt7zPO9xNEu8mG8hO53k/vB/0lrH+zE8b25u7oBh96vVq1fXVfWmNNdPVa8hP/r2gkv/R75IUI1iJ+uZ2UmEF16c3vz8/F5J7w9VfSvvx3A8EflLHP1KVd+cgQNYN87OrtyZ/Ogr/EuRBoDQ/YTrhHWynpn9nPDCi/H+8beOYn94nvcgEbme92MoX4OfM+x+JdLcX1Vvz0L9ZmenH0F+9Bz+wf1+Og8A/pOr/qf/OmGdnCci+xBeeHF6Wx89nuT+UNUX834M5WvwNw+7X4nIB7JSPxG3kvzoKfzL/t1+Jzpe+t9/csX/9F8L3VuYYifgmdlawgsvZu9Do9ofs7MzS1X1Gt6PwTznmo1h9qtGY/YIVd2Qofo9hfyI7FX8x5YBoNuksDQ0ANQI6+Q8M/s64YUXs3f8KPeHiHsF78dA3t3N5sxuw+xXqnpeluonIs8lPyJ5VT/PgwGg1O03gkpoAJgkrJPzpqamKmZ2F+GFF6fned7Bo9wfzebMbiLuat6P/jzn3PeGHP5Pz1r9VPU15EekY/gmQwPARKev/kv+hBAMAFXCOllPRBzhhRezd/PYVpePHcX+EJGX8H7068mbhnfXxuY+qnpVBuv3TvKj69l7tdAAUO4U/uP+dLAk9HsBYZ38AVKn0dzwYva+kYb9cdxxx5ZF5I+8H6M9AE5EPpzF+qnq6eRHR68eGgAq3Q76Cw8A5chXCaLYw74C188JL7yY76f+urTsDxF5Lu9vr1dw1NuPPnpqyXDC382KuE1ZrJ+IfJX86OgFA0C1Y577fzQeOkeQ8B+Bt3r16rqI20h44cXpqerKtOyPRqNRvv91AXh/u3ki8oVhvB+zs9N7qeplGa7f+eRHR68e6Ri+0ABQIvxH56mqR3jhxezdo6rVNO0PM3s9729PF3F65jDeD1X9eMbrdyH50dGr9XK533HCf7SeiLyN8MKL2Tsnbftjbm5ul/uf+cL72+HUt41zc3O7DH4Apnt6Dur3K/JjCF6/wU+xh+s5575HeOHF6anqi9O4P1T1A7y/ka7g+MNB349mc/ZgEflL1uunqleQH9wiOBfe7OzKnUXcHYQXXpze3NzcAWncH2b2MBHZxPvb1Xv1IO/H9PTKXVX1J3mon4hcQ34Q/rnwGo3ZI2lueDF7v0vz/jCzr/D+dvaccw8f5P0Y7Hf/dNVPRP5KfhD+ufBU5WWEF16cnqqemub9ISJH8f529H41YPj/a87qdyf5QfjnwlPVDxJeeHF6qjqV9v0hIpfy/ur23r/X9vt+eJ5nZrYhZ/W7k/wg/HPhmdn5hBdejN6fli07bDwDp8K+hve3+/EbvbwfZvak7mdZZLJ+d5IfhH8uPBG5gfDCi9F7Sxb2R6Mxs5+qruP9fcDjoj7D/+H9H/Gf7vqJuDvJj/7DP/LZf4R1vJ5/HjThhReb12jMPiYr+0NVz+T9fcDX/y/v9f1oNpuHmNnVea3fVgMAedRD8PvX/Yl8kaAaYR2fp6pHEl548X1SkouztD9E3Azv7/3ev00isk9vxxTJI1T12jzXT8TdQX70Ff6lSANA6H7CdcI6Ps/M1hJeePF58vKs7Q8RuYT3d8vjm7197a+P7O3+Cpmt3y3kR8/hH9zvp/MA4D+56n/6rxPW8XmqeirhhRfT16S3ijT3ydr+8DzvJby/W74BmO/haP+VIvLXgtwV8Rryo6fwL/t3+53oeOl//8kV/9N/LXRvYYodg2dm5xJeePF8TSqnZnF/mNkeIrKR8Jfrp6amSlHqJyL/rKr3Fmh//I78iOxV/MeWAaDbpLA0NADUCOv4PDP7PeGFF8NvpOudax6S1f0RbTDO/b0b3tGtfrOzq3ZS1bcW8MZIvyQ/InlVP8+DAaDU7TeCSmgAmCSs4/VE5G7CC2/Ynoh8LuPfjP1z0d9fETmwU/1U5UAz+35Bb4z0Y/Ij0jF8k6EBYKLTV/8lf0IIBoAqYR2v1263dyC88GLwNjebjSdkeX94nvegIg/Hqvq9LmdLzPV3/ZB81C9cH/Jou2fv1UIDQLlT+I/708GS0O8FhHXMnqoeQnjhxXCA1Fl52B8iclZR31/P87xt1a/ZnH2IiHyK/WFfIY86evXQAFDpdtBfeAAoR75KEMUeyPM872jCC2/I3joR2T8P+8PMWkV8f0Xk8oWFhcVb10/EPVNVr2d/2N/M7KPkUUcvGACqHfPc/6Px0DmChH9CnqoeS3jhDdPb+sCxLO+Pdru9xMxuKeD7e2K4fqqyUlV/yP64308AbyePOnr1SMfwhQaAEuGfrKeqLye88Ibo3dRoNOp52m+q+umC3bXx1tWrV9f/fm+E2SNU9Wvsj20+XkUedfRqvVzud5zwT94zs3cRXnhD9E7I234TkXaR3l9VfbeItETkO6q6mf2x3ccJ5NEQvH6Dn2IP7pnZZwkvvCF55+Rxv6m6vVT1nuLcu8HdyHqONCjNkUfcIjjjzU2/y2bHG4J3W6vV2jev+01Vv816wdvqQMkjyCPCP9Oeqv4Pmx1vUE9Vn5Pn/SbiXsZ6wdvqNMm9ySPCP+ufbH7GZscb0PtS3vebc82DzGwz6wXPf2xYWFhYTB4R/hn/ZCOXstnxBvB+3W63a0XYb2Z2EesFz39cRX4Q/pn3VPUKNjten95tzWbzoKLsN1VdYL3gBfcBID8I/8x7IvJnNjteHzdC2RRcKrYo+01EjmK94Pnr/wvkx2DhH/nsP8I61q81b2Sz4/Xqichzi7bf1q5dO2Fmd7Je8ETkZPKjby+49H/kiwTVKHY8nojczmbH6/EuaK8p6n5T1W+xXvBU5YXkR9/hX4o0AITuJ1yn2PF4qnovmx2vB++dRd5vqvoK1gueiJslP/oK/+B+P50HAP/JVf/Tf51ix+ItYrPj9eC9qej7TVUfw3rBE3EPIz96Dv+yf7ffiY6X/vefXPE//ddC9xam2EP2op/bTPMosLdZVV/MfhsbW1hYWGxmN7NeCu3dTn707FX8x5YBoNuksDQ0ANQodjyemd3DZsfr4N0jIs9gv91vz3yJ9VJcT1V/Sn705FX9PA8GgFK33wgqoQFgkmLH55nZbWx2vO1c3vdaz/OewH57wJ75N9ZLob2PkR+RvSDDgwFgotNX/yV/QggGgCphHa/X+TRANnuBz/P/8fz8/F7st20eB3Ak66XQ3onkRyQv+PY+GADKncJ/3J8OloR+LyCsY/bM7Co2O17I22xm726320vYH9v+Nz8/N2mmG1gvhf1mbIr8iOTVQwNApdtBf+EBoBz5KkEUeyBv25cCZrMX1LtOVWfYH90959wvWS+FvQjWTuyPSF4wAFQ75rn/R+OhcwQJ/4S8v98MiM1edE9Vv9BoNHZjf0TzVPV01l8hw//P7I/IXj3SMXyhAaBE+Cd+QNNP2ezF9VT1WlWdY3/05qnKC1l/xfNU9cvsj8herZfL/Y4T/sl7ZnYum714nojbZGYfarVaO7I/evcajdnHsf4K6b2K/TFkr9/gp9iDe6r6GTZ70cJfLhaRx7M/+veWLTtsXETuYP0Vy+t2ACD7g1sEZ8pT1fez2Yty+VK5TsS9YNmyw8bZH4N7ZnYR6684nohsnJ6enmR/EP658UTkjWz23HvrROTdqm4v9sfwPBH5BOuvOJ6I/JL9QfjnyjPTf2Wz59r7soh7JPtj+F73OwOy/nLmfYj9QfjnyhNxT2Oz588TkYuda06zP+LzVLXJ+iuO53ne09gfhH+uPFVZwWbPjyfirhVxz1u+/Mgd2R/xes65/Vh/xfGcc3uyPwj/XHnOuX3Z7Nn3RGS9iJy8atWKvdkfiXmLOp8JwHrOiyciv2V/DDf8I5/9R7Fj9RaZ2V1s9ux6qvpdEfdY1vNI7qVxIeu5EN6H2B9D84JL/0e+SFCNYsfnmdmv2OyZ9G4WkeNYz6PzRORzrOf8e6p6DPtjaOFfijQAhO4nXKfY8Xlm9hU2e7Y8Efmqc829Wc+j9VT17aznfHsismlubm4X9sdQwj+430/nAcB/ctX/9F+n2PF5ZvZONntmvHVmtpb1nA5PVV/Ies79sP1j9sdQwr/s3+13ouOl//0nV/xP/7XQvYUpdgyema1ls2fC+51z7lGs51TdS0NZz7k/xmaB/TGwV/EfWwaAbpPC0tAAUKPY8XlmtoLNnnrv/7ZarR1Zz+nyzPRRrOd8e6oyxf4YyKv6eR4MAKVuvxFUQgPAJMWO1xORfdjsqfbObDQaZdZz+jznGvuynnN9XY0bQtfUYH/07gUZHgwAE52++i/5E0IwAFQpdjKemd1I80jlAUgfGxsbW8R6Tq+nqreznvPpOec+y/7o2wu+vQ8GgHKn8B/3p4Mlod8LKHZyRzN/i+aRvk/+CwsLi1nPqb+c9m9Zz/n0ROQY9kffXj00AFS6HfQXHgDKka8SRLGH4pnZm2keqfLOWbt27QTrOf2eiPsx6zmP4e/umJ5esTv7o28vGACqHfPc/6Px0DmChH/CnojM0zxS4/1JRHZiPWfDU9VvsJ7z54nIl9gfA3n1SMfwhQaAEuE/Gk9E9qd5pOI3//UicgTrOTuemX2G9Zw/z7nmM9kfA3nRzt4LDQCE/wg9Vb2J5jFy79Ws52x5ZvZ+1nO+PBF39/T0qgexPxLw+g1+ij1cT0S+Q/MYqfeb4447tsx6zty9NN7Mes6ddxb7I3mP4ozQE5E30zxG6s2ynrPnqeorWM/58jzPE/YH4V8oz0ynaR4j877Jes7svTROYD3nyrtxamqqxP4g/AvlHX301BIRuYPmkbznXNOxnrPpicgzWM/58VT1fewPwr+oBzR9k+aR9LXG9Resv+x6qnos6zk/nud5T2B/EP6F9Hr7PZPmMRxP1rL+suuZ2dNZz7nxfs3+IPyLfEDTY2geyXkibt2qVSv2Zv1l11PVY1jP+fBU9WXsj2TCP/LZfxQ7OW9hYWGxmd1M80jMO5v1l23PzJ7Kes6Fd8/c3Nwu7I/YveDS/5EvElSj2In+pvl5mkdSlxt1z2P9ZdvzPK/Nes6+JyKfYz0nEv6lSANA6H7CdYqd6G+aT6V5JBL+m5xr7Mv6y7anqk9hPWffE5HlrOfYwz+430/nAcB/ctX/9F+n2Ml5nuc9yMzuoXnE66nqpay/7Hv3fQPA/shw+P+W9Rx7+Jf9u/1OdLz0v//kiv/pvxa6tzDFTshT1bNpHvF6qvpx1l/2PVV9Lus5256qvpD1HKtX8R9bBoBuk8LS0ABQo9jJep7nPZvmEa+nqs9j/WXfE5H/YD1n1xORv05PT0+ynmPzqn6eBwNAqdtvBJXQADBJsZP3VHVXEdlI84jP8zzv0ay/7Huq+g7Wc6a9d7GeY/OCDA8GgIlOX/2X/AkhGACqFHt0nqpeQPOIz9vepw7WX+buovlB1nM2PRHZ6Jzbj/Ucixd8ex8MAOVO4T/uTwdLQr8XUOwReiLuZTSP2LybWX/58Jxzn2U9Z9b7Eus5Nq8eGgAq3Q76Cw8A5chXCaLYsXnN5uxDVHUdzSMW7xesv3x4qvp11nM2Pc/zHsd6js0LBoBqxzz3/2g8dI4g4Z+e5vZlmkcs3tdZf/nwzOx81nP2PFX9Dus5Vq8e6Ri+0ABQIvzT5YlIk+YRi/d/WH/58ETkD6znTHorWM+xetHO3gsNAIR/yjz/3gBX0TyGft7x21l/2ffa7fa4mW1gf2TOu5D1nBKv3+Cn2IndIvgtNI/heqq6wPrLvtdqtfZnPWfPU9U51jO3CMaL4InIgTSPoXuvYv1l3/M872jWc7Y8Efl/Y2Nji1jPhD9eRE9EzqN5DNU7kfWXfe/+V8xkf2TEU9Yz4Y/Xg2dmSvMYnqeqz2H9Zd8zs5NYz9nxROTHrGfCH693b5GZ/Y5mNDTvBNZf9j0zO5P1nClvlvVM+OP14anqv9KMhua9gPWXi2/Gfs96zoanqhewngl/vD696enpSTO7hWY0FO9lrL9se3Nzc7uwnrPjibiVrOf0hH/ks/8odqruEvgOmtHgnqq+jfWXbU9Vm6znrIS//BfrOTVecOn/yBcJqlHsdHiNxuxDzHQDzWhg76Osv2x7qrrAes7EJ//1qvIo1nNqwr8UaQAI3U+4TrHT44nIp2lGA3tfY/1l2zOzb7Ce0++JyAdZz6kJ/+B+P50HAP/JVf/Tf51ip8dzrnm4qtxLMxrI+znrL9uemd3Iek57+Ltbp6dX7s96TkX4l/27/U50vPS//+SK/+m/Frq3MMVOiaeqZ9CM+vdE3K2sv0yH/6Gs5yx48irWcyq8iv/YMgB0mxSWhgaAGsVOl+dc86Gqei/NaCBvD9ZfNj0z+3fWc+q9X83OrtyZ9Txyr+rneTAAlLr9RlAJDQCTFDudnpl9iGbUv6eqTdZfNj0R+THrOd2ec80G63nkXpDhwQAw0emr/5I/IQQDQJVip9drtVr7ish6mlHf3utZf9nzzGwPEdnEek6vJyJnsZ5H7gXf3gcDQLlT+I/708GS0O8FFDvlnqq+j2bUt3cu6y97nud5J7CeU+3d3mjMPIz1PHKvHhoAKt0O+gsPAOXIVwmi2CP1VHVXEfkrzagv7652u72E9Zctzzl3Nus5zQfYyktZz6nwggGg2jHP/T8aD50jSPhnyDOzl9KM+vM8zzua9Zcdb2Zm1T6qejfrOZ2eqv7PsmWHjbOeU+HVIx3DFxoASoR/9ry1a9dOiMhvaUZ9ee9n/WXHU5VXsp5Te2rteueah7KeU+NFO3svNAAQ/hn1PM8TmlHvnqpeOzY2toj1lw1PVX/Lek6np6pvZD1n0Os3+Cl26o6OPodm1Jc3zfrLQviLsp5T6/2q2/E0rGduEYwXo+dc81BuFNS7p6pfYP2l31PVr7KeU/nJ/17P8x7Neib8KfaIPRF5D82t5wHgXjN7MOsvvZ5zzUPMdAPrOZXe61nPhD/FToHn3OyeIu73NLeeh4D3sP7S64nIKaznVHoXTU1NlVjPhD/FTomnKkJz69m7vdGY2Y/1lz5vdnb6EBG5m/WcOm+dqh7Ceib8KXbKPBH5GM2tZ+801l/6PFX9JGGdSu9FrGfCn2Kn0Gu1Wjuq6rU0t568dSKyP+svPZ6IPPrv1/0nrFN2I62vsZ6zHf6Rz/6j2Nn0VPUpNLeevf9i/aXHM7NzCevUeVfPzc3twnrOrBdc+j/yRYJqFDubnpmdSXPrzVNVY/2N3lPVGcI6XZ6IbBKR5aznTId/KdIAELqfcJ1iZ9NrtVo7mtmfaG7RPVW9NsonHNZffJ6/bq8krFPnncR6znT4B/f76TwA+E+u+p/+6xQ7u56qHikiG2lu0T1V/TLrb3SeiJxFWKfum7HvLCwsLGY9Zzb8y/7dfic6Xvrff3LF//RfC91bmGJn1FPV/6S59ey9lPWXvOd53rNZf+nyROTPqror6zmzXsV/bBkAuk0KS0MDQI1iZ9trt9vjZvY/NLeevA1b/97J+ovXazabB5nZnay/VIX/ehE5gvWcWa/q53kwAJS6/UZQCQ0AkxQ7H56qHqCqt9PcejJucc49nPUXv9dut5eY2U9Zf6nzXsB6zqwXZHgwAEx0+uq/5E8IwQBQpdj58lTleJpbz48rG43Zh7D+Yg3/cTP7IusvdQfEns56zqwXfHsfDADlTuE/7k8HS0K/F1DsHHqqehrNrbeHiPu9c81DWH+xeIvM7OOsv3R5IvLDKLf4ZT2n1quHBoBKt4P+wgNAOfJVgih2Bq+tvmonVf0uzbJn74pGY/Yw1t9wPVU9lfWXOu/K+fn53VnPmfaCAaDaMc/9PxoPnSNI+Ofcm5ub26Xz9QFoltvyRNy1nuctY/0NLfwXWH+p8+4UkWWs58x79UjH8IUGgBLhX6jm+xgzW0ez7Nm7zfM8Yf0N5pnZ6wnr1H3tv0lE5lnPufCinb0XGgAI/4J5qvpMmmVfp0ZtUtXXjo2NLWL99eaparX3C/2w/pLwPM97Ceu5YF6/wU+x8+Gp6jtoln1755rZHqy/aF6r1drfzH5BWKfPU9VT6afF9ihOMb1FIvI5mmXf3o1m9lTWX9fL+y43s5tYL6n0vtTtMr+sZ8KfYufU8y/Ccj7Nsn9PVb/carX2Zf3d32u320tU9XVmtoH1kj5PRH44NTVVoZ8S/hSnwF6r1dpRRC6lWQ7k3Wlmr12xYvlurL8tt/T9HeslteH/y1artSP9j/CnOHhjIrK/qlxHsxzYu0bEnTg7u3LnIq6/RmP2Ib1f2Y+wTjj8L3fO7Un/I/wpDl74csFHibg7aJaDe6r6R1V9QaPRKBdh/am6vczs1SJyB+sl1d7VrVZrf/of4U9x8B7gOddsqOpdNMvheCJyvZmdJCL75HG9NJuzy1T1/ap6K+sl9Z/8/+J53iPof8UO/8hn/1HsYnpmtqq3CwXRfCN4G8zs62a2envXWc/SelGVlqp+S8Rt4v3NhHezc+5R9L9Ce8Gl/yNfJKhGsYvpmVlDRNbTfGPxblHVM8xMg6Ow075eli07bFxVjlSV/xRxv+H9zVb4e573aPpf4cO/FGkACN1PuE6xi+t5nuep6r003/g8EbnbzM5V1deoylHOze6UprNDzOypInKGql7P+5tJ7xZVfQz9r/DhH9zvp/MA4D+56n/6r1PsYnsiskZENtJ8k/FE5DZVPU9V32Zmq0XkwHa7PR73epmbm9tFVY8Ukeea2Ski8sP73nfeX8Kffprh8C/7d/ud6Hjpf//JFf/Tfy10b2GKXWDP87z29r8JoPkm4N2jqv+rql8zs/eq6stF5BlmNu2ce9Tc3NwB8/Pzu69evbo+Pb1yV+dmd5qeXrF7ozH7D6ruMM/zlrVarSeJyKyIrDGz41X15ar6YTO7wL+iIe9Hvg74u6Hbnf3of4XwKv5jywDQbVJYGhoAahQbb2xsbExVm/7X1TRfPLx0e1d5nncw/a/wXtXP82AAKHX7jaASGgAmKTbeVj8HHGVmt9F88fBSe2OfKzjPHy+U4cEAMNHpq/+SPyEEA0CVYuNt+5sAeZyq3kTzxcNL3df+l3ietzf9qvBe8O19MACUO4X/uD8dLAn9XkCx8bbrOdd8vKpeQ/PFw0uNd4GI7ES/wvMfwQBQ6XbQX3gAKEe+ShDFLrTXaMweJuJ+Q/PFwxv9LX27XXKa/lcoLxgAqh3z3P+j8dA5goQ/XmTvKU9ZvZOIfJtmjoc3st/837ewsLCYfoW3lTUZ9YI/4/4xAIQ/Xs/e1NRUycw+RDPHw0vOE5FNqvpK+hXeNrxoZ++FBgDCH28gzz83fRPNHA8vdu9OM2vRr/AG8voNfoqNt61/ZtbymxPNHA8vHu+qbjf1oV/hxfqPYuNt759z7lEi8geaOR7e0L2L5ufn96Jf4RH+eKn1RGQnVT2bZo6HN7Tf/D8R3DmSfoVH+OOl3Vukqq8XcZto5nh4/Xkisl5Vn09/wSP88TLnicicqv6FZo6H17N3tZk9kf6CR/jjZdYTcYeKyMWEAx5eNE9Vv2dme9Bf8Ah/vMx7xx13bFlV3xrtVEHCAa+YnohsVNU3dLu4D/0Fb4BMX0Rx8EbiqeqRIvJHwgEP7wHe1Z7nPZn+gheTF1z6P/JFgmoUG2/YXqPRqKvqpwkHPLwtX/mfraq70l/wYgz/UqQBIHQ/4TrFxovLU9VjzOwWwgGvwN6dUY/yp7/gDRD+wf1+Og8A/pOr/qf/OsXGi9NrNBoPNrNvEA54RfNE5Mdm9jD6AV7M4V/27/Y70fHS//6TK/6n/1ro3sIUGy9Wz/O8p4nIDYQDXt49Vb1XVV/XbrfH6Qd4MXsV/7FlAOg2KSwNDQA1io2XlNdozDxERD5N2ODl2PupiCyjH+Al4FX9PA8GgFK33wgqoQFgkmLjjcJTFVXVKwgbvLx4Iu5uM3t1r5/66Qd4fXpBhgcDwESnr/5L/oQQDABVio03Sm/58qmqmZ1kZusIG7wse6r6AxF3MP0ALyEv+PY+GADKncJ/3J8OloR+L6DYeKnwWq3W/mb2RcIGL2ueiLtRVV6wbNlh4/QDvAS9emgAqHQ76C88AJQjXyWIYuMl6Hme92Qz+zlhg5d2T8RtVNWPONfYl/2LNwIvGACqHfPc/6Px0DmChD9ear2FhYXFZnaCiFxP2OCl1LtQVY5i/+KN0KtHOoYvNACUCH+8rHj+lQTfIiJ3EF54KfH+rConLF9+5I7sX7wRe9HO3gsNAIQ/Xua8RmN2D1V9n6quI7zwRuGp6u2qsrBixfI92L94mfL6DX6KjZcmz7nmIar6ERG3nvDCS8LzL+bz0ZmZ6QPYv3hZ9ygOXuY9EdlfRD5mZhsIL7w4PBHZKCJnqLrD2L94hD/FxkuZ5586+F4zu5PwwhuSt9nMzjSzh7Pf8Ah/io2Xcm9mZmZnVX3tts8aIAzxon3iV9XPt1qtR7Lf8Ah/io2XMW9qaqpiZmvN7DLCEC9i8K83s48Gd+tjv+ER/hQbL8PewsLCYs/zPFU9R8RtIgzxthH8t6vqqY1G48HsNzzCn2Lj5dATcY8UkXeLuBsIQzxVvcLzvJc0Go06+wMvz+Ef+ew/io2Xd8/M7ex53lNF5Dz/QC/CtUCeqn7PzFoLCwuL2R94OfeCS/9HvkhQjWLjFcUTkQPN7KTotyImXDPq3Whm72o2mwexP/AKFP6lSANA6H7CdYqNV0TP87wnqOpp2z+DgHDNmLdZRM5T1WPa7fYS9gdewcI/uN9P5wHAf3LV//Rfp9h4Rfba7fa4qs6o6hlmdhvhmjnvV2b26lartS/rGa+g4V/27/Y70fHS//6TK/6n/1ro3sIUG6/w3txcqyLi5lT1I6p6FeGaWu9KM3uXiCxjPeMV3Kv4jy0DQLdJYWloAKhRbDy8bXvNZuNJqvp6M7uQAwhH7l2uqu/2PDuC9YyHt3yx/03+0tAAUOr2G0ElNABMUmw8vGiec25PMzvezD4pIn8mrOP1RNxG59xPROQkkeYTWc94ePfzggwPBoCJTl/9l/wJIRgAqhQbD69/b25u7gAzO8HMPiMi1xD+Q/GuVtWPO9d8ZrM5+xDWHx7eNr3g2/tgACh3Cv9xfzpYEvq9gGLj4Q3RazabB3med4Kqnq6qP1eVewn/ro8/mdmn/EHqYaw/PLxIXj00AFS6HfQXHgDKka8SRLHx8Pr2pqdX7O5c82hVfZGqniEil4jIpgKH/11m9gMzO8XMnu6c24/1gofXlxcMANWOee7/0XjoHEHCHw9vRJ5/06LDVfUYVV0wszNF5Jdmti5P4e//JHKumZ2iqv/SarUe2W63x1kveHhD8eqRjuELDQAlwh8PL53ewsLC4rm5uQNUtamqz1fVd6nq51X1ByLyBzO9J4Xhf5OIXOyc+6Kqvsv/+eNIEdmJ9xcPL1Yv2tl7oQGA8MfDy6i3bNlh4/Pz87uLyGNFZNbMnq6qL1TV15nZu0XkEyLyVTO7wMx+LiKXisjlZnalql4v4m4WcXeo6j0ibpOZbRCRu83sNhH5i5ld559b/ysR+aGZfUNVP29mHzKzN5vZi0Rkjao+WVWWzc5O78X7i4eXcq/f4KfYeHh4eHh4+fAoDh4eHh4eHuFPcfDw8PDw8Ah/io2Hh4eHh0f4U2w8PDw8PDzCHw8PDw8PD4/wx8PDw8PDw0tj+Ec++49i4+Hh4eHh5cILLv0f+SJBNYqNh4eHh4eX+fAvRRoAQvcTrlNsPDw8PDy8TId/cL+fzgOA/+Sq/+m/TrHx8PDw8PAyG/5l/26/Ex0v/e8/ueJ/+q+F7i1MsfHw8PDw8LLlVfzHlgGg26SwNDQA1Cg2Hh4eHh5e5ryqn+fBAFDq9htBJTQATFJsPDw8PDy8zHlBhgcDwESnr/5L/oQQDABVio2Hh4eHh5c5L/j2PhgAyp3Cf9yfDpaEfi+g2Hh4eHh4eNnz6qEBoNLtoL/wAFCOfJUgio2Hh4eHh5c2LxgAqh3z3P+j8dA5goQ/Hh4eHh5edr16pGP4QgNAifDHw8PDw8PLvBft7L3QAED44+Hh4eHhFcXrN/gpNh4eHh4eXj48ioOHh4eHh0f4Uxw8PDw8PDzC//7/8fA9AupDuFwwHh4eHh4eXoJeP//x8D0CakO4XDAeHh4eHh5egl4///Fq6PrCk0O4XDAeHh4eHh5egl6v//FFoXsELA3dXGARHh4eHh4eXja8wOzlP14O3SOgMuDlgvHw8PDw8PBG441HvUjQotA9AoLHxID/cTw8PDw8PLzkvVKkASD05InQozSE/zgeHh4eHh7eaLxIA8D41o+xAf7h4eHh4eHhpcJb1G1aWBx6LBrwP46Hh4eHh4eXEu//A0RU8eDbfiSuAAAAAElFTkSuQmCC",
              fileName=
                  "modelica://VirtualWaterLab/../../../../../es.aau.dk/Users/jvl/Documents/Dymola/Icons/fire.png")}),
          Diagram(coordinateSystem(preserveAspectRatio=false)),
                  Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));

    end Consumer_Heat;

    model Fan
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Ellipse(extent={{-100,100},{100,-100}}, lineColor={28,108,200}),
              Bitmap(
              extent={{-84,-76},{78,86}},
              imageSource=
                  "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",
              fileName=
                  "modelica://VirtualWaterLab/../../../../../es.aau.dk/Users/jvl/Documents/Dymola/Icons/fan.png")}),
          Diagram(coordinateSystem(preserveAspectRatio=false)));

    end Fan;

    model Pipe_Junction
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(
              extent={{-100,48},{0,-52}},
              lineColor={0,0,0},
              lineThickness=1,
              fillColor={215,215,215},
              fillPattern=FillPattern.HorizontalCylinder),
              Rectangle(
              extent={{0,32},{100,-34}},
              lineColor={0,0,0},
              lineThickness=1,
              fillColor={215,215,215},
              fillPattern=FillPattern.HorizontalCylinder)}), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Pipe_Junction;
  end Icons;

  package Functions


    function h_T
      input SI.Temperature T;
      output SI.SpecificEnthalpy h;
    algorithm
      h := VirtualWaterLab.Cp*(T - VirtualWaterLab.T0);
    end h_T;

    function T_h
      output SI.Temperature T;
      input SI.SpecificEnthalpy h;

    algorithm
        T := VirtualWaterLab.T0 + h/VirtualWaterLab.Cp;

    end T_h;

  end Functions;

  package Interfaces
    extends Modelica.Icons.InterfacesPackage;

    connector Port

     SI.Pressure p "Pressure at the connector";
     flow SI.MassFlowRate m_flow(nominal = 1e2) "Mass flow of fluid";
     stream SI.SpecificEnthalpy h_outflow(nominal = 1e5) "Enthalpy of fluid";

      annotation (Icon(coordinateSystem(preserveAspectRatio=false)),
                                  Diagram(coordinateSystem(preserveAspectRatio=false)));

    end Port;

    connector Port_a
      extends VirtualWaterLab.Interfaces.Port;
      annotation (Icon(graphics={Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={0,0,0},
              fillColor={28,108,200},
              fillPattern=FillPattern.Solid,
              lineThickness=0.5)}));
    end Port_a;

    connector Port_b
      extends VirtualWaterLab.Interfaces.Port;
      annotation (Icon(graphics={Ellipse(
              extent={{-100,100},{100,-100}},
              lineColor={0,0,0},
              lineThickness=0.5,
              fillColor={85,170,255},
              fillPattern=FillPattern.Solid)}));
    end Port_b;

    partial model PartialTwoPort
      Port_a port_a    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
      Port_b port_b    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end PartialTwoPort;

    partial model PartialTwoPort_Heat
      extends VirtualWaterLab.Interfaces.PartialTwoPort;
      Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heatport_a
        annotation (Placement(transformation(extent={{-10,-60},{10,-40}}),
            iconTransformation(extent={{-10,-60},{10,-40}})));
       annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end PartialTwoPort_Heat;
  end Interfaces;

  package Components
    package Sources
    extends Modelica.Icons.SourcesPackage;

      model Source_pT
          extends VirtualWaterLab.Icons.Boundary annotation (Icon(
              coordinateVirtualWaterLab(Interfaces(             Port_bSystem(                                     preserveAspectRatio=false)))),
                                                                                                                                               Diagram(
              coordinateSystem(preserveAspectRatio=false)));

        //Parameters
        parameter SI.Pressure p = VirtualWaterLab.p_ambient;
        parameter SI.Temperature T= VirtualWaterLab.T_ambient;

        Interfaces.Port_b port_b annotation (Placement(transformation(extent={{90,-10},
                  {110,10}}),iconTransformation(extent={{90,-10},{110,10}})));

      equation
        port_b.p = p;
        port_b.h_outflow = VirtualWaterLab.Functions.h_T(T);

        annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                Text(
                extent={{-26,24},{24,-16}},
                lineColor={0,0,0},
                textString="p")}),                                     Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Source_pT;

      model Source_qT
        extends VirtualWaterLab.Icons.Boundary annotation (Icon(
              coordinateVirtualWaterLab(Interfaces(             Port_bSystem(                                     preserveAspectRatio=false)))),
                                                                                                                                               Diagram(
              coordinateSystem(preserveAspectRatio=false)));

        //Parameters
        parameter SI.MassFlowRate m_flow = 0.5;
        parameter SI.Temperature T = VirtualWaterLab.T_ambient;

        Interfaces.Port_b port_b annotation (Placement(transformation(extent={{90,-10},
                  {110,10}}),iconTransformation(extent={{90,-10},{110,10}})));

      equation
        port_b.m_flow = - m_flow;
        port_b.h_outflow = VirtualWaterLab.Functions.h_T(T);

        annotation (Icon(graphics={Text(
                extent={{-26,24},{24,-16}},
                lineColor={0,0,0},
                textString="q")}));
      end Source_qT;

      model Sink_pT
        extends VirtualWaterLab.Icons.Boundary
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        //Parameters
        parameter SI.Pressure p = VirtualWaterLab.p_ambient;
        parameter SI.Temperature T = VirtualWaterLab.T_ambient;

        Interfaces.Port_a port_a annotation (Placement(transformation(extent={{-110,-10},
                  {-90,10}}), iconTransformation(extent={{-110,-10},{-90,10}})));

      equation
          port_a.p = p;
          port_a.h_outflow = VirtualWaterLab.Functions.h_T(T);

        annotation (Icon(graphics={Text(
                extent={{-26,24},{24,-16}},
                lineColor={0,0,0},
                textString="p")}));
      end Sink_pT;

      model Sink_qT
          extends VirtualWaterLab.Icons.Boundary
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        //Parameters
        parameter SI.MassFlowRate m_flow = 0.5;
        parameter SI.Temperature T = VirtualWaterLab.T_ambient;

        Interfaces.Port_a port_a annotation (Placement(transformation(extent={{-110,-10},
                  {-90,10}}), iconTransformation(extent={{-110,-10},{-90,10}})));

      equation
          port_a.m_flow = m_flow;
          port_a.h_outflow = VirtualWaterLab.Functions.h_T(T);
        annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                Text(
                extent={{-26,24},{24,-16}},
                lineColor={0,0,0},
                textString="q")}),                                     Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Sink_qT;
    end Sources;

    package Pipes
      model Pipe
        extends VirtualWaterLab.Icons.Pipe;
        extends VirtualWaterLab.Interfaces.PartialTwoPort;
        import Modelica.Math;

        //Geometry
        parameter SI.Length length "Pipe length "
        annotation(Dialog(group="Geometry"));
        parameter SI.Length diameter "Pipe diameter"
        annotation(Dialog(group="Geometry"));
        parameter SI.Area crossArea= pi*diameter*diameter/4 "Inner cross section area"
        annotation(Dialog(group="Geometry"));
        parameter SI.Length perimeter= pi*diameter "Inner perimeter"
        annotation(Dialog(group="Geometry"));
        parameter SI.Height roughness= 2.5e-5    "Average height of surface asperities (default: smooth steel pipe)"
        annotation(Dialog(group="Geometry"));
        parameter Real k_m= 0    "Form-loss coefficient"
        annotation(Dialog(group="Geometry"));
        final parameter SI.Volume V= crossArea*length "volume size"
        annotation(Dialog(group="Geometry"));
        parameter SI.Temperature T= 25+273.15 "Nominal water temperature";

        //Static Head
        parameter SI.Length height_ab=0  "Height(port_b) - Height(port_a)"
        annotation(Dialog(group="Static Head"));

        //Variables
        Real f "Wall Friction factor";
        SI.Pressure h_f "Head loss due to wall friction";
        SI.Pressure h_m "Head loss due to form resistance";
        SI.Pressure dp "Differential pressure across the pipe";
        SI.VolumeFlowRate V_flow = port_a.m_flow/rho "volumetric flow";

      initial equation

        //port_a.m_flow = 0.001;

      equation
        //Head loss due to heigth between port a and b
        assert(length >= height_ab, "Parameter length must be greater or equal height_ab.");

        //Wall friction calculated based on Darcy-Weisbach equations.
        f =VirtualWaterLab.Components.Pipes.BaseClasses.WallFriction(
          diameter,
          V_flow,
          T,
          roughness);
        h_f =  (8*f*length*V_flow*abs(V_flow))/(pi^2*g*diameter^5);
        h_m = (8*k_m*V_flow*abs(V_flow))/(pi^2*g*diameter^4);
        dp = port_a.p - port_b.p;

        //Complete pipe model
        length*rho*der(V_flow)/crossArea = dp - h_f*g*rho - h_m*g*rho - height_ab*g*rho;

        // Mass balance
        0 = port_a.m_flow + port_b.m_flow;

        //No energy loss
        actualStream(port_b.h_outflow)*port_b.m_flow
        + actualStream(port_a.h_outflow)*port_a.m_flow = 0;

        port_a.h_outflow = port_b.h_outflow;

        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Pipe;
    extends Modelica.Icons.VariantsPackage;

      model Pipe_Heat

        extends VirtualWaterLab.Icons.Pipe;
        extends VirtualWaterLab.Interfaces.PartialTwoPort_Heat;
        import Modelica.Math;

        //Geometry
        parameter SI.Length length "Pipe length "
        annotation(Dialog(group="Geometry"));
        parameter SI.Length diameter "Pipe diameter"
        annotation(Dialog(group="Geometry"));
        parameter SI.Area crossArea= pi*diameter*diameter/4 "Inner cross section area"
        annotation(Dialog(group="Geometry"));
        parameter SI.Length perimeter= pi*diameter "Inner perimeter"
        annotation(Dialog(group="Geometry"));
        parameter SI.Height roughness= 0.05e-3    "Average height of surface asperities (default: PVC pipe)"
        annotation(Dialog(group="Geometry"));
        parameter Real k_m= 0    "Form-loss coefficient"
        annotation(Dialog(group="Geometry"));
        final parameter SI.Volume V = crossArea*length "volume size"
        annotation(Dialog(group="Geometry"));
        //Static Head
        parameter SI.Length height_ab=0  "Height(port_b) - Height(port_a)"
        annotation(Dialog(group="Static Head"));
        //Initialisation.
        parameter SI.Temperature T_start = SI.Conversions.from_degC(20) "Start water temperature";
        final parameter SI.Energy U_start = SI.Conversions.to_degC(T_start) * Cp * rho * V;

        //Variables
        Real f "Wall friction calculated based on Darcy-Weisbach equation";
        SI.Pressure h_f "Head loss due to wall friction";
        SI.Pressure h_m "Head loss due to form resistance";
        SI.Pressure dp "Differential pressure across the pipe";
        SI.VolumeFlowRate V_flow( start = 1e-3)
                                "(start = 1e-3, fixed = true, nominal = 1e-3, stateSelect=StateSelect.always) volumetric flow";
        SI.Temperature T(start = T_start, fixed = true, nominal = 1e2, stateSelect=StateSelect.always);

      initial equation
       // port_a.m_flow = 0.001;

      equation
        //HYDRAULIC
        //Head loss due to heigth between port a and b
        assert(length >= height_ab, "Parameter length must be greater or equal height_ab.");

        V_flow = port_a.m_flow/rho;
        dp = port_a.p - port_b.p;
        //WallFriction
        f =VirtualWaterLab.Components.Pipes.BaseClasses.WallFriction(diameter,V_flow,T,roughness);
        h_f = (8*f*length*V_flow*abs(V_flow))/(pi^2*g*diameter^5) "Revisar unit transformation to p_si";
        h_m = (8*k_m*V_flow*abs(V_flow))/(pi^2*g*diameter^4);

        length*rho*der(V_flow)/(crossArea) = dp - h_f*g*rho - h_m*g*rho - height_ab*g*rho;

        // Mass balance:
        0 = port_a.m_flow + port_b.m_flow;

        //THERMAL
        SI.Conversions.to_degC(T)*Cp*rho*V =V*rho*port_b.h_outflow;
        heatport_a.T = VirtualWaterLab.Functions.T_h(port_a.h_outflow);

        //Energy balance:
        Cp*rho*V*der(T) = actualStream(port_b.h_outflow)*port_b.m_flow +
        actualStream(port_a.h_outflow)*port_a.m_flow + heatport_a.Q_flow;

        port_a.h_outflow = port_b.h_outflow;

        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Pipe_Heat;

      model Pipe_OC
        extends VirtualWaterLab.Icons.Pipe_OC;
        extends VirtualWaterLab.Interfaces.PartialTwoPort;

        //Parameters
        parameter Real K_n= 1 "Parameter for SI Manning's eq";
        parameter Real n=0.013 "Manning's friction coefficient";
        parameter SI.Length diameter "Pipe diameter";
        parameter SI.Length length = 100 "Pipe length";
        parameter SI.Height height = 1 "Pipe height";

        parameter SI.Pressure p_ambient = 101325 "Channel slope";
        parameter Real slope = height/length "Pipe/channel slope S";


        //Variables  parameter Real S "Channel slope";

        SI.Area A_wet(min=0) "Cross sectional wet area of the pipe";
        SI.Length P_wet(min=0) "Wetted perimeter";
        SI.Length R_h(min=0) "Wetted perimeter";
        SI.Angle theta(min=0) "Wet section angle";
        Real WaterLevel "Water Level in %";

      initial equation
      //  theta = pi/2;

      equation
        assert(theta <= pi, "Maximum water level in the pipe, Mass Flow="+ String(port_a.m_flow));

        A_wet = (1/8)*(2*theta -sin(2*theta))*diameter^2;
        P_wet =theta*diameter;
        R_h = A_wet/P_wet "Hydraulic radius";

        WaterLevel = A_wet/((1/8)*(2*pi -sin(2*pi))*diameter^2)*100;

         //Manning's equation
         port_a.m_flow/rho = A_wet*(K_n/n)*(R_h)^(2/3)*slope^(1/2);

        //No pressure difference
          0 = port_a.p - port_b.p;
        //Mass balance in steady state
          port_a.m_flow + port_b.m_flow = 0;
        //No energy loss
        actualStream(port_b.h_outflow)*port_b.m_flow +
        actualStream(port_a.h_outflow)*port_a.m_flow = 0;
        port_a.h_outflow = port_b.h_outflow;

        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Pipe_OC;

      model Pipe_Junction
        //This model represents an abrupt contraction.

        extends VirtualWaterLab.Icons.Pipe_Junction;
        extends VirtualWaterLab.Interfaces.PartialTwoPort;
        import Modelica.Math;

        //Geometry
        parameter Real n "Number of fittings per unit"
         annotation(Dialog(group="Geometry"));
        parameter SI.Length diameter1 "Pipe diameter "
        annotation(Dialog(group="Geometry"));
        parameter SI.Length diameter2 "Pipe diameter small"
        annotation(Dialog(group="Geometry"));
         parameter Real k_fe = 1    "Friction coefficient for abrupt expansion"
        annotation(Dialog(group="Geometry"));
         parameter Real k_fc = 0.5    "Friction coefficient for abrupt contraction"
        annotation(Dialog(group="Geometry"));

         parameter SI.Temperature T= 25+273.15 "Nominal water temperature";


        //Variables
        SI.Pressure dp "Differential pressure across the pipe";
        SI.VolumeFlowRate V_flow = port_a.m_flow/rho "volumetric flow";

      initial equation

        //port_a.m_flow = 0.001;

      equation

        //Abrupt expansion
        k_fe = 1;
        //Abrupt contraction.
        k_fc = 0.5/(1-(diameter2/diameter1)^(2.35));

        h_junction = (k_fe+k_fc)*(V^2/(2*g));

        dp = h_junction*n/g;
        dp = port_a.p - port_b.p;


        // Mass balance
        0 = port_a.m_flow + port_b.m_flow;

        //No energy loss
        actualStream(port_b.h_outflow)*port_b.m_flow
        + actualStream(port_a.h_outflow)*port_a.m_flow = 0;

        port_a.h_outflow = port_b.h_outflow;

        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Pipe_Junction;

      package BaseClasses
        "Base classes used in the Vessels package (only of interest to build new component models)"
        extends Modelica.Icons.BasesPackage;

        function WallFriction
          /*
  This function calculates the friction factor of a pipe based on the
  Darcy-Weisbach equations.
  Usage:

f = WallFriction(D,Q,T,e)
*/

          import Modelica.Math;

          input SI.Length D "Pipe diameter [m]";
          input SI.VolumeFlowRate V_flow "Volume flow flow [m3/s]";
          input SI.Temperature T "T is the water temperature [degC]";
          input SI.Height e "Roughness height of the pipe material [m]";
          output Real f "friction factor";

        protected
          SI.DynamicViscosity vi; //1.012/10^(-6)
          Real Re "Reinolds number";

        algorithm

          if V_flow<>0 then
          vi :=1.792*10^(-6)*(1 + (T/25)^1.165)^(-1);
          Re :=(4*abs(V_flow))/(pi*vi*D);
          f := 0.0273;
          //f := ((64/Re)^8+9.5*(Math.log(e/(3.7*D)+5.74/(Re^0.9))-(2500/Re)^6)^(-16))^0.125;
         // f :=1.325*(Math.log(e/(3.7*D) + 5.74/Re^0.9))^(-2);
          else
          f := 10^9;
          end if;

        end WallFriction;
      end BaseClasses;

    end Pipes;

    package Valves
    extends Modelica.Icons.VariantsPackage;


      model BasicValve
        extends VirtualWaterLab.Icons.Valve;
        extends VirtualWaterLab.Interfaces.PartialTwoPort;
        import Modelica.Math;

        //Parameters
        parameter Real OD_nominal = 1
           "Nominal Opening Degree"
          annotation(Dialog(group="Nominal"));
        parameter SI.Pressure dp_nominal
           "Nominal pressure drop at nominal Opening Degree"
            annotation(Dialog(group="Nominal"));
        parameter SI.MassFlowRate m_flow_nominal
           "Nominal mass flowrate at nominal Opening Degree"
            annotation(Dialog(group="Nominal"));
        parameter Real opening_min(min=0)=10^(-12) "Remaining opening if closed, causing small leakage flow";

        final parameter Real k = m_flow_nominal^2/(OD_nominal^2 * dp_nominal)  "Hydraulic conductance at nominal Opening Degree";

        //Variables
        SI.Pressure dp;
        Real OD_valve;

        Modelica.Blocks.Interfaces.RealInput OD annotation (Placement(transformation(
                extent={{-52,56},{-12,96}}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={0,100})));

      equation
        //Model Eq. (It uses a linear model when the valve is closed)

        OD_valve = if OD>=opening_min then OD else opening_min;

        //port_a.m_flow/rho = if OD>opening_min then OD*k*sqrt(abs(dp))*sign(dp) else 10^(-16)*sqrt(abs(dp))*sign(dp);
        //port_a.m_flow/rho = if OD>0 then OD*k*sqrt(abs(dp))*sign(dp) else opening_min*k*dp;

        port_a.m_flow = rho*OD_valve*k*sqrt(abs(dp))*sign(dp);
        dp = port_a.p - port_b.p;

        //Conservation of mass
        port_a.m_flow + port_b.m_flow = 0;
        //No energy loss
        actualStream(port_b.h_outflow)*port_b.m_flow +
        actualStream(port_a.h_outflow)*port_a.m_flow = 0;
        port_a.h_outflow = port_b.h_outflow;

        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end BasicValve;

      model Valve
        extends VirtualWaterLab.Icons.Valve;
        extends VirtualWaterLab.Interfaces.PartialTwoPort;
        import Modelica.Math;

      //Parameters
        parameter Real kv = 46 "Hydraulic conductance at nominal opening [m3/h]";
        parameter Real OD_min(min=0)=10^(-12) "Remaining opening if closed, causing small leakage flow";
        final parameter Real kvs = kv*1000/3600 "Valve conductivity Conductivity at [l/s]";

       //Variables
        Real OD_valve;
        SI.Pressure dp;


        Modelica.Blocks.Interfaces.RealInput OD annotation (Placement(transformation(
                extent={{-52,56},{-12,96}}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={0,100})));

      equation
          OD_valve = if OD>=OD_min then OD else OD_min;
          dp = port_a.p - port_b.p;
          port_a.m_flow = OD_valve*kvs*sqrt(abs(dp)/10^5)*sign(dp);
         // port_a.m_flow = OD_valve*kvs*sqrt(abs(dp))*sign(dp);

        //Conservation of mass
        port_a.m_flow + port_b.m_flow = 0;
        //No energy loss
        actualStream(port_b.h_outflow)*port_b.m_flow +
        actualStream(port_a.h_outflow)*port_a.m_flow = 0;
        port_a.h_outflow = port_b.h_outflow;

        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Valve;

      model Valve_2
        extends VirtualWaterLab.Icons.Valve;
        extends VirtualWaterLab.Interfaces.PartialTwoPort;
        import Modelica.Math;


        parameter Real kv = 46 "Hydraulic conductance at nominal opening [m3/h]";
        final parameter Real kvs = kv*1000/3600 "Valve conductivity Conductivity at [l/s]";

        SI.Pressure dp;


        Modelica.Blocks.Interfaces.RealInput OD annotation (Placement(transformation(
                extent={{-52,56},{-12,96}}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={0,100})));

      equation
          dp = port_a.p - port_b.p;
          port_a.m_flow = OD*kvs*sqrt(abs(dp)/10^5)*sign(dp);


        //Conservation of mass
        port_a.m_flow + port_b.m_flow = 0;
        //No energy loss
        actualStream(port_b.h_outflow)*port_b.m_flow +
        actualStream(port_a.h_outflow)*port_a.m_flow = 0;
        port_a.h_outflow = port_b.h_outflow;

        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Valve_2;
    end Valves;

    package Pumps
    extends Modelica.Icons.VariantsPackage;


      model BasicPump
        extends VirtualWaterLab.Icons.Pump;
        extends VirtualWaterLab.Interfaces.PartialTwoPort;
        //Parameters
        parameter Real ah_2 = -0.1830 "Constant q*q";
        parameter Real ah_1 = -0.1804 "Constant omega*q";
        parameter Real ah_0 = 7.0579 "Constant omega*omega";

        //Initial Conditions;
        parameter SI.VolumeFlowRate V_flow_min(displayUnit="m3/h")=0.001;

        //Variables
        SI.Height h_p;
        SI.Pressure dp(start = 0);
        SI.VolumeFlowRate V_flow(displayUnit="m3/h") "volumetric flow";

        Modelica.Blocks.Interfaces.RealInput omega "Normanised 4000rpm  [0,1] "
                                               annotation (Placement(transformation(
                extent={{-88,62},{-48,102}}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={0,100})));



      equation
         V_flow = port_a.m_flow/rho;
         h_p = + ah_2*(3600*V_flow) ^2 + ah_1*(3600*V_flow)*omega + ah_0*omega^2;
         dp = port_a.p - port_b.p;

        0 = dp + h_p*g*rho;


        //Mass balance
        0 = port_a.m_flow + port_b.m_flow;

        //No energy loss
        actualStream(port_b.h_outflow)*port_b.m_flow +
        actualStream(port_a.h_outflow)*port_a.m_flow = 0;
        port_a.h_outflow = port_b.h_outflow;

        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end BasicPump;
    end Pumps;

    package Tanks

    extends Modelica.Icons.VariantsPackage;

      model Tank2inlet
        extends VirtualWaterLab.Icons.Tank;
        import fcn = VirtualWaterLab.Functions;

      //Parameters - Geometry
        parameter SI.Length diameter= 1 "Pipe diameter"
        annotation(Dialog(group="Geometry"));
        parameter SI.Height fluidLevel_max= 2 "Maximum height of the tank"
        annotation(Dialog(group="Geometry"));
        parameter SI.Height fluidLevel_min= 10^(-6) "Maximum height of the tank"
        annotation(Dialog(group="Geometry"));
        parameter SI.Area crossArea= pi*diameter*diameter/4 "Inner cross section area"
        annotation(Dialog(group="Geometry"));
        parameter SI.Length perimeter= pi*diameter "Inner perimeter"
        annotation(Dialog(group="Geometry"));
        parameter SI.Temperature T_ambient = 25+273.15  "Tank surface Temperature"
        annotation(Dialog(tab = "Assumptions", group = "Ambient"));
        parameter SI.AbsolutePressure p_ambient = 101325   "Tank surface pressure"
        annotation(Dialog(tab = "Assumptions", group = "Ambient"));

        //Initial conditions
        parameter SI.Height fluidLevel_nom = 0.5*fluidLevel_max;

        //Variables
        SI.Energy E "Accumulated potential energy";
        SI.Height fluidLevel(start=fluidLevel_nom);
        SI.Pressure dp;

        Interfaces.Port_a port_a1
          annotation (Placement(transformation(extent={{-110,90},{-90,110}})));
        Interfaces.Port_a port_a2
          annotation (Placement(transformation(extent={{-110,-110},{-90,-90}})));
        Interfaces.Port_b port_b
          annotation (Placement(transformation(extent={{90,-110},{110,-90}})));
      equation

        //Check for correct solution
        assert(fluidLevel <= fluidLevel_max, "Vessel is overflowing (fluidLevel > fluidLevel_max = " + String(fluidLevel) + ")");
        assert(fluidLevel > -1e-6*fluidLevel_max, "Fluid level (= " + String(fluidLevel) + ") is below zero meaning that the solution failed.");

        //Differential pressure in the tank
        dp =port_b.p - port_a1.p;
        port_a1.p = p_ambient;
        port_a2.p = port_b.p;
        port_b.p = fluidLevel*g*rho + p_ambient;

        //Mass balance
        crossArea*rho*der(fluidLevel) =port_a1.m_flow + port_a2.m_flow + port_b.m_flow;
         when fluidLevel<0 then
           reinit(fluidLevel, fluidLevel_min);
         end when;

        //Energy balance
        E = g*rho*crossArea*fluidLevel^2 "Potential energy of the tank due to the fluid level";
        der(E) =port_a1.m_flow*actualStream(port_a1.h_outflow) - port_b.m_flow*
          actualStream(port_b.h_outflow);
        port_a1.h_outflow = fcn.h_T(T_ambient)
                                              "INCLUDE HEAT FLOW";
        port_a2.h_outflow = fcn.h_T(T_ambient)
                                              "INCLUDE HEAT FLOW";


        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Tank2inlet;

      model BasicTank
        extends VirtualWaterLab.Icons.Tank;
        import fcn = VirtualWaterLab.Functions;

      //Parameters - Geometry
        parameter SI.Length diameter= 1 "Pipe diameter"
        annotation(Dialog(group="Geometry"));
        parameter SI.Height fluidLevel_max= 2 "Maximum height of the tank"
        annotation(Dialog(group="Geometry"));
        parameter SI.Height fluidLevel_min= 10^(-6) "Maximum height of the tank"
        annotation(Dialog(group="Geometry"));
        parameter SI.Area crossArea= pi*diameter*diameter/4 "Inner cross section area"
        annotation(Dialog(group="Geometry"));
        parameter SI.Length perimeter= pi*diameter "Inner perimeter"
        annotation(Dialog(group="Geometry"));



        //Initial conditions
        parameter SI.Height fluidLevel_nom = 0.5*fluidLevel_max;

        //Variables
        SI.Energy E "Accumulated potential energy";
        SI.Height fluidLevel(start=fluidLevel_nom);
        SI.Pressure dp;

        Interfaces.Port_a port_a
          annotation (Placement(transformation(extent={{-110,90},{-90,110}})));
        Interfaces.Port_b port_b
          annotation (Placement(transformation(extent={{90,-110},{110,-90}})));

      equation

        //Check for correct solution
        assert(fluidLevel <= fluidLevel_max, "Vessel is overflowing (fluidLevel > fluidLevel_max = " + String(fluidLevel) + ")");
        assert(fluidLevel > -1e-6*fluidLevel_max, "Fluid level (= " + String(fluidLevel) + ") is below zero meaning that the solution failed.");

        //Differential pressure in the tank
        dp = port_b.p - port_a.p;
        port_a.p = VirtualWaterLab.p_ambient;
        port_b.p = fluidLevel*g*rho + VirtualWaterLab.p_ambient;

        //Mass balance
        crossArea*rho*der(fluidLevel) = port_a.m_flow + port_b.m_flow;
         when fluidLevel<0 then
           reinit(fluidLevel, fluidLevel_min);
         end when;

        //Energy balance
        E = g*rho*crossArea*fluidLevel^2 "+ 0.5*fluidLevel*port_b.m_flow*abs(port_b.m_flow)/(crossArea*rho)";
        der(E) = port_a.m_flow*actualStream(port_a.h_outflow) - port_b.m_flow*actualStream(port_b.h_outflow);
        port_a.h_outflow = fcn.h_T(VirtualWaterLab.T_ambient);

      end BasicTank;

      model Tank_PAir
        extends VirtualWaterLab.Icons.Tank;
        import fcn = VirtualWaterLab.Functions;

      //Parameters - Geometry
        parameter SI.Length diameter= 1 "Pipe diameter"
        annotation(Dialog(group="Geometry"));
        parameter SI.Height fluidLevel_max= 2 "Maximum height of the tank"
        annotation(Dialog(group="Geometry"));
        parameter SI.Height fluidLevel_min= 10^(-6) "Maximum height of the tank"
        annotation(Dialog(group="Geometry"));

        parameter SI.Area crossArea= pi*diameter*diameter/4 "Inner cross section area"
        annotation(Dialog(group="Geometry"));
        parameter SI.Volume volume = crossArea*fluidLevel_max;
        parameter SI.Length perimeter= pi*diameter "Inner perimeter"
        annotation(Dialog(group="Geometry"));


        //Initial conditions
        parameter SI.Height fluidLevel_nom = 0.5*fluidLevel_max;

        //Variables
        SI.Energy E "Accumulated potential energy";
        SI.Height fluidLevel(start=fluidLevel_nom);
        SI.Pressure dp;
        SI.Pressure p0_tank "Tank air pressure";

        Interfaces.Port_a port_a1
          annotation (Placement(transformation(extent={{-110,90},{-90,110}})));
        Interfaces.Port_a port_a3
          annotation (Placement(transformation(extent={{-110,24},{-90,44}})));
        Interfaces.Port_b port_b
          annotation (Placement(transformation(extent={{90,-110},{110,-90}})));
        Modelica.Blocks.Interfaces.RealInput h0_tank annotation (Placement(
              transformation(extent={{-30,96},{10,136}}), iconTransformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={0,100})));

      initial equation
       // port_a1.m_flow = 0.0001;
        //port_a3.m_flow = 0.0001;


      equation
        //Head pressure due to tank elevation.
        p0_tank = h0_tank*g*rho + VirtualWaterLab.p_ambient;
        //Check for correct solution
        assert(fluidLevel <= fluidLevel_max, "Vessel is overflowing (fluidLevel > fluidLevel_max = " + String(fluidLevel) + ")");
       // assert(port_a1.m_flow < 0, "Inlet flow is below zero meaning that the solution failed.");
       // assert(port_a3.m_flow < 0, "Inlet flow is below zero meaning that the solution failed.");


        //Differential pressure in the tank
        dp =port_b.p - port_a1.p;
        port_a1.p = p0_tank;
        port_a3.p = p0_tank;
        port_b.p = fluidLevel*g*rho + p0_tank;

        //Mass balance
        crossArea*rho*der(fluidLevel) = port_a1.m_flow + port_a3.m_flow  + port_b.m_flow;
         when fluidLevel<0 then
           reinit(fluidLevel, fluidLevel_min);
         end when;

        //Energy balance
        E = g*rho*crossArea*fluidLevel^2 "Potential energy of the tank due to the fluid level";

       der(E) =port_a1.m_flow*actualStream(port_a1.h_outflow)+ port_a3.m_flow*actualStream(port_a3.h_outflow) - port_b.m_flow*
          actualStream(port_b.h_outflow);

        port_a1.h_outflow = fcn.h_T(VirtualWaterLab.T_ambient)
                                              "INCLUDE HEAT FLOW";
        port_a3.h_outflow = fcn.h_T(VirtualWaterLab.T_ambient) "INCLUDE HEAT FLOW";


        annotation(Dialog(group="Geometry"),
                    Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)),
                    Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Tank_PAir;
    end Tanks;

    package Thermal

    extends Modelica.Icons.VariantsPackage;

      model Boiler
        extends VirtualWaterLab.Icons.Boiler;
        extends VirtualWaterLab.Interfaces.PartialTwoPort;




        Pipes.Pipe_Heat pipe_Heat(length=0.05, diameter=0.02)
          annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
        Modelica.Thermal.HeatTransfer.Sources.PrescribedHeatFlow HeatFlow
          annotation (Placement(transformation(
              extent={{-10,-10},{10,10}},
              rotation=0,
              origin={-14,-34})));
        Modelica.Blocks.Interfaces.RealInput T_ref
          annotation (Placement(transformation(extent={{-130,30},{-90,70}})));
        Sensor.Temperature_Sensor temperature_Sensor
          annotation (Placement(transformation(extent={{38,-10},{58,10}})));
        Modelica.Blocks.Continuous.LimPID PI(
          controllerType=Modelica.Blocks.Types.SimpleController.PI,
          initType=Modelica.Blocks.Types.InitPID.InitialOutput,
          Ti=1,
          k=100000,
          yMin=1,
          y_start=50,
          yMax=300000)                   annotation (Placement(transformation(
              extent={{-10,-10},{10,10}},
              rotation=0,
              origin={-62,50})));
      equation

        connect(port_a, pipe_Heat.port_a) annotation (Line(
            points={{-100,0},{-10,0}},
            color={0,0,0},
            thickness=0.5));
        connect(HeatFlow.port, pipe_Heat.heatport_a) annotation (Line(points={{-4,-34},
                {0,-34},{0,-5}},                   color={191,0,0}));
        connect(pipe_Heat.port_b, temperature_Sensor.port_a) annotation (Line(
            points={{10,0},{38,0}},
            color={0,0,0},
            thickness=0.5));
        connect(temperature_Sensor.port_b, port_b) annotation (Line(
            points={{58,0},{100,0}},
            color={0,0,0},
            thickness=0.5));
        connect(T_ref, PI.u_s)
          annotation (Line(points={{-110,50},{-74,50}},   color={0,0,127}));
        connect(PI.y, HeatFlow.Q_flow) annotation (Line(points={{-51,50},{-36,
                50},{-36,-34},{-24,-34}},          color={0,0,127}));
        connect(temperature_Sensor.T, PI.u_m) annotation (Line(points={{48,2.2},
                {48,14},{-62,14},{-62,38}},
                                    color={0,0,127}));
       annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Boiler;

      model Radiator
        extends VirtualWaterLab.Icons.Radiator;
        extends VirtualWaterLab.Interfaces.PartialTwoPort;


        Modelica.Blocks.Interfaces.RealInput fan_speed annotation (Placement(
              transformation(
              extent={{-20,-20},{20,20}},
              rotation=270,
              origin={0,100})));
        Pipes.Pipe_Heat pipe_Heat(length=0.5, diameter=0.03)
          annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
        Cooler_Fan fan
          annotation (Placement(transformation(extent={{-42,-40},{-22,-20}})));
      equation
        connect(pipe_Heat.port_a, port_a) annotation (Line(
            points={{-10,0},{-100,0}},
            color={0,0,0},
            thickness=0.5));
        connect(pipe_Heat.port_b, port_b) annotation (Line(
            points={{10,0},{100,0}},
            color={0,0,0},
            thickness=0.5));
        connect(fan.fan_speed, fan_speed) annotation (Line(points={{-42.6,-30.2},
                {-42.6,65.9},{0,65.9},{0,100}}, color={0,0,127}));
        connect(fan.heatport_b, pipe_Heat.heatport_a) annotation (Line(points={
                {-22,-30},{0,-30},{0,-5}}, color={191,0,0}));
      end Radiator;

      model Cooler_Fan
        extends VirtualWaterLab.Icons.Fan;
        Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b heatport_b
          annotation (Placement(transformation(extent={{90,-10},{110,10}})));
        Modelica.Blocks.Interfaces.RealInput fan_speed
          annotation (Placement(transformation(extent={{-126,-22},{-86,18}})));

        //Parameter
          parameter SI.Temperature T_ambient= 25+273.15;
          parameter Real k_fan= 30 "Gain of the fan";
          parameter Real k_rad= 3000 "Gain of the radiator";

        //Variables
          SI.HeatFlowRate Q_flow "Nominal heat flow with no ventilation";

      equation

        Q_flow = k_rad*(- heatport_b.T + T_ambient);
        heatport_b.Q_flow = -Q_flow*(1 + k_fan*fan_speed)
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Cooler_Fan;
    end Thermal;

    package Sensor
      model Temperature_Sensor

        extends VirtualWaterLab.Interfaces.PartialTwoPort;
        Modelica.Blocks.Interfaces.RealOutput T annotation (Placement(transformation(
                extent={{-10,-10},{10,10}},
              rotation=90,
              origin={0,50}),               iconTransformation(
              extent={{-10,-10},{10,10}},
              rotation=90,
              origin={0,22})));
        SI.Temp_C T_meas;
      equation
        T_meas = SI.Conversions.to_degC(VirtualWaterLab.Functions.T_h(port_b.h_outflow));
        // Mass and energy balance
        port_a.h_outflow = inStream(port_b.h_outflow);
        port_b.h_outflow = inStream(port_a.h_outflow);
        // Mass balance (no storage)
        port_a.m_flow + port_b.m_flow = 0;
        // Impulse balance
        port_a.p = port_b.p;
        // Sensor output
        T = T_meas;
       annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                Rectangle(
                extent={{-100,20},{100,-20}},
                pattern=LinePattern.None,
                fillColor={0,127,0},
                fillPattern=FillPattern.Solid,
                lineColor={0,0,0})}),                                  Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end Temperature_Sensor;
    end Sensor;
  end Components;

  package Units

    model PipeA
      extends VirtualWaterLab.Icons.PipeBlock;

      //Parameters
      parameter SI.Length D = 0.25 "Pipe Diameter A";
      parameter SI.Length L = 5 "Pipe section length A";
      parameter Real n1= 4 "Number of pipe sections 1";
      parameter Real n2= 4 "Number of pipe sections 2";


      Components.Pipes.Pipe_Heat Pipe_Heat21(length=n2*L, diameter=D,
        V_flow(fixed=false))
        annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));

      Components.Pipes.Pipe_Heat Pipe_Heat11(length=n1*L, diameter=D,
        V_flow(fixed=false))
        annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(
        Q_flow=-1800,
        alpha=1,
        T_ref=273.15)
        annotation (Placement(transformation(extent={{-70,20},{-50,40}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow2(
        Q_flow=-1800,
        alpha=1,
        T_ref=273.15)
        annotation (Placement(transformation(extent={{-70,-80},{-50,-60}})));
      Interfaces.Port_a port_a1
        annotation (Placement(transformation(extent={{-110,50},{-90,70}})));
      Interfaces.Port_a port_a2
        annotation (Placement(transformation(extent={{-110,-50},{-90,-30}})));
      Interfaces.Port_b port_b1
        annotation (Placement(transformation(extent={{90,50},{110,70}})));
      Interfaces.Port_b port_b2
        annotation (Placement(transformation(extent={{90,-50},{110,-30}})));
      Components.Valves.BasicValve Sel_Valve1(
        OD_nominal=1,
        m_flow_nominal=1/3.6,
        dp_nominal=100000)
        annotation (Placement(transformation(extent={{20,50},{40,70}})));
      Modelica.Blocks.Sources.Constant OD_Select1(k=1)
        annotation (Placement(transformation(extent={{6,80},{20,94}})));
      Components.Valves.BasicValve Sel_Valve2(
        OD_nominal=1,
        m_flow_nominal=1/3.6,
        dp_nominal=100000)
        annotation (Placement(transformation(extent={{20,-50},{40,-30}})));
      Modelica.Blocks.Sources.Constant OD_Select2(k=1)
        annotation (Placement(transformation(extent={{6,-20},{20,-6}})));
    equation
      connect(port_a1, Pipe_Heat11.port_a) annotation (Line(
          points={{-100,60},{-50,60}},
          color={0,0,0},
          thickness=0.5));
      connect(port_a2, Pipe_Heat21.port_a) annotation (Line(
          points={{-100,-40},{-50,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(fixedHeatFlow2.port, Pipe_Heat21.heatport_a) annotation (Line(
            points={{-50,-70},{-40,-70},{-40,-45}},           color={191,0,0}));
      connect(Pipe_Heat11.heatport_a, fixedHeatFlow1.port) annotation (Line(
            points={{-40,55},{-40,30},{-50,30}},          color={191,0,0}));
      connect(Pipe_Heat11.port_b,Sel_Valve1. port_a) annotation (Line(
          points={{-30,60},{20,60}},
          color={0,0,0},
          thickness=0.5));
      connect(Sel_Valve1.port_b, port_b1) annotation (Line(
          points={{40,60},{100,60}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_Select1.y,Sel_Valve1. OD) annotation (Line(points={{20.7,87},{30.35,
              87},{30.35,70},{30,70}}, color={0,0,127}));
      connect(Pipe_Heat21.port_b, Sel_Valve2.port_a) annotation (Line(
          points={{-30,-40},{20,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(Sel_Valve2.port_b, port_b2) annotation (Line(
          points={{40,-40},{100,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_Select2.y, Sel_Valve2.OD) annotation (Line(points={{20.7,-13},{20.7,
              -14},{30,-14},{30,-30}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Text(
              extent={{-34,70},{20,26}},
              lineColor={0,0,0},
              textString="A")}),
                               Diagram(coordinateSystem(preserveAspectRatio=
                false)));
    end PipeA;

    model PipeC
    extends VirtualWaterLab.Icons.PipeBlock;

      //Parameters
      parameter SI.Length D = 0.15 "Pipe Diameter A";
      parameter SI.Length L = 5 "Pipe section length A";
      parameter Real n1= 4 "Number of pipe sections 1";
      parameter Real n2= 4 "Number of pipe sections 2";


      Components.Pipes.Pipe_Heat Pipe_Heat21(length=n2*L, diameter=D,
        V_flow(fixed=false))
        annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));

      Components.Pipes.Pipe_Heat Pipe_Heat11(length=n1*L, diameter=D,
        V_flow(fixed=false))
        annotation (Placement(transformation(extent={{-50,50},{-30,70}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(
        Q_flow=-1800,
        alpha=1,
        T_ref=273.15)
        annotation (Placement(transformation(extent={{-70,20},{-50,40}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow2(
        Q_flow=-1800,
        alpha=1,
        T_ref=273.15)
        annotation (Placement(transformation(extent={{-70,-80},{-50,-60}})));
      Interfaces.Port_a port_a1
        annotation (Placement(transformation(extent={{-110,50},{-90,70}})));
      Interfaces.Port_a port_a2
        annotation (Placement(transformation(extent={{-110,-50},{-90,-30}})));
      Interfaces.Port_b port_b1
        annotation (Placement(transformation(extent={{90,50},{110,70}})));
      Interfaces.Port_b port_b2
        annotation (Placement(transformation(extent={{90,-50},{110,-30}})));
      Components.Valves.BasicValve Sel_Valve1(
        OD_nominal=1,
        m_flow_nominal=1/3.6,
        dp_nominal=100000)
        annotation (Placement(transformation(extent={{20,50},{40,70}})));
      Modelica.Blocks.Sources.Constant OD_Select1(k=1)
        annotation (Placement(transformation(extent={{6,80},{20,94}})));
      Components.Valves.BasicValve Sel_Valve2(
        OD_nominal=1,
        m_flow_nominal=1/3.6,
        dp_nominal=100000)
        annotation (Placement(transformation(extent={{20,-50},{40,-30}})));
      Modelica.Blocks.Sources.Constant OD_Select2(k=1)
        annotation (Placement(transformation(extent={{6,-20},{20,-6}})));
    equation
      connect(port_a1, Pipe_Heat11.port_a) annotation (Line(
          points={{-100,60},{-50,60}},
          color={0,0,0},
          thickness=0.5));
      connect(port_a2, Pipe_Heat21.port_a) annotation (Line(
          points={{-100,-40},{-50,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(fixedHeatFlow2.port, Pipe_Heat21.heatport_a) annotation (Line(
            points={{-50,-70},{-40,-70},{-40,-45}},           color={191,0,0}));
      connect(Pipe_Heat11.heatport_a, fixedHeatFlow1.port) annotation (Line(
            points={{-40,55},{-40,30},{-50,30}},          color={191,0,0}));
      connect(Pipe_Heat11.port_b,Sel_Valve1. port_a) annotation (Line(
          points={{-30,60},{20,60}},
          color={0,0,0},
          thickness=0.5));
      connect(Sel_Valve1.port_b, port_b1) annotation (Line(
          points={{40,60},{100,60}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_Select1.y,Sel_Valve1. OD) annotation (Line(points={{20.7,87},{30.35,
              87},{30.35,70},{30,70}}, color={0,0,127}));
      connect(Pipe_Heat21.port_b, Sel_Valve2.port_a) annotation (Line(
          points={{-30,-40},{20,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(Sel_Valve2.port_b, port_b2) annotation (Line(
          points={{40,-40},{100,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(OD_Select2.y, Sel_Valve2.OD) annotation (Line(points={{20.7,-13},{20.7,
              -14},{30,-14},{30,-30}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Text(
              extent={{-34,70},{20,26}},
              lineColor={0,0,0},
              textString="C")}),
                               Diagram(coordinateSystem(preserveAspectRatio=
                false)));
    end PipeC;

    model Pumping
      extends VirtualWaterLab.Icons.PumpStation
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
      Components.Tanks.BasicTank Tank
        annotation (Placement(transformation(extent={{-44,12},{-4,52}})));
      Interfaces.Port_a port_a
        annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
      Interfaces.Port_b port_b
        annotation (Placement(transformation(extent={{90,-10},{110,10}})));
      Components.Pumps.BasicPump basicPump
        annotation (Placement(transformation(extent={{14,-28},{34,-8}})));
      Components.Pumps.BasicPump basicPump1
        annotation (Placement(transformation(extent={{18,-56},{38,-36}})));
      Modelica.Blocks.Interfaces.RealVectorInput Input[3]
        "1:In_OD,2:Out_OD,3:Out_PWM" annotation (Placement(transformation(
              extent={{-20,-128},{20,-88}}), iconTransformation(extent={{-20,-128},{
                20,-88}})));

      Modelica.Blocks.Sources.Constant OD_out8(k=OD_Outlet2) "Shut off valve"
        annotation (Placement(transformation(extent={{38,52},{54,68}})));

        //Parameters

        parameter Real OD_Outlet2=1 "Opening Degree of Output Valve 2";
      Components.Valves.Valve valve_Out3
        annotation (Placement(transformation(extent={{58,-10},{78,10}})));
      Components.Valves.Valve valve_Out2(kv=1)
        annotation (Placement(transformation(extent={{18,2},{38,22}})));
      Components.Valves.Valve valve_In1(kv=1)
        annotation (Placement(transformation(extent={{-80,42},{-60,62}})));
    equation
      connect(basicPump.port_a, Tank.port_b) annotation (Line(
          points={{14,-18},{8,-18},{8,12},{-4,12}},
          color={0,0,0},
          thickness=0.5));
      connect(basicPump1.port_a, Tank.port_b) annotation (Line(
          points={{18,-46},{8,-46},{8,12},{-4,12}},
          color={0,0,0},
          thickness=0.5));
      connect(basicPump1.omega, basicPump.omega) annotation (Line(points={{28,-36},{
              28,-4},{24,-4},{24,-8}},      color={0,0,127}));
      connect(basicPump.omega, Input[3]) annotation (Line(points={{24,-8},{-20,
              -8},{-20,-94},{0,-94},{0,-94.6667}},
                                               color={0,0,127}));
      connect(valve_Out3.port_b, port_b) annotation (Line(
          points={{78,0},{100,0}},
          color={0,0,0},
          thickness=0.5));
      connect(valve_Out3.OD, OD_out8.y) annotation (Line(points={{68,10},{62,10},
              {62,60},{54.8,60}}, color={0,0,127}));
      connect(basicPump.port_b, valve_Out3.port_a) annotation (Line(
          points={{34,-18},{46,-18},{46,0},{58,0}},
          color={0,0,0},
          thickness=0.5));
      connect(basicPump1.port_b, valve_Out3.port_a) annotation (Line(
          points={{38,-46},{48,-46},{48,0},{58,0}},
          color={0,0,0},
          thickness=0.5));
      connect(valve_Out2.port_a, Tank.port_b) annotation (Line(
          points={{18,12},{-4,12}},
          color={0,0,0},
          thickness=0.5));
      connect(valve_Out2.port_b, valve_Out3.port_a) annotation (Line(
          points={{38,12},{44,12},{44,0},{58,0}},
          color={0,0,0},
          thickness=0.5));
      connect(valve_In1.port_b, Tank.port_a) annotation (Line(
          points={{-60,52},{-44,52}},
          color={0,0,0},
          thickness=0.5));
      connect(valve_In1.port_a, port_a) annotation (Line(
          points={{-80,52},{-90,52},{-90,0},{-100,0}},
          color={0,0,0},
          thickness=0.5));
      connect(Input[1], valve_In1.OD) annotation (Line(points={{0,-121.333},{
              -36,-121.333},{-36,62},{-70,62}}, color={0,0,127}));
      connect(Input[2], valve_Out2.OD) annotation (Line(points={{0,-108},{14,
              -108},{14,22},{28,22}}, color={0,0,127}));
    end Pumping;

    model Consumer_Water
      extends VirtualWaterLab.Icons.Consumer_Water;
      parameter SI.Height h "Unit elevation - air pressure";
      Interfaces.Port_a port_a1
        annotation (Placement(transformation(extent={{-110,50},{-90,70}})));
      Interfaces.Port_a port_a2
        annotation (Placement(transformation(extent={{-110,-50},{-90,-30}})));
      Interfaces.Port_b port_b
        annotation (Placement(transformation(extent={{90,-10},{110,10}})));
      Modelica.Blocks.Interfaces.RealVectorInput OD[3] annotation (Placement(
            transformation(extent={{-20,-120},{20,-80}}), iconTransformation(
              extent={{-20,-120},{20,-80}})));
      Modelica.Blocks.Sources.Constant h_tank(k=h) "m"
        annotation (Placement(transformation(extent={{-14,90},{-4,100}})));
      Components.Tanks.Tank_PAir tank_PAir
        annotation (Placement(transformation(extent={{-10,0},{20,30}})));
      Components.Valves.Valve valve_In1(kv=1)
        annotation (Placement(transformation(extent={{-80,50},{-60,70}})));
      Components.Valves.Valve valve_In2(kv=1)
        annotation (Placement(transformation(extent={{-80,-50},{-60,-30}})));
      Components.Valves.Valve valve(kv=1)
        annotation (Placement(transformation(extent={{50,-10},{70,10}})));
    equation
      connect(tank_PAir.h0_tank, h_tank.y)
        annotation (Line(points={{5,30},{5,95},{-3.5,95}}, color={0,0,127}));
      connect(port_a1, valve_In1.port_a) annotation (Line(
          points={{-100,60},{-80,60}},
          color={0,0,0},
          thickness=0.5));
      connect(valve_In1.port_b, tank_PAir.port_a1) annotation (Line(
          points={{-60,60},{-40,60},{-40,30},{-10,30}},
          color={0,0,0},
          thickness=0.5));
      connect(OD[1], valve_In1.OD) annotation (Line(points={{0,-113.333},{-24,
              -113.333},{-24,70},{-70,70}}, color={0,0,127}));
      connect(port_a2, valve_In2.port_a) annotation (Line(
          points={{-100,-40},{-80,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(valve_In2.port_b, tank_PAir.port_a3) annotation (Line(
          points={{-60,-40},{-40,-40},{-40,20.1},{-10,20.1}},
          color={0,0,0},
          thickness=0.5));
      connect(tank_PAir.port_b, valve.port_a) annotation (Line(
          points={{20,0},{50,0}},
          color={0,0,0},
          thickness=0.5));
      connect(valve.port_b, port_b) annotation (Line(
          points={{70,0},{100,0}},
          color={0,0,0},
          thickness=0.5));
      connect(OD[2], valve_In2.OD) annotation (Line(points={{0,-100},{-16,-100},
              {-16,-30},{-70,-30}}, color={0,0,127}));
      connect(OD[3], valve.OD) annotation (Line(points={{0,-86.6667},{42,
              -86.6667},{42,10},{60,10}}, color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Consumer_Water;

    model Consumer_Heat
      extends VirtualWaterLab.Icons.Consumer_Heat;
      extends VirtualWaterLab.Interfaces.PartialTwoPort;
      Components.Thermal.Radiator radiator
        annotation (Placement(transformation(extent={{12,-16},{42,14}})));
      Components.Valves.BasicValve Valve1_In1(m_flow_nominal=0.02, dp_nominal=
            20000)
        annotation (Placement(transformation(extent={{-64,-10},{-44,10}})));
      Modelica.Blocks.Interfaces.RealInput OD annotation (Placement(
            transformation(
            extent={{-20,-20},{20,20}},
            rotation=90,
            origin={-50,-100})));
      Modelica.Blocks.Interfaces.RealInput FanSpeed annotation (Placement(
            transformation(
            extent={{-20,-20},{20,20}},
            rotation=90,
            origin={52,-100})));
    equation
      connect(port_a,Valve1_In1. port_a) annotation (Line(
          points={{-100,0},{-82,0},{-82,0},{-64,0}},
          color={0,0,0},
          thickness=0.5));
      connect(Valve1_In1.port_b, radiator.port_a) annotation (Line(
          points={{-44,0},{-16,0},{-16,-1},{12,-1}},
          color={0,0,0},
          thickness=0.5));
      connect(radiator.port_b, port_b) annotation (Line(
          points={{42,-1},{74,-1},{74,0},{100,0}},
          color={0,0,0},
          thickness=0.5));
      connect(radiator.fan_speed, FanSpeed) annotation (Line(points={{27,14},{
              52,14},{52,-100}},           color={0,0,127}));
      connect(Valve1_In1.OD, OD) annotation (Line(points={{-54,10},{-50,10},{
              -50,-100}},            color={0,0,127}));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end Consumer_Heat;

    model Heating
      extends VirtualWaterLab.Icons.Heater
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
      Components.Thermal.Boiler boiler annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={-74,6})));
      Components.Pumps.BasicPump Pump12
        annotation (Placement(transformation(extent={{-54,16},{-34,36}})));
      Components.Pumps.BasicPump Pump11
        annotation (Placement(transformation(extent={{-54,38},{-34,58}})));
      Components.Valves.BasicValve Valve_2(m_flow_nominal=1, dp_nominal=100000)
        annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=270,
            origin={10,-20})));
      Components.Pumps.BasicPump Pump23
        annotation (Placement(transformation(extent={{60,8},{80,28}})));
      Components.Pumps.BasicPump Pump22
        annotation (Placement(transformation(extent={{60,30},{80,50}})));
      Components.Valves.BasicValve Valve1(m_flow_nominal=1, dp_nominal=100000)
        annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=180,
            origin={-40,-68})));
      Interfaces.Port_a port_a
        annotation (Placement(transformation(extent={{90,-70},{110,-50}})));
      Interfaces.Port_b port_b
        annotation (Placement(transformation(extent={{90,50},{110,70}})));
      Components.Thermal.Boiler boiler1 annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={-74,-14})));
      Components.Thermal.Boiler boiler2 annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={-74,-34})));
      Components.Thermal.Boiler boiler3 annotation (Placement(transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={-74,-54})));
      Modelica.Blocks.Interfaces.RealVectorInput omega[5] annotation (Placement(
            transformation(extent={{30,-120},{70,-80}}), iconTransformation(
              extent={{30,-120},{70,-80}})));
      Modelica.Blocks.Interfaces.RealInput T_ref
        annotation (Placement(transformation(extent={{-130,40},{-90,80}})));
      Modelica.Blocks.Interfaces.RealVectorInput OD[2] annotation (Placement(
            transformation(extent={{-70,-120},{-30,-80}}), iconTransformation(
              extent={{-70,-120},{-30,-80}})));
      Components.Pipes.Pipe pipe(length=0.5, diameter=0.02)
        annotation (Placement(transformation(extent={{-20,30},{0,50}})));
      Components.Pipes.Pipe pipe1(length=0.5, diameter=0.02)
        annotation (Placement(transformation(extent={{20,30},{40,50}})));
      Components.Pumps.BasicPump Pump21
        annotation (Placement(transformation(extent={{60,52},{80,72}})));
    equation
      connect(boiler.port_b, Pump12.port_a) annotation (Line(
          points={{-64,6},{-54,6},{-54,26}},
          color={0,0,0},
          thickness=0.5));
      connect(Pump11.port_a, Pump12.port_a) annotation (Line(
          points={{-54,48},{-54,26}},
          color={0,0,0},
          thickness=0.5));
      connect(Pump22.port_b, port_b) annotation (Line(
          points={{80,40},{86,40},{86,60},{100,60}},
          color={0,0,0},
          thickness=0.5));
      connect(Pump23.port_b, port_b) annotation (Line(
          points={{80,18},{86,18},{86,60},{100,60}},
          color={0,0,0},
          thickness=0.5));
      connect(Valve1.port_a, port_a) annotation (Line(
          points={{-30,-68},{10,-68},{10,-60},{100,-60}},
          color={0,0,0},
          thickness=0.5));
      connect(Valve_2.port_b, port_a) annotation (Line(
          points={{10,-30},{10,-60},{100,-60}},
          color={0,0,0},
          thickness=0.5));
      connect(Valve1.port_b, boiler3.port_a) annotation (Line(
          points={{-50,-68},{-84,-68},{-84,-54}},
          color={0,0,0},
          thickness=0.5));
      connect(boiler3.port_b, boiler2.port_a) annotation (Line(
          points={{-64,-54},{-64,-46},{-84,-46},{-84,-34}},
          color={0,0,0},
          thickness=0.5));
      connect(boiler2.port_b, boiler1.port_a) annotation (Line(
          points={{-64,-34},{-64,-26},{-84,-26},{-84,-14}},
          color={0,0,0},
          thickness=0.5));
      connect(boiler1.port_b, boiler.port_a) annotation (Line(
          points={{-64,-14},{-64,-6},{-84,-6},{-84,6}},
          color={0,0,0},
          thickness=0.5));
      connect(boiler.T_ref, T_ref) annotation (Line(points={{-85,11},{-98,11},{
              -98,60},{-110,60}},   color={0,0,127}));
      connect(boiler1.T_ref, T_ref) annotation (Line(points={{-85,-9},{-98,-9},
              {-98,60},{-110,60}},   color={0,0,127}));
      connect(boiler2.T_ref, T_ref) annotation (Line(points={{-85,-29},{-98,-29},
              {-98,60},{-110,60}},   color={0,0,127}));
      connect(boiler3.T_ref, T_ref) annotation (Line(points={{-85,-49},{-98,-49},
              {-98,60},{-110,60}},   color={0,0,127}));
      connect(pipe.port_b, pipe1.port_a) annotation (Line(
          points={{0,40},{20,40}},
          color={0,0,0},
          thickness=0.5));
      connect(Valve_2.port_a, pipe1.port_a) annotation (Line(
          points={{10,-10},{10,40},{20,40}},
          color={0,0,0},
          thickness=0.5));
      connect(Pump22.port_a, Pump23.port_a) annotation (Line(
          points={{60,40},{60,18}},
          color={0,0,0},
          thickness=0.5));
      connect(pipe1.port_b, Pump22.port_a) annotation (Line(
          points={{40,40},{60,40}},
          color={0,0,0},
          thickness=0.5));
      connect(Pump11.port_b, pipe.port_a) annotation (Line(
          points={{-34,48},{-28,48},{-28,40},{-20,40}},
          color={0,0,0},
          thickness=0.5));
      connect(pipe.port_a, Pump12.port_b) annotation (Line(
          points={{-20,40},{-28,40},{-28,26},{-34,26}},
          color={0,0,0},
          thickness=0.5));
      connect(Pump21.port_b, port_b) annotation (Line(
          points={{80,62},{88,62},{88,60},{100,60}},
          color={0,0,0},
          thickness=0.5));
      connect(Pump21.port_a, Pump22.port_a) annotation (Line(
          points={{60,62},{60,40}},
          color={0,0,0},
          thickness=0.5));
      connect(Valve1.OD, OD[1]) annotation (Line(points={{-40,-78},{-40,-110},{
              -50,-110}}, color={0,0,127}));
      connect(Valve_2.OD, OD[2]) annotation (Line(points={{20,-20},{-40,-20},{
              -40,-90},{-50,-90}}, color={0,0,127}));
      connect(omega[1], Pump11.omega) annotation (Line(points={{50,-116},{4,
              -116},{4,58},{-44,58}}, color={0,0,127}));
      connect(omega[2], Pump12.omega) annotation (Line(points={{50,-108},{4,
              -108},{4,36},{-44,36}}, color={0,0,127}));
      connect(omega[3], Pump21.omega) annotation (Line(points={{50,-100},{50,77},
              {70,77},{70,72}},       color={0,0,127}));
      connect(omega[4], Pump22.omega) annotation (Line(points={{50,-92},{60,-92},
              {60,50},{70,50}}, color={0,0,127}));
      connect(omega[5], Pump23.omega) annotation (Line(points={{50,-84},{60,-84},
              {60,28},{70,28}}, color={0,0,127}));
    end Heating;

    model Pipe
    extends VirtualWaterLab.Icons.PipeBlock;
      PipeA pipeA
        annotation (Placement(transformation(extent={{-28,40},{-8,60}})));
      PipeC pipeC
        annotation (Placement(transformation(extent={{-28,-22},{-8,-2}})));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false), graphics={Text(
              extent={{-42,76},{-8,64}},
              lineColor={28,108,200},
              textString="PIPE A"), Text(
              extent={{-36,14},{-2,2}},
              lineColor={28,108,200},
              textString="PIPE C")}));
    end Pipe;

    model PipeA_basic
      extends VirtualWaterLab.Icons.PipeBlock;

      //Parameters
      parameter SI.Length D = 0.02 "Pipe Diameter A";
      parameter SI.Length L = 5 "Pipe Length A";

      Components.Pipes.Pipe_Heat Pipe_Heat21(length=L, diameter=D,
        V_flow(fixed=false),
        roughness=0.0025e-3)
        annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));

      Components.Pipes.Pipe_Heat Pipe_Heat11(length=L, diameter=D,
        V_flow(fixed=false),
        roughness=0.0025e-3)
        annotation (Placement(transformation(extent={{-10,50},{10,70}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(
        Q_flow=-1800,
        alpha=1,
        T_ref=273.15)
        annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow2(
        Q_flow=-1800,
        alpha=1,
        T_ref=273.15)
        annotation (Placement(transformation(extent={{-40,-78},{-20,-58}})));
      Interfaces.Port_a port_a1
        annotation (Placement(transformation(extent={{-110,50},{-90,70}})));
      Interfaces.Port_a port_a2
        annotation (Placement(transformation(extent={{-110,-50},{-90,-30}})));
      Interfaces.Port_b port_b1
        annotation (Placement(transformation(extent={{90,50},{110,70}})));
      Interfaces.Port_b port_b2
        annotation (Placement(transformation(extent={{90,-50},{110,-30}})));
    equation
      connect(port_a1, Pipe_Heat11.port_a) annotation (Line(
          points={{-100,60},{-10,60}},
          color={0,0,0},
          thickness=0.5));
      connect(port_a2, Pipe_Heat21.port_a) annotation (Line(
          points={{-100,-40},{-10,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(fixedHeatFlow2.port, Pipe_Heat21.heatport_a) annotation (Line(
            points={{-20,-68},{0,-68},{0,-45}},               color={191,0,0}));
      connect(Pipe_Heat11.heatport_a, fixedHeatFlow1.port) annotation (Line(
            points={{0,55},{0,30},{-10,30}},              color={191,0,0}));
      connect(Pipe_Heat11.port_b, port_b1) annotation (Line(
          points={{10,60},{100,60}},
          color={0,0,0},
          thickness=0.5));
      connect(Pipe_Heat21.port_b, port_b2) annotation (Line(
          points={{10,-40},{100,-40}},
          color={0,0,0},
          thickness=0.5));

      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Text(
              extent={{-34,70},{20,26}},
              lineColor={0,0,0},
              textString="A")}),
                               Diagram(coordinateSystem(preserveAspectRatio=
                false)),
                  Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end PipeA_basic;

    model PipeC_basic
    extends VirtualWaterLab.Icons.PipeBlock;

      parameter SI.Length D = 0.01 "Pipe Diameter C";
      parameter SI.Length L = 5 "Pipe Length C";
      Components.Pipes.Pipe_Heat Pipe_Heat21(length=L, diameter=D,
        roughness=0.0025e-3)
        annotation (Placement(transformation(extent={{-10,-50},{10,-30}})));
      Components.Pipes.Pipe_Heat Pipe_Heat11(length=L, diameter=D,
        roughness=0.0025e-3)
        annotation (Placement(transformation(extent={{-10,50},{10,70}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(
        Q_flow=-1800,
        alpha=1,
        T_ref=273.15)
        annotation (Placement(transformation(extent={{-30,20},{-10,40}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow2(
        Q_flow=-1800,
        alpha=1,
        T_ref=273.15)
        annotation (Placement(transformation(extent={{-30,-80},{-10,-60}})));
      Interfaces.Port_a port_a1
        annotation (Placement(transformation(extent={{-110,50},{-90,70}})));
      Interfaces.Port_a port_a2
        annotation (Placement(transformation(extent={{-110,-50},{-90,-30}})));
      Interfaces.Port_b port_b1
        annotation (Placement(transformation(extent={{90,50},{110,70}})));
      Interfaces.Port_b port_b2
        annotation (Placement(transformation(extent={{90,-50},{110,-30}})));
    equation
      connect(port_a1, Pipe_Heat11.port_a) annotation (Line(
          points={{-100,60},{-10,60}},
          color={0,0,0},
          thickness=0.5));
      connect(port_a2, Pipe_Heat21.port_a) annotation (Line(
          points={{-100,-40},{-10,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(fixedHeatFlow2.port, Pipe_Heat21.heatport_a) annotation (Line(
            points={{-10,-70},{0,-70},{0,-45}},               color={191,0,0}));
      connect(Pipe_Heat11.heatport_a, fixedHeatFlow1.port) annotation (Line(
            points={{0,55},{0,30},{-10,30}},              color={191,0,0}));
      connect(Pipe_Heat11.port_b, port_b1) annotation (Line(
          points={{10,60},{100,60}},
          color={0,0,0},
          thickness=0.5));
      connect(Pipe_Heat21.port_b, port_b2) annotation (Line(
          points={{10,-40},{100,-40}},
          color={0,0,0},
          thickness=0.5));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Text(
              extent={{-34,70},{20,26}},
              lineColor={0,0,0},
              textString="C")}),                                     Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end PipeC_basic;

    model PipeW
    extends VirtualWaterLab.Icons.PipeWaste;

      parameter SI.Length D = 0.08 "Pipe Diameter";
      parameter SI.Length L = 10 "Pipe Length";
      parameter Real S = 0.01 "Slope %/100";
      parameter SI.Height h_in1 = 2;
      parameter SI.Height h_in2 = 1;



      Interfaces.Port_a port_a1
        annotation (Placement(transformation(extent={{-110,50},{-90,70}})));
      Interfaces.Port_a port_a2
        annotation (Placement(transformation(extent={{-110,-50},{-90,-30}})));
      Interfaces.Port_b port_b2
        annotation (Placement(transformation(extent={{90,-50},{110,-30}})));
      Modelica.Blocks.Interfaces.RealVectorInput OD[2] annotation (Placement(
            transformation(extent={{-20,-120},{20,-80}}), iconTransformation(
              extent={{-20,-120},{20,-80}})));
      Components.Pipes.Pipe_OC pipe_OC2(
        diameter=D,
        slope=S,
        length=10) annotation (Placement(transformation(extent={{54,-10},{74,10}})));
      Components.Valves.BasicValve basicValve1(
        OD_nominal=1,
        m_flow_nominal=1/3.6,
        dp_nominal=100000)
        annotation (Placement(transformation(extent={{-74,50},{-54,70}})));
      Components.Valves.BasicValve basicValve2(
        OD_nominal=1,
        m_flow_nominal=1/3.6,
        dp_nominal=100000)
        annotation (Placement(transformation(extent={{-70,-50},{-50,-30}})));
      Components.Pipes.Pipe_OC pipe_OC1(
        diameter=D,
        slope=S,
        length=10) annotation (Placement(transformation(extent={{10,-10},{30,10}})));

      Components.Pipes.Pipe_Heat Pipe_Heat11(
        V_flow(fixed=false),
        length=1,
        diameter=0.02)
        annotation (Placement(transformation(extent={{-24,50},{-4,70}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow1(
        Q_flow=-1800,
        alpha=1,
        T_ref=273.15)
        annotation (Placement(transformation(extent={{-38,30},{-18,50}})));
      Components.Pipes.Pipe_Heat Pipe_Heat22(
        V_flow(fixed=false),
        length=1,
        diameter=0.025)
        annotation (Placement(transformation(extent={{-20,-50},{0,-30}})));
      Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow2(
        Q_flow=-1800,
        alpha=1,
        T_ref=273.15)
        annotation (Placement(transformation(extent={{-34,-70},{-14,-50}})));
    equation
      connect(pipe_OC2.port_b, port_b2) annotation (Line(
          points={{74,0},{80,0},{80,-40},{100,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(basicValve1.port_a, port_a1) annotation (Line(
          points={{-74,60},{-100,60}},
          color={0,0,0},
          thickness=0.5));
      connect(basicValve2.port_a, port_a2) annotation (Line(
          points={{-70,-40},{-100,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(OD[1], basicValve1.OD) annotation (Line(points={{0,-110},{-42,
              -110},{-42,70},{-64,70}},
                             color={0,0,127}));
      connect(OD[2], basicValve2.OD) annotation (Line(points={{0,-90},{-40,-90},{-40,
              -30},{-60,-30}}, color={0,0,127}));
      connect(pipe_OC2.port_a, pipe_OC1.port_b) annotation (Line(
          points={{54,0},{30,0}},
          color={0,0,0},
          thickness=0.5));
      connect(Pipe_Heat11.heatport_a,fixedHeatFlow1. port) annotation (Line(
            points={{-14,55},{-14,40},{-18,40}},          color={191,0,0}));
      connect(Pipe_Heat11.port_b, pipe_OC1.port_a) annotation (Line(
          points={{-4,60},{4,60},{4,0},{10,0}},
          color={0,0,0},
          thickness=0.5));
      connect(Pipe_Heat11.port_a, basicValve1.port_b) annotation (Line(
          points={{-24,60},{-54,60}},
          color={0,0,0},
          thickness=0.5));
      connect(Pipe_Heat22.heatport_a, fixedHeatFlow2.port) annotation (Line(
            points={{-10,-45},{-10,-60},{-14,-60}}, color={191,0,0}));
      connect(basicValve2.port_b, Pipe_Heat22.port_a) annotation (Line(
          points={{-50,-40},{-20,-40}},
          color={0,0,0},
          thickness=0.5));
      connect(Pipe_Heat22.port_b, pipe_OC1.port_b) annotation (Line(
          points={{0,-40},{40,-40},{40,0},{30,0}},
          color={0,0,0},
          thickness=0.5));
      annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
            coordinateSystem(preserveAspectRatio=false)));
    end PipeW;
  end Units;

  package Test
  extends Modelica.Icons.ExamplesPackage;

    package Component
      model SinglePipe
      extends Modelica.Icons.Example;
        Components.Sources.Source_pT source_pT(p=200000)
          annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
        Components.Pipes.Pipe_Heat dynamicPipe(
          V_flow(fixed=false),
          roughness=0.05e-3,
          length=10,
          diameter=0.020,
          T_start=323.15)
          annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
        Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow(
          alpha=1,
          Q_flow=-1800,
          T_ref=293.15)
          annotation (Placement(transformation(extent={{-56,-34},{-36,-14}})));
        Components.Sources.Sink_qT sink_qT(m_flow=6*0.5/3.6)
          annotation (Placement(transformation(extent={{60,-10},{80,10}})));

          SI.Pressure dp_consumer;

      equation

        dp_consumer = source_pT.port_b.p - sink_qT.port_a.p;

        connect(source_pT.port_b, dynamicPipe.port_a) annotation (Line(
            points={{-60,0},{-10,0}},
            color={0,0,0},
            thickness=0.5));
        connect(fixedHeatFlow.port, dynamicPipe.heatport_a)
          annotation (Line(points={{-36,-24},{0,-24},{0,-5}}, color={191,0,0}));
        connect(dynamicPipe.port_b, sink_qT.port_a) annotation (Line(
            points={{10,0},{60,0}},
            color={0,0,0},
            thickness=0.5));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end SinglePipe;

      model SinglePipe_OC
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));

        Components.Sources.Source_qT source_qT
          annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
        Components.Sources.Sink_pT sink_pT
          annotation (Placement(transformation(extent={{90,-10},{110,10}})));
        Components.Pipes.Pipe_OC pipe_OC1(diameter=0.08, slope=0.001)
          annotation (Placement(transformation(extent={{50,-10},{70,10}})));
        Components.Pipes.Pipe pipe1(
          length=2,
          diameter=0.025,
          height_ab=1)
          annotation (Placement(transformation(extent={{0,-10},{20,10}})));
        Components.Valves.BasicValve basicValve1(
          OD_nominal=1,
          m_flow_nominal=1/3.6,
          dp_nominal=100000)
          annotation (Placement(transformation(extent={{-60,-10},{-40,10}})));
        Modelica.Blocks.Sources.Constant OD_in4(k=1) "m"
          annotation (Placement(transformation(extent={{-74,12},{-60,26}})));
        Components.Pipes.Pipe pipe2(
          length=2,
          diameter=0.025,
          height_ab=0)
          annotation (Placement(transformation(extent={{0,-60},{20,-40}})));
        Components.Valves.BasicValve basicValve2(
          OD_nominal=1,
          m_flow_nominal=1/3.6,
          dp_nominal=100000)
          annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
        Modelica.Blocks.Sources.Constant OD_in1(k=0) "m"
          annotation (Placement(transformation(extent={{-74,-40},{-60,-26}})));
        Components.Sources.Source_pT source_pT
          annotation (Placement(transformation(extent={{-100,-60},{-80,-40}})));
      equation
        connect(pipe_OC1.port_b, sink_pT.port_a) annotation (Line(
            points={{70,0},{90,0}},
            color={0,0,0},
            thickness=0.5));
        connect(basicValve1.port_b, pipe1.port_a) annotation (Line(
            points={{-40,0},{0,0}},
            color={0,0,0},
            thickness=0.5));
        connect(OD_in4.y, basicValve1.OD) annotation (Line(points={{-59.3,19},{
                -49.65,19},{-49.65,10},{-50,10}}, color={0,0,127}));
        connect(pipe_OC1.port_a, pipe1.port_b) annotation (Line(
            points={{50,0},{20,0}},
            color={0,0,0},
            thickness=0.5));
        connect(source_qT.port_b, basicValve1.port_a) annotation (Line(
            points={{-80,0},{-60,0}},
            color={0,0,0},
            thickness=0.5));
        connect(basicValve2.port_b, pipe2.port_a) annotation (Line(
            points={{-40,-50},{0,-50}},
            color={0,0,0},
            thickness=0.5));
        connect(OD_in1.y,basicValve2. OD) annotation (Line(points={{-59.3,-33},
                {-49.65,-33},{-49.65,-40},{-50,-40}}, color={0,0,127}));
        connect(pipe_OC1.port_a, pipe2.port_b) annotation (Line(
            points={{50,0},{34,0},{34,-50},{20,-50}},
            color={0,0,0},
            thickness=0.5));
        connect(source_pT.port_b,basicValve2. port_a) annotation (Line(
            points={{-80,-50},{-60,-50}},
            color={0,0,0},
            thickness=0.5));
      end SinglePipe_OC;

      model SingleValve
        extends Modelica.Icons.Example;

        Modelica.Blocks.Sources.Step step1(
          offset=0,
          startTime=0.5,
          height=1)
          annotation (Placement(transformation(extent={{-40,10},{-20,30}})));
        Components.Sources.Source_pT source_pT1(p=200000)
          annotation (Placement(transformation(extent={{-80,-20},{-60,0}})));
        Components.Sources.Sink_pT sink_pT(p=100000)
          annotation (Placement(transformation(extent={{60,-20},{80,0}})));
        Components.Valves.Valve_2 valve_2_1
          annotation (Placement(transformation(extent={{-10,-20},{10,0}})));
      equation
        connect(source_pT1.port_b, valve_2_1.port_a) annotation (Line(
            points={{-60,-10},{-10,-10}},
            color={0,0,0},
            thickness=0.5));
        connect(valve_2_1.port_b, sink_pT.port_a) annotation (Line(
            points={{10,-10},{60,-10}},
            color={0,0,0},
            thickness=0.5));
        connect(step1.y, valve_2_1.OD)
          annotation (Line(points={{-19,20},{0,20},{0,0}}, color={0,0,127}));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end SingleValve;

      model SinglePump
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        Components.Sources.Sink_pT sink(p=100000, T=298.15)
          annotation (Placement(transformation(extent={{42,30},{62,50}})));
        Components.Pumps.BasicPump basicPump(dp(start=0, fixed=false),
            V_flow_min=0.000001)
          annotation (Placement(transformation(extent={{-10,30},{10,50}})));
        Modelica.Blocks.Sources.Ramp ramp(
          height=1,
          offset=0,
          duration=5,
          startTime=2)
          annotation (Placement(transformation(extent={{-40,80},{-20,100}})));
        Components.Sources.Source_pT source_pT(p=100000)
          annotation (Placement(transformation(extent={{-62,30},{-42,50}})));
        Components.Pumps.BasicPump basicPump1(V_flow_min=0.000001, dp(start=0,
              fixed=false))
          annotation (Placement(transformation(extent={{-10,-82},{10,-62}})));
        Modelica.Blocks.Sources.Ramp ramp1(
          height=1,
          offset=0,
          duration=5,
          startTime=2)
          annotation (Placement(transformation(extent={{-40,-40},{-20,-20}})));
        Components.Sources.Sink_qT sink_qT
          annotation (Placement(transformation(extent={{54,-82},{74,-62}})));
        Components.Sources.Source_pT source_pT1(p=100000)
          annotation (Placement(transformation(extent={{-56,-82},{-36,-62}})));
      equation
        connect(ramp.y, basicPump.omega)
          annotation (Line(points={{-19,90},{0,90},{0,50}},   color={0,0,127}));
        connect(source_pT.port_b, basicPump.port_a) annotation (Line(
            points={{-42,40},{-10,40}},
            color={0,0,0},
            thickness=0.5));
        connect(ramp1.y, basicPump1.omega) annotation (Line(points={{-19,-30},{
                0,-30},{0,-62}}, color={0,0,127}));
        connect(sink_qT.port_a, basicPump1.port_b) annotation (Line(
            points={{54,-72},{10,-72}},
            color={0,0,0},
            thickness=0.5));
        connect(source_pT1.port_b, basicPump1.port_a) annotation (Line(
            points={{-36,-72},{-10,-72}},
            color={0,0,0},
            thickness=0.5));
        connect(basicPump.port_b, sink.port_a) annotation (Line(
            points={{10,40},{42,40}},
            color={0,0,0},
            thickness=0.5));
        annotation (Diagram(graphics={Text(
                extent={{-96,96},{-56,84}},
                lineColor={28,108,200},
                textString="V_flow - fixed pressure"), Text(
                extent={{-96,-16},{-68,-44}},
                lineColor={28,108,200},
                textString="dp - fixed V_flow")}));
      end SinglePump;

      model SingleTank
      extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        Components.Valves.BasicValve basicValve(dp_nominal=100000, m_flow_nominal=
             0.5)
          annotation (Placement(transformation(extent={{20,-10},{40,10}})));
        Components.Tanks.Tank_PAir tank_PAir(diameter=0.4, fluidLevel_max=0.7)
          annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
        Modelica.Blocks.Sources.Constant const(k=0)
          annotation (Placement(transformation(extent={{-60,60},{-40,80}})));
        Modelica.Blocks.Sources.Constant const1(k=1)
          annotation (Placement(transformation(extent={{-10,34},{10,54}})));
        Components.Sources.Sink_qT sink_qT
          annotation (Placement(transformation(extent={{80,-10},{100,10}})));
        Components.Sources.Source_qT source_qT1(m_flow=0)
          annotation (Placement(transformation(extent={{-100,10},{-80,30}})));
      equation
        connect(tank_PAir.port_b, basicValve.port_a) annotation (Line(
            points={{-20,0},{20,0}},
            color={0,0,0},
            thickness=0.5));
        connect(const.y, tank_PAir.h0_tank) annotation (Line(points={{-39,70},{
                -30,70},{-30,20}}, color={0,0,127}));
        connect(const1.y, basicValve.OD) annotation (Line(points={{11,44},{20,
                44},{20,10},{30,10}}, color={0,0,127}));
        connect(basicValve.port_b, sink_qT.port_a) annotation (Line(
            points={{40,0},{80,0}},
            color={0,0,0},
            thickness=0.5));
        connect(source_qT1.port_b, tank_PAir.port_a1) annotation (Line(
            points={{-80,20},{-40,20}},
            color={0,0,0},
            thickness=0.5));
      end SingleTank;

      model SingleBoiler
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        Components.Thermal.Boiler boiler1
          annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
        Modelica.Blocks.Sources.Step T_set1(
          offset=0,
          startTime=1,
          height=30)
          annotation (Placement(transformation(extent={{-62,40},{-42,60}})));
        Components.Sources.Sink_pT sink_pT
          annotation (Placement(transformation(extent={{36,-10},{56,10}})));
        Components.Sources.Source_pT source_pT(p=110000)
          annotation (Placement(transformation(extent={{-90,-10},{-70,10}})));
      equation
        connect(T_set1.y, boiler1.T_ref) annotation (Line(points={{-41,50},{-18,
                50},{-18,5},{-11,5}},        color={0,0,127}));
        connect(boiler1.port_b, sink_pT.port_a) annotation (Line(
            points={{10,0},{36,0}},
            color={0,0,0},
            thickness=0.5));
        connect(source_pT.port_b, boiler1.port_a) annotation (Line(
            points={{-70,0},{-10,0}},
            color={0,0,0},
            thickness=0.5));
      end SingleBoiler;

      model SingleRadiator
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        Components.Thermal.Radiator radiator
          annotation (Placement(transformation(extent={{-10,-2},{10,18}})));
        Components.Sources.Source_pT source_pT(p=102000, T=323.15)
          annotation (Placement(transformation(extent={{-80,-2},{-60,18}})));
        Components.Sources.Sink_pT sink_pT
          annotation (Placement(transformation(extent={{52,-2},{72,18}})));
        Modelica.Blocks.Sources.Trapezoid trapezoid(
          rising=2,
          width=4,
          falling=1,
          startTime=2,
          amplitude=1)
          annotation (Placement(transformation(extent={{-74,50},{-54,70}})));
      equation
        connect(source_pT.port_b, radiator.port_a) annotation (Line(
            points={{-60,8},{-10,8}},
            color={0,0,0},
            thickness=0.5));
        connect(radiator.port_b, sink_pT.port_a) annotation (Line(
            points={{10,8},{52,8}},
            color={0,0,0},
            thickness=0.5));
        connect(trapezoid.y, radiator.fan_speed) annotation (Line(points={{-53,60},
                {0,60},{0,18}},                color={0,0,127}));
      end SingleRadiator;

      model Tank_Air
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        Components.Tanks.Tank_PAir tank_Pressure(fluidLevel_nom=1)
          annotation (Placement(transformation(extent={{0,-6},{20,14}})));
        Components.Pipes.Pipe pipe(
          length=20,
          diameter=0.02,
          height_ab=3)
          annotation (Placement(transformation(extent={{-48,14},{-28,34}})));
        Components.Sources.Source_pT source_pT(p=600000)
          annotation (Placement(transformation(extent={{-100,0},{-80,20}})));
        Components.Sources.Sink_pT sink_pT
          annotation (Placement(transformation(extent={{80,-16},{100,4}})));
        Modelica.Blocks.Sources.Constant h_tank(k=0) "m"
          annotation (Placement(transformation(extent={{-40,40},{-20,60}})));
        Components.Valves.BasicValve basicValve(dp_nominal=5000, m_flow_nominal=
             0.5)
          annotation (Placement(transformation(extent={{-40,-16},{-20,4}})));
        Modelica.Blocks.Sources.Constant OD(k=0.1) "m"
          annotation (Placement(transformation(extent={{-100,-40},{-80,-20}})));
        Components.Valves.BasicValve basicValve1(dp_nominal=5000,
            m_flow_nominal=0.5)
          annotation (Placement(transformation(extent={{40,-16},{60,4}})));
      equation
        connect(source_pT.port_b, pipe.port_a) annotation (Line(
            points={{-80,10},{-68,10},{-68,24},{-48,24}},
            color={0,0,0},
            thickness=0.5));
        connect(pipe.port_b, tank_Pressure.port_a1) annotation (Line(
            points={{-28,24},{0,24},{0,14}},
            color={0,0,0},
            thickness=0.5));
        connect(h_tank.y, tank_Pressure.h0_tank) annotation (Line(points={{-19,
                50},{10,50},{10,14}}, color={0,0,127}));
        connect(basicValve.port_b,tank_Pressure.port_a3)  annotation (Line(
            points={{-20,-6},{-10,-6},{-10,7.4},{0,7.4}},
            color={0,0,0},
            thickness=0.5));
        connect(basicValve.port_a, source_pT.port_b) annotation (Line(
            points={{-40,-6},{-68,-6},{-68,10},{-80,10}},
            color={0,0,0},
            thickness=0.5));
        connect(OD.y, basicValve.OD) annotation (Line(points={{-79,-30},{-30,
                -30},{-30,4}}, color={0,0,127}));
        connect(tank_Pressure.port_b, basicValve1.port_a) annotation (Line(
            points={{20,-6},{40,-6}},
            color={0,0,0},
            thickness=0.5));
        connect(basicValve1.port_b, sink_pT.port_a) annotation (Line(
            points={{60,-6},{80,-6}},
            color={0,0,0},
            thickness=0.5));
        connect(basicValve1.OD, OD.y) annotation (Line(points={{50,4},{50,-30},
                {-79,-30}}, color={0,0,127}));
      end Tank_Air;
    end Component;

    package Unit
      model Consumer_Heat
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        Units.Consumer_Heat consumer_Heat
          annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
        Components.Sources.Source_pT source_pT2(p=120000, T=323.15)
          annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
        Components.Sources.Sink_pT sink_pT1(T=303.15)
          annotation (Placement(transformation(extent={{60,-10},{80,10}})));
        Modelica.Blocks.Sources.Constant Valve1_In1(k=0.5)
          annotation (Placement(transformation(extent={{-60,-40},{-40,-20}})));
        Modelica.Blocks.Sources.Constant Fan_Speed(k=0)
          annotation (Placement(transformation(extent={{-60,-80},{-40,-60}})));
      equation
        connect(source_pT2.port_b, consumer_Heat.port_a) annotation (Line(
            points={{-60,0},{-10,0}},
            color={0,0,0},
            thickness=0.5));
        connect(consumer_Heat.port_b, sink_pT1.port_a) annotation (Line(
            points={{10,0},{60,0}},
            color={0,0,0},
            thickness=0.5));
        connect(Valve1_In1.y, consumer_Heat.OD) annotation (Line(points={{-39,-30},
                {-6,-30},{-6,-10},{-5,-10}}, color={0,0,127}));
        connect(Fan_Speed.y, consumer_Heat.FanSpeed) annotation (Line(points={{
                -39,-70},{6,-70},{6,-10},{5.2,-10}}, color={0,0,127}));
      end Consumer_Heat;

      model Consumer_Water
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        Units.Consumer_Water consumer_Water(h=0)
          annotation (Placement(transformation(extent={{-20,0},{0,20}})));
        Components.Sources.Source_pT source_pT(p=120000)
          annotation (Placement(transformation(extent={{-90,30},{-70,50}})));
        Components.Sources.Sink_qT sink_qT
          annotation (Placement(transformation(extent={{62,0},{82,20}})));
        Modelica.Blocks.Sources.Constant OD_in1(k=1) "m"
          annotation (Placement(transformation(extent={{-46,-26},{-32,-12}})));
        Modelica.Blocks.Sources.Constant OD_in2(k=0.1)
                                                     "m"
          annotation (Placement(transformation(extent={{-46,-46},{-32,-32}})));
        Modelica.Blocks.Sources.Constant OD_out1(k=1) "m"
          annotation (Placement(transformation(extent={{-46,-68},{-32,-54}})));
      equation
        connect(source_pT.port_b, consumer_Water.port_a1) annotation (Line(
            points={{-70,40},{-60,40},{-60,16},{-20,16}},
            color={0,0,0},
            thickness=0.5));
        connect(consumer_Water.port_b, sink_qT.port_a) annotation (Line(
            points={{0,10},{62,10}},
            color={0,0,0},
            thickness=0.5));
        connect(consumer_Water.port_a2, consumer_Water.port_a1) annotation (
            Line(
            points={{-20,6},{-40,6},{-40,6},{-60,6},{-60,16},{-20,16}},
            color={0,0,0},
            thickness=0.5));
        connect(OD_in1.y, consumer_Water.OD[1]) annotation (Line(points={{-31.3,
                -19},{-20.65,-19},{-20.65,-1.33333},{-10,-1.33333}}, color={0,0,
                127}));
        connect(OD_in2.y, consumer_Water.OD[2]) annotation (Line(points={{-31.3,
                -39},{-31.3,-19.5},{-10,-19.5},{-10,0}}, color={0,0,127}));
        connect(OD_out1.y, consumer_Water.OD[3]) annotation (Line(points={{
                -31.3,-61},{-31.3,-30.5},{-10,-30.5},{-10,1.33333}}, color={0,0,
                127}));
      end Consumer_Water;

      model Unit_Heating
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        Units.Heating heating
          annotation (Placement(transformation(extent={{-40,0},{-20,20}})));
        Modelica.Blocks.Sources.Constant T_ref(k=60)
          annotation (Placement(transformation(extent={{-80,10},{-68,22}})));
        Components.Sources.Source_pT source_pT annotation (Placement(
              transformation(
              extent={{-10,-10},{10,10}},
              rotation=180,
              origin={68,4})));
        Components.Sources.Sink_pT sink_pT
          annotation (Placement(transformation(extent={{40,6},{60,26}})));
        Modelica.Blocks.Sources.Constant Valve1_OD(k=1)
          annotation (Placement(transformation(extent={{-80,-40},{-68,-28}})));
        Modelica.Blocks.Sources.Constant Valve2_OD(k=0)
          annotation (Placement(transformation(extent={{-80,-60},{-68,-48}})));
        Modelica.Blocks.Sources.Constant Pump11_Omega(k=0.5)
          annotation (Placement(transformation(extent={{-20,-50},{-8,-38}})));
        Modelica.Blocks.Sources.Constant Pump12_Omega(k=0.5)
          annotation (Placement(transformation(extent={{-20,-70},{-8,-58}})));
        Modelica.Blocks.Sources.Constant Pump21_Omega(k=0.5) annotation (
            Placement(transformation(
              extent={{-6,-6},{6,6}},
              rotation=180,
              origin={26,-34})));
        Modelica.Blocks.Sources.Constant Pump22_Omega(k=0.5) annotation (
            Placement(transformation(
              extent={{-6,-6},{6,6}},
              rotation=180,
              origin={26,-54})));
        Modelica.Blocks.Sources.Constant Pump23_Omega(k=0.5) annotation (
            Placement(transformation(
              extent={{-6,-6},{6,6}},
              rotation=180,
              origin={26,-74})));
      equation
        connect(T_ref.y, heating.T_ref)
          annotation (Line(points={{-67.4,16},{-41,16}},
                                                       color={0,0,127}));
        connect(source_pT.port_b, heating.port_a) annotation (Line(
            points={{58,4},{-20,4}},
            color={0,0,0},
            thickness=0.5));
        connect(heating.port_b, sink_pT.port_a) annotation (Line(
            points={{-20,16},{40,16}},
            color={0,0,0},
            thickness=0.5));
        connect(Valve1_OD.y, heating.OD[1]) annotation (Line(points={{-67.4,-34},
                {-36,-34},{-36,-1},{-35,-1}},color={0,0,127}));
        connect(Valve2_OD.y, heating.OD[2]) annotation (Line(points={{-67.4,-54},
                {-64,-54},{-64,-34},{-36,-34},{-36,1},{-35,1}},
                                           color={0,0,127}));
        connect(Pump11_Omega.y, heating.omega[1]) annotation (Line(points={{-7.4,
                -44},{4,-44},{4,-1.6},{-25,-1.6}},     color={0,0,127}));
        connect(Pump12_Omega.y, heating.omega[2]) annotation (Line(points={{-7.4,
                -64},{4,-64},{4,-0.8},{-25,-0.8}},     color={0,0,127}));
        connect(Pump21_Omega.y, heating.omega[3]) annotation (Line(points={{19.4,
                -34},{6,-34},{6,0},{-25,0}}, color={0,0,127}));
        connect(Pump22_Omega.y, heating.omega[4]) annotation (Line(points={{19.4,
                -54},{6,-54},{6,0.8},{-25,0.8}}, color={0,0,127}));
        connect(Pump23_Omega.y, heating.omega[5]) annotation (Line(points={{19.4,
                -74},{6,-74},{6,1.6},{-25,1.6}}, color={0,0,127}));
      end Unit_Heating;

      model Unit_PumpStation
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        Components.Sources.Sink_pT sink_pT
          annotation (Placement(transformation(extent={{80,-20},{100,0}})));
        Units.Pumping                 pumping1
          annotation (Placement(transformation(extent={{-8,-10},{12,10}})));
        Modelica.Blocks.Sources.Constant OD_in1(k=1) "m"
          annotation (Placement(transformation(extent={{-32,-58},{-16,-42}})));
        Modelica.Blocks.Sources.Constant OD_out1(k=0) "m"
          annotation (Placement(transformation(extent={{-48,-72},{-32,-56}})));
        Modelica.Blocks.Sources.Constant PWM_out1(k=1) "m"
          annotation (Placement(transformation(extent={{-64,-84},{-48,-68}})));
        Units.PipeA pipeA
          annotation (Placement(transformation(extent={{46,-16},{66,4}})));
        Components.Sources.Source_qT source_qT
          annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
      equation
        connect(OD_in1.y, pumping1.Input[1]) annotation (Line(points={{-15.2,
                -50},{-4,-50},{-4,-11.3333},{2,-11.3333}}, color={0,0,127}));
        connect(OD_out1.y, pumping1.Input[2]) annotation (Line(points={{-31.2,
                -64},{-12,-64},{-12,-10},{2,-10}}, color={0,0,127}));
        connect(PWM_out1.y, pumping1.Input[3]) annotation (Line(points={{-47.2,
                -76},{-20,-76},{-20,-8.66667},{2,-8.66667}}, color={0,0,127}));
        connect(pumping1.port_b, pipeA.port_a1) annotation (Line(
            points={{12,0},{46,0}},
            color={0,0,0},
            thickness=0.5));
        connect(pipeA.port_a2, pipeA.port_b1) annotation (Line(
            points={{46,-10},{56,-10},{56,0},{66,0}},
            color={0,0,0},
            thickness=0.5));
        connect(pipeA.port_b2, sink_pT.port_a) annotation (Line(
            points={{66,-10},{80,-10}},
            color={0,0,0},
            thickness=0.5));
        connect(source_qT.port_b, pumping1.port_a) annotation (Line(
            points={{-80,0},{-80,1},{-8,1},{-8,0}},
            color={0,0,0},
            thickness=0.5));
      end Unit_PumpStation;

      model Unit_PipeA
        import VirtualWaterLab;
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));
        VirtualWaterLab.Components.Sources.Source_pT source_pT(p=200000)
          annotation (Placement(transformation(extent={{-84,-10},{-64,10}})));
        VirtualWaterLab.Components.Sources.Sink_pT sink_pT
          annotation (Placement(transformation(extent={{56,-10},{76,10}})));
        VirtualWaterLab.Units.PipeA pipeA
          annotation (Placement(transformation(extent={{-30,32},{-10,52}})));
      equation
        connect(source_pT.port_b, pipeA.port_a1) annotation (Line(
            points={{-64,0},{-46,0},{-46,48},{-30,48}},
            color={0,0,0},
            thickness=0.5));
        connect(pipeA.port_b1, sink_pT.port_a) annotation (Line(
            points={{-10,48},{24,48},{24,0},{56,0}},
            color={0,0,0},
            thickness=0.5));
        connect(pipeA.port_a2, pipeA.port_a1) annotation (Line(
            points={{-30,38},{-38,38},{-38,-6},{-46,-6},{-46,48},{-30,48}},
            color={0,0,0},
            thickness=0.5));
        connect(pipeA.port_b2, sink_pT.port_a) annotation (Line(
            points={{-10,38},{-4,38},{-4,-8},{24,-8},{24,0},{56,0}},
            color={0,0,0},
            thickness=0.5));
      end Unit_PipeA;

      model Unit_PipeSewer
        import VirtualWaterLab;
        extends Modelica.Icons.Example
        annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(
              coordinateSystem(preserveAspectRatio=false)));

        Modelica.Blocks.Sources.Constant OD_in4(k=1) "m"
          annotation (Placement(transformation(extent={{-20,20},{-6,34}})));
        Modelica.Blocks.Sources.Constant OD_in5(k=1) "m"
          annotation (Placement(transformation(extent={{-20,0},{-6,14}})));
        VirtualWaterLab.Components.Sources.Sink_pT sink_pT
          annotation (Placement(transformation(extent={{66,36},{86,56}})));
        VirtualWaterLab.Units.PipeW pipeW(h_in2=0, h_in1=1.5)
          annotation (Placement(transformation(extent={{0,40},{20,60}})));
        VirtualWaterLab.Components.Sources.Source_qT source_qT
          annotation (Placement(transformation(extent={{-60,46},{-40,66}})));
        VirtualWaterLab.Components.Sources.Source_qT source_qT1(m_flow=0)
          annotation (Placement(transformation(extent={{-100,36},{-80,56}})));
      equation
        connect(OD_in4.y, pipeW.OD[1]) annotation (Line(points={{-5.3,27},{-5.3,
                26.5},{10,26.5},{10,39}}, color={0,0,127}));
        connect(OD_in5.y, pipeW.OD[2]) annotation (Line(points={{-5.3,7},{10.35,
                7},{10.35,41},{10,41}}, color={0,0,127}));
        connect(source_qT.port_b, pipeW.port_a1) annotation (Line(
            points={{-40,56},{0,56}},
            color={0,0,0},
            thickness=0.5));
        connect(source_qT1.port_b, pipeW.port_a2) annotation (Line(
            points={{-80,46},{0,46}},
            color={0,0,0},
            thickness=0.5));
        connect(pipeW.port_b2, sink_pT.port_a) annotation (Line(
            points={{20,46},{66,46}},
            color={0,0,0},
            thickness=0.5));
      end Unit_PipeSewer;
    end Unit;
  end Test;
  annotation (uses(Modelica(version="3.2.2")));
end VirtualWaterLab;
