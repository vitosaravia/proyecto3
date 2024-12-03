set(0, 'DefaultFigureRenderer', 'painters'); % Alternativa básica

% Datos empíricos para -5° (todas las mediciones)
datos = {
    [0.16, 0.000; 0.21, 0.001; 0.26, 0.001; 0.31, 0.009; 0.37, 0.009; 0.42, 0.029; 0.47, 0.056; 0.52, 0.056; 0.57, 0.079; 0.63, 0.079; 0.68, 0.113; 0.73, 0.113; 0.78, 0.140; 0.84, 0.140; 0.89, 0.187; 0.94, 0.187; 0.99, 0.225; 1.04, 0.225; 1.10, 0.263; 1.15, 0.263; 1.20, 0.295; 1.25, 0.325; 1.30, 0.325; 1.36, 0.331; 1.41, 0.331; 1.46, 0.331; 1.51, 0.331; 1.57, 0.337; 1.62, 0.337; 1.67, 0.342; 1.72, 0.342; 1.77, 0.332; 1.83, 0.332; 1.88, 0.327; 1.93, 0.327; 1.98, 0.337];
    [0.47, 0.000; 0.52, 0.010; 0.57, 0.010; 0.63, 0.029; 0.68, 0.029; 0.73, 0.051; 0.78, 0.051; 0.83, 0.080; 0.89, 0.110; 0.94, 0.110; 0.99, 0.139; 1.04, 0.139; 1.10, 0.187; 1.15, 0.187; 1.20, 0.227; 1.25, 0.227; 1.30, 0.269; 1.36, 0.269; 1.41, 0.302; 1.46, 0.302; 1.51, 0.317; 1.57, 0.317; 1.62, 0.343; 1.67, 0.335; 1.72, 0.335; 1.77, 0.330; 1.83, 0.330; 1.88, 0.341; 1.93, 0.341; 1.98, 0.338];
    [0.16, 0.000; 0.21, 0.003; 0.26, 0.003; 0.31, 0.019; 0.37, 0.019; 0.42, 0.043; 0.47, 0.043; 0.52, 0.068; 0.57, 0.068; 0.63, 0.095; 0.68, 0.095; 0.73, 0.120; 0.78, 0.164; 0.83, 0.164; 0.89, 0.206; 0.94, 0.206; 0.99, 0.243; 1.04, 0.243; 1.10, 0.280; 1.15, 0.280; 1.20, 0.316; 1.25, 0.316; 1.30, 0.330; 1.36, 0.330; 1.41, 0.332; 1.46, 0.332; 1.51, 0.324; 1.57, 0.339; 1.62, 0.339; 1.67, 0.333; 1.72, 0.333; 1.77, 0.346; 1.83, 0.346; 1.88, 0.336; 1.93, 0.336; 1.98, 0.333];
    [0.68, 0.000; 0.73, 0.006; 0.78, 0.006; 0.83, 0.021; 0.89, 0.021; 0.94, 0.042; 0.99, 0.070; 1.04, 0.070; 1.10, 0.096; 1.15, 0.096; 1.20, 0.127; 1.25, 0.127; 1.30, 0.169; 1.36, 0.169; 1.41, 0.214; 1.46, 0.214; 1.51, 0.246; 1.57, 0.246; 1.62, 0.285; 1.67, 0.285; 1.72, 0.312; 1.77, 0.341; 1.83, 0.341; 1.88, 0.327; 1.93, 0.327; 1.98, 0.331];
    [0.00, 0.000; 0.05, 0.000; 0.10, 0.006; 0.16, 0.006; 0.21, 0.023; 0.26, 0.023; 0.31, 0.048; 0.36, 0.048; 0.42, 0.075; 0.47, 0.106; 0.52, 0.106; 0.57, 0.133; 0.63, 0.133; 0.68, 0.180; 0.73, 0.180; 0.78, 0.219; 0.83, 0.219; 0.89, 0.256; 0.94, 0.256; 0.99, 0.293; 1.04, 0.293; 1.10, 0.319; 1.15, 0.319; 1.20, 0.327; 1.25, 0.328; 1.30, 0.328; 1.36, 0.335; 1.41, 0.335; 1.46, 0.331; 1.51, 0.331; 1.57, 0.335; 1.62, 0.335; 1.67, 0.331; 1.72, 0.331; 1.77, 0.330; 1.83, 0.330; 1.88, 0.334; 1.93, 0.334; 1.98, 0.332]
};

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

%% Gráfica 1: Mediciones individuales y curva promedio
figure;
hold on;
for i = 1:length(datos)
    plot(tiempos_ajustados{i}, distancias_ajustadas{i}, 'LineWidth', 1.5, ...
        'DisplayName', sprintf('Medición %d', i));
end
plot(tiempo_comun, distancia_promedio_suavizada, 'k-', 'LineWidth', 2.5, ...
    'DisplayName', 'Curva Promedio Suavizada (Adaptativa)');
title('Mediciones individuales y curva promedio');
xlabel('Tiempo ajustado (s)');
ylabel('Distancia ajustada (m)');
legend('show', 'Location', 'best');
grid on;
hold off;

%% Gráfica 2: Curva promedio y polinomio de Taylor
syms x
a = 1; % Punto alrededor del cual se desarrolla el Taylor
grado = 4; % Grado del polinomio

% Ajustar la curva promedio suavizada con un polinomio de ajuste global
coeficientes = polyfit(tiempo_comun, distancia_promedio_suavizada, grado);
func_promedio = poly2sym(coeficientes, x);
[coef_taylor, terms] = coeffs(taylor_polinomio, x);
disp('Coeficientes del polinomio de Taylor:');
disp(vpa(coef_taylor, 6)); % Mostrar los coeficientes con 6 cifras significativas


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
