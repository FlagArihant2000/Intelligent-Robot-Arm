eins = input('q1: ');
zwei = input('q2: ');
drei = input('q3: ');
vier = input('q4: ');
i = 1;
q1 = 0;
q2 = 0;
q3 = 0;
q4 = 0;
while i <= 100
    i = i + 1;
    q1 = q1 + (eins/100)*(pi/180);
    q2 = q2 + (zwei/100)*(pi/180);
    q3 = q3 + (drei/100)*(pi/180);
    q4 = q4 + (vier/100)*(pi/180);
    Rz = [
        cos(q1) -sin(q1) 0 0
        sin(q1) cos(q1) 0 0
        0 0 1 0
        0 0 0 1];
    Tz = [
        1 0 0 0
        0 1 0 0
        0 0 1 1
        0 0 0 1];
    first = Rz*Tz;
    Ry = [
        cos(q2) 0 sin(q2) 0
        0 1 0 0
        -sin(q2) 0 cos(q2) 0
        0 0 0 1];
    second = first*Ry;
    second = second*Tz;
    Ry = [
        cos(q3) 0 sin(q3) 0
        0 1 0 0
        -sin(q3) 0 cos(q3) 0
        0 0 0 1];
    third = second*Ry;
    third = third*Tz;
    Ry = [cos(q4) 0 sin(q4) 0
        0 1 0 0
        -sin(q4) 0 cos(q4) 0
        0 0 0 1];
    fourth = third*Ry;
    fourth = fourth*Tz;
    disp([first(1,4) first(2,4) first(3,4)]);
    disp([second(1,4) second(2,4) second(3,4)]);
    disp([third(1,4) third(2,4) third(3,4)]);
    disp([fourth(1,4) fourth(2,4) fourth(3,4)]);
    pause(0.1);
    plot3([0 first(1,4)],[0 first(2,4)],[0 first(3,4)],'LineWidth',2);
    set(gca,'XLim',[-3 3]);
    set(gca,'YLim',[-3 3]);
    set(gca,'ZLim',[-3 3]);
    hold on;
    plot3([first(1,4) second(1,4)],[first(2,4) second(2,4)],[first(3,4) second(3,4)],'LineWidth',2);
     plot3([second(1,4) third(1,4)],[second(2,4) third(2,4)],[second(3,4) third(3,4)],'LineWidth',2);
    hold off;
   
end