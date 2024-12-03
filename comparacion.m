set(0, 'DefaultFigureRenderer', 'painters'); % Alternativa básica


%med = [0.188897, -0.739183, 0.769862, -0.053675, 0.118065, -0.206667];%5
%med = [-0.360664, 2.07463, -4.23518, 3.44324, -0.599921, -0.170445];%10
med = [-0.764364, 3.64227, -6.12533, 4.0149, -0.433743, -0.182461];%15

% Definir constantes físicas del sistema
F = 0.055;       % Fuerza ajustada (escala arbitraria)
g = 9.8;        % Aceleración de la gravedad [m/s^2]
m = 0.055;      % Masa de la bola [kg]
Rb = 0.04267;   % Radio de la bola [m]

% Calcular el momento de inercia de una esfera sólida
Jb = (2 / 5) * m * Rb^2;

% Convertir theta de grados a radianes
theta = deg2rad(-15);

% Crear un rango de tiempo (t)
t = linspace(0, 2, 100);  % Tiempo de 0 a 2 segundos

% Calcular x(t)
x = (-F * g * sin(theta) * t.^2) ./ (2 * (m + Jb / Rb^2)) - 0.20;

% Definir el polinomio de comparación
%med = [-0.764364, 3.64227, -6.12533, 4.0149, -0.433743, -0.182461];

% Evaluar el polinomio med en los puntos de tiempo t
polinomio_med = polyval(med, t);

% Graficar x(t) y el polinomio
figure;
hold on;
plot(t, x, 'b-', 'LineWidth', 2, 'DisplayName', 'Desp. x(t) - modelo');
plot(t, polinomio_med, 'r--', 'LineWidth', 2, 'DisplayName', 'Aprox. exp.');
title('Desplazamiento x(t) y Polinomio Ajustado', 'FontSize', 14);
xlabel('Tiempo (s)', 'FontSize', 12);
ylabel('Desplazamiento x (m)', 'FontSize', 12);
grid on;
legend('show', 'FontSize', 12);
ylim([-0.3, 0.3]);
xlim([0.0, 1.5]);
hold off;
