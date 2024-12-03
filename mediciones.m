set(0, 'DefaultFigureRenderer', 'painters'); % Alternativa básica

% Datos empíricos 

%mediciones en -5 grados
datos = {
    [0.16, 0.000; 0.21, 0.001; 0.26, 0.001; 0.31, 0.009; 0.37, 0.009; 0.42, 0.029; 0.47, 0.056; 0.52, 0.056; 0.57, 0.079; 0.63, 0.079; 0.68, 0.113; 0.73, 0.113; 0.78, 0.140; 0.84, 0.140; 0.89, 0.187; 0.94, 0.187; 0.99, 0.225; 1.04, 0.225; 1.10, 0.263; 1.15, 0.263; 1.20, 0.295; 1.25, 0.325; 1.30, 0.325; 1.36, 0.331; 1.41, 0.331; 1.46, 0.331; 1.51, 0.331; 1.57, 0.337; 1.62, 0.337; 1.67, 0.342; 1.72, 0.342; 1.77, 0.332; 1.83, 0.332; 1.88, 0.327; 1.93, 0.327; 1.98, 0.337],
    [0.47, 0.000; 0.52, 0.010; 0.57, 0.010; 0.63, 0.029; 0.68, 0.029; 0.73, 0.051; 0.78, 0.051; 0.83, 0.080; 0.89, 0.110; 0.94, 0.110; 0.99, 0.139; 1.04, 0.139; 1.10, 0.187; 1.15, 0.187; 1.20, 0.227; 1.25, 0.227; 1.30, 0.269; 1.36, 0.269; 1.41, 0.302; 1.46, 0.302; 1.51, 0.317; 1.57, 0.317; 1.62, 0.343; 1.67, 0.335; 1.72, 0.335; 1.77, 0.330; 1.83, 0.330; 1.88, 0.341; 1.93, 0.341; 1.98, 0.338],
    [0.16, 0.000; 0.21, 0.003; 0.26, 0.003; 0.31, 0.019; 0.37, 0.019; 0.42, 0.043; 0.47, 0.043; 0.52, 0.068; 0.57, 0.068; 0.63, 0.095; 0.68, 0.095; 0.73, 0.120; 0.78, 0.164; 0.83, 0.164; 0.89, 0.206; 0.94, 0.206; 0.99, 0.243; 1.04, 0.243; 1.10, 0.280; 1.15, 0.280; 1.20, 0.316; 1.25, 0.316; 1.30, 0.330; 1.36, 0.330; 1.41, 0.332; 1.46, 0.332; 1.51, 0.324; 1.57, 0.339; 1.62, 0.339; 1.67, 0.333; 1.72, 0.333; 1.77, 0.346; 1.83, 0.346; 1.88, 0.336; 1.93, 0.336; 1.98, 0.333],
    [0.68, 0.000; 0.73, 0.006; 0.78, 0.006; 0.83, 0.021; 0.89, 0.021; 0.94, 0.042; 0.99, 0.070; 1.04, 0.070; 1.10, 0.096; 1.15, 0.096; 1.20, 0.127; 1.25, 0.127; 1.30, 0.169; 1.36, 0.169; 1.41, 0.214; 1.46, 0.214; 1.51, 0.246; 1.57, 0.246; 1.62, 0.285; 1.67, 0.285; 1.72, 0.312; 1.77, 0.341; 1.83, 0.341; 1.88, 0.327; 1.93, 0.327; 1.98, 0.331],
    [0.00, 0.000; 0.05, 0.000; 0.10, 0.006; 0.16, 0.006; 0.21, 0.023; 0.26, 0.023; 0.31, 0.048; 0.36, 0.048; 0.42, 0.075; 0.47, 0.106; 0.52, 0.106; 0.57, 0.133; 0.63, 0.133; 0.68, 0.180; 0.73, 0.180; 0.78, 0.219; 0.83, 0.219; 0.89, 0.256; 0.94, 0.256; 0.99, 0.293; 1.04, 0.293; 1.10, 0.319; 1.15, 0.319; 1.20, 0.327; 1.25, 0.328; 1.30, 0.328; 1.36, 0.335; 1.41, 0.335; 1.46, 0.331; 1.51, 0.331; 1.57, 0.335; 1.62, 0.335; 1.67, 0.331; 1.72, 0.331; 1.77, 0.330; 1.83, 0.330; 1.88, 0.334; 1.93, 0.334; 1.98, 0.332]
    }; 

