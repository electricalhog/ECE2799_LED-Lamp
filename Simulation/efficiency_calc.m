import_sim_data

v_input = @(t) 393 * sin(2*pi*300*t);

p_input = v_input(LT3799_1_DC1816A.time) .* LT3799_1_DC1816A.I_L4_;
p_output = LT3799_1_DC1816A.V_out_ .* LT3799_1_DC1816A.I_D5_;

figure;
subplot(3,1,1);
hold on;
grid on;

plot(LT3799_1_DC1816A.time,LT3799_1_DC1816A.V_out_, 'DisplayName',"V_out")
plot(LT3799_1_DC1816A.time,LT3799_1_DC1816A.V_n023_, 'DisplayName',"V_ctrl")
plot(LT3799_1_DC1816A.time,v_input(LT3799_1_DC1816A.time), 'DisplayName',"V_in")

subplot(3,1,2);
hold on;
grid on;

plot(LT3799_1_DC1816A.time,LT3799_1_DC1816A.I_D5_, 'DisplayName',"I_out")
plot(LT3799_1_DC1816A.time,LT3799_1_DC1816A.I_L4_, 'DisplayName',"I_in")

subplot(3,1,3);
hold on;
grid on;

plot(LT3799_1_DC1816A.time,p_input, 'DisplayName',"P_in")
plot(LT3799_1_DC1816A.time,p_output, 'DisplayName',"P_out")

efficiency = mean(p_output(1:end-1),1)/mean(p_input(1:end-1),1)