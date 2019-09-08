eins = input('q1: ');
zwei = input('q2: ');
drei = input('q3: ');
i = 1;
q1 = 0;
q2 = 0;
q3 = 0;
while i <= 100
    i = i + 1;
    q1 = q1 + (eins/100)*(pi/180);
    q2 = q2 + (zwei/100)*(pi/180);
    q3 = q3 + (drei/100)*(pi/180);
    Rz = [
        cos(q1) -sin(q1) 0
        sin(q1) cos(q1) 0
        0 0 1];
    Tx = [
        1 0 1
        0 1 0
        0 0 1];
    first = Rz*Tx;
    one = [first(1,3),first(2,3)];
    Rz = [
        cos(q2) -sin(q2) 0
        sin(q2) cos(q2) 0
        0 0 1];
    second = first*Rz;
    second = second*Tx;
    two = [second(1,3),second(2,3)];
    Rz = [
        cos(q3) -sin(q3) 0
        sin(q3) cos(q3) 0
        0 0 1];
    third = second*Rz;
    third = third*Tx;
    three = [third(1,3),third(2,3)];
    disp(one);
    disp(two);
    disp(three);
    pause(0.1);
    plot([0 one(1)],[0 one(2)],'LineWidth',2);
    set(gca,'XLim',[-3 3]);
    set(gca,'YLim',[-3 3]);
    hold on;
    plot([one(1) two(1)],[one(2) two(2)],'LineWidth',2);
    plot([two(1) three(1)],[two(2) three(2)],'LineWidth',2);
    hold off;
end
hold off;