%Mediciones en -10 grados    
%datos = {
 %   [0.21,0.0; 0.26,0.004; 0.31,0.004; 0.37,0.027; 0.42,0.027; 0.47,0.061; 0.52,0.061; 0.57,0.103; 0.63,0.103; 0.68,0.153; 0.73,0.153; 0.78,0.219; 0.83,0.219; 0.89,0.282; 0.94,0.328; 0.99,0.328; 1.04,0.347; 1.1,0.347; 1.15,0.346; 1.2,0.346; 1.25,0.353; 1.3,0.353; 1.36,0.344; 1.41,0.344; 1.46,0.35; 1.51,0.35; 1.57,0.345; 1.62,0.345; 1.67,0.351; 1.72,0.348; 1.77,0.348; 1.83,0.351; 1.88,0.351; 1.93,0.374; 1.98,0.374];
  %  [0.52,0.0; 0.57,0.018; 0.63,0.018; 0.68,0.054; 0.73,0.054; 0.78,0.092; 0.84,0.133; 0.89,0.133; 0.94,0.209; 0.99,0.209; 1.04,0.262; 1.1,0.262; 1.15,0.317; 1.2,0.317; 1.25,0.344; 1.3,0.344; 1.36,0.337; 1.41,0.337; 1.46,0.345; 1.51,0.345; 1.57,0.344; 1.62,0.345; 1.67,0.345; 1.72,0.337; 1.77,0.337; 1.83,0.346; 1.88,0.346; 1.93,0.341; 1.98,0.341];
   % [0.0,0.0; 0.05,0.001; 0.1,0.001; 0.16,0.017; 0.21,0.017; 0.26,0.046; 0.31,0.046; 0.37,0.085; 0.42,0.085; 0.47,0.125; 0.52,0.125; 0.57,0.191; 0.63,0.191; 0.68,0.249; 0.73,0.306; 0.78,0.306; 0.83,0.34; 0.89,0.34; 0.94,0.338; 0.99,0.338; 1.04,0.342; 1.1,0.342; 1.15,0.345; 1.2,0.345; 1.25,0.342; 1.3,0.342; 1.36,0.346; 1.41,0.346; 1.46,0.369; 1.51,0.382; 1.57,0.382; 1.62,0.383; 1.67,0.383; 1.72,0.383; 1.77,0.383; 1.83,0.378; 1.88,0.378; 1.93,0.379; 1.98,0.379];
    %[0.57,0.0; 0.63,0.005; 0.68,0.005; 0.73,0.033; 0.78,0.033; 0.83,0.077; 0.89,0.117; 0.94,0.117; 0.99,0.17; 1.04,0.17; 1.1,0.239; 1.15,0.239; 1.2,0.293; 1.25,0.293; 1.3,0.336; 1.36,0.336; 1.41,0.34; 1.46,0.34; 1.51,0.344; 1.57,0.344; 1.62,0.345; 1.67,0.343; 1.72,0.343; 1.77,0.342; 1.83,0.342; 1.88,0.342; 1.93,0.342; 1.98,0.341];
    %[0.42,0.0; 0.47,0.002; 0.52,0.002; 0.57,0.016; 0.63,0.016; 0.68,0.051; 0.73,0.051; 0.78,0.091; 0.83,0.091; 0.89,0.135; 0.94,0.135; 0.99,0.204; 1.04,0.204; 1.1,0.259; 1.15,0.316; 1.2,0.316; 1.25,0.347; 1.3,0.347; 1.36,0.337; 1.41,0.337; 1.46,0.343; 1.51,0.343; 1.57,0.337; 1.62,0.337; 1.67,0.351; 1.72,0.351; 1.77,0.372; 1.83,0.372; 1.88,0.375; 1.93,0.376; 1.98,0.376]
    %}; 

%mediciones en -15 grados
%datos = {
    %[0.42,0.0; 0.47,0.0; 0.52,0.025; 0.57,0.025; 0.63,0.069; 0.68,0.069; 0.73,0.121; 0.78,0.121; 0.83,0.2; 0.89,0.2; 0.94,0.272; 0.99,0.272; 1.04,0.326; 1.1,0.326; 1.15,0.341; 1.2,0.341; 1.25,0.344; 1.3,0.344; 1.36,0.345; 1.41,0.349; 1.46,0.349; 1.51,0.348; 1.57,0.348; 1.62,0.346; 1.67,0.346; 1.72,0.35; 1.77,0.35; 1.83,0.353; 1.88,0.353; 1.93,0.366; 1.98,0.366];
    %[0.57,0.0; 0.63,0.0; 0.68,0.025; 0.73,0.025; 0.78,0.07; 0.83,0.07; 0.89,0.125; 0.94,0.125; 0.99,0.196; 1.04,0.196; 1.09,0.27; 1.15,0.33; 1.2,0.33; 1.25,0.345; 1.3,0.345; 1.36,0.341; 1.41,0.341; 1.46,0.348; 1.51,0.348; 1.56,0.344; 1.62,0.344; 1.67,0.348; 1.72,0.348; 1.77,0.334; 1.83,0.334; 1.88,0.353; 1.93,0.363; 1.98,0.363];
   % [0.42,0.0; 0.47,0.004; 0.52,0.004; 0.57,0.032; 0.63,0.032; 0.68,0.078; 0.73,0.078; 0.78,0.134; 0.83,0.134; 0.89,0.214; 0.94,0.214; 0.99,0.285; 1.04,0.285; 1.1,0.342; 1.15,0.342; 1.2,0.343; 1.25,0.348; 1.3,0.348; 1.36,0.338; 1.41,0.338; 1.46,0.323; 1.51,0.323; 1.57,0.339; 1.62,0.339; 1.67,0.347; 1.72,0.347; 1.77,0.346; 1.83,0.346; 1.88,0.343; 1.93,0.343; 1.98,0.354];
  %  [0.47,0.0; 0.52,0.0; 0.57,0.002; 0.63,0.032; 0.68,0.032; 0.73,0.081; 0.78,0.081; 0.83,0.131; 0.89,0.131; 0.94,0.217; 0.99,0.217; 1.04,0.293; 1.1,0.293; 1.15,0.344; 1.2,0.344; 1.25,0.344; 1.3,0.344; 1.36,0.348; 1.41,0.345; 1.46,0.345; 1.51,0.343; 1.56,0.343; 1.62,0.32; 1.67,0.32; 1.72,0.295; 1.77,0.295; 1.83,0.331; 1.88,0.331; 1.93,0.356; 1.98,0.356];
 %   [0.52,0.0; 0.57,0.0; 0.63,0.015; 0.68,0.015; 0.73,0.057; 0.78,0.057; 0.83,0.108; 0.89,0.108; 0.94,0.178; 0.99,0.259; 1.04,0.259; 1.1,0.323; 1.15,0.323; 1.2,0.342; 1.25,0.342; 1.3,0.345; 1.36,0.345; 1.41,0.348; 1.46,0.348; 1.51,0.349; 1.57,0.349; 1.62,0.341; 1.67,0.341; 1.72,0.345; 1.77,0.342; 1.83,0.342; 1.88,0.357; 1.93,0.357; 1.98,0.366];
%}; 




% Ajustar tiempos y distancias para cada medición
tiempos_ajustados = cellfun(@(d) d(:,1) - d(1,1), datos, 'UniformOutput', false);
distancias_ajustadas = cellfun(@(d) d(:,2) - d(1,2) - 0.2, datos, 'UniformOutput', false);

% Crear un tiempo común para todas las mediciones
max_tiempo = max(cellfun(@(t) max(t), tiempos_ajustados));
tiempo_comun = linspace(0, max_tiempo, 200);

% Interpolar distancias para todas las mediciones al tiempo común
distancia_interpolada = cellfun(@(t, d) interp1(t, d, tiempo_comun, 'linear', 'extrap'), ...
    tiempos_ajustados, distancias_ajustadas, 'UniformOutput', false);

% Calcular la distancia promedio a partir de las interpolaciones
distancia_promedio = mean(cell2mat(distancia_interpolada'), 1);

% Verificar y ajustar las dimensiones
if length(distancia_promedio) > length(tiempo_comun)
    distancia_promedio = distancia_promedio(1:length(tiempo_comun));
elseif length(distancia_promedio) < length(tiempo_comun)
    tiempo_comun = tiempo_comun(1:length(distancia_promedio));
end

% Suavizado adaptativo utilizando LOESS
span = 0.1; % Proporción de puntos vecinos utilizados (10%)
distancia_promedio_suavizada = smooth(distancia_promedio, span, 'loess');


% Definir constantes físicas del sistema
F = 0.02;       % Fuerza ajustada (escala arbitraria)
g = 9.8;        % Aceleración de la gravedad [m/s^2]
m = 0.055;      % Masa de la bola [kg]
Rb = 0.04267;   % Radio de la bola [m]

% Calcular el momento de inercia de una esfera sólida
Jb = (2 / 5) * m * Rb^2;

% Convertir theta de grados a radianes
theta = deg2rad(-15);

% Calcular x(t)
x = (-F * g * sin(theta) * t.^2) ./ (2 * (m + Jb / Rb^2)) - 0.20;



%% Gráfica 1: Mediciones individuales y curva promedio
figure;
hold on;
for i = 1:length(datos)
    plot(tiempos_ajustados{i}, distancias_ajustadas{i}, 'LineWidth', 1.5, ...
        'DisplayName', sprintf('Medición %d', i));
end
plot(tiempo_comun, distancia_promedio_suavizada, 'k-', 'LineWidth', 2.5, ...
    'DisplayName', 'Curva Promedio Suavizada (Adaptativa)');
%plot(t, x, 'b-', 'LineWidth', 2, 'DisplayName', 'Desplazamiento x(t)');
title('Mediciones individuales y curva promedio');
xlabel('Tiempo ajustado (s)');
ylabel('Distancia ajustada (m)');
legend('show', 'Location', 'best');
grid on;
ylim([-0.3, 0.3]);
xlim([0.0, 2.0]);
hold off;

%% Gráfica 2: Curva promedio y polinomio de Taylor
syms x
a = 1; % Punto alrededor del cual se desarrolla el Taylor
grado = 5; % Grado del polinomio

% Ajustar la curva promedio suavizada con un polinomio de ajuste global
coeficientes = polyfit(tiempo_comun, distancia_promedio_suavizada, grado);
func_promedio = poly2sym(coeficientes, x);
%[coef_taylor, terms] = coeffs(taylor_polinomio, x);
disp('Coeficientes del polinomio de Taylor:');
disp(vpa(coeficientes, 6)); % Mostrar los coeficientes con 6 cifras significativas


% Desarrollo de Taylor alrededor de 'a'
taylor_polinomio = taylor(func_promedio, x, 'ExpansionPoint', a, 'Order', grado+1);

% Convertir el polinomio de Taylor en una función para evaluación numérica
taylor_func = matlabFunction(taylor_polinomio);

% Evaluar el polinomio de Taylor en los puntos comunes
taylor_aprox = taylor_func(tiempo_comun);

% Graficar la curva promedio y el polinomio de Taylor
figure;
hold on;
plot(tiempo_comun, distancia_promedio_suavizada, 'b-', 'LineWidth', 2.5, ...
    'DisplayName', 'Curva Promedio Suavizada');
plot(tiempo_comun, taylor_aprox, 'r--', 'LineWidth', 2, ...
    'DisplayName', sprintf('Taylor (grado %d)', grado));
title('Curva promedio y polinomio de Taylor');
xlabel('Tiempo ajustado (s)');
ylabel('Distancia ajustada (m)');
legend('show', 'Location', 'best');
grid on;
hold off;
