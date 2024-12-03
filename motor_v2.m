set(0, 'DefaultFigureRenderer', 'painters'); % Alternativa básica

% Datos
datos = {
    [43, 2.79; 93, 11.52; 143, 23.04; 193, 33.3; 243, 34.56; 293, 33.48; 343, 33.39; 393, 33.3; 443, 33.3; 493, 33.3; 543, 33.3; 593, 33.3; 643, 33.3; 693, 33.3; 743, 33.3; 793, 33.21; 843, 33.21; 893, 33.21; 943, 33.21; 993, 33.21; 1043, 33.21; 1093, 33.21; 1143, 33.21; 1193, 33.21; 1243, 33.21; 1293, 33.21; 1343, 33.12; 1393, 33.12; 1443, 33.12; 1493, 33.12; 1543, 33.12; 1594, 33.12; 1644, 33.12; 1694, 33.12; 1744, 33.12; 1794, 33.12; 1844, 33.03; 1894, 33.03; 1944, 33.03; 1994, 33.03];
    [2, 0.0; 52, 2.79; 102, 10.89; 152, 21.96; 202, 32.94; 252, 35.01; 302, 33.84; 352, 33.3; 402, 33.21; 452, 33.21; 502, 33.12; 552, 33.12; 602, 33.12; 652, 33.12; 702, 33.12; 752, 33.12; 802, 33.12; 852, 33.12; 902, 33.03; 952, 33.03; 1002, 33.03; 1052, 33.03; 1102, 33.03; 1152, 33.03; 1202, 33.03; 1252, 33.03; 1302, 33.03; 1352, 33.03; 1402, 33.03; 1452, 33.03; 1502, 33.03; 1552, 33.03; 1603, 33.03; 1653, 33.03; 1703, 33.03; 1753, 33.03; 1803, 33.03; 1853, 33.03; 1903, 33.03; 1953, 33.03];
    [2, -0.54; 52, 2.61; 102, 10.8; 152, 22.41; 202, 33.57; 252, 35.28; 302, 34.02; 352, 33.39; 402, 33.3; 452, 33.21; 502, 33.21; 552, 33.12; 602, 33.12; 652, 33.12; 702, 33.12; 752, 33.12; 802, 33.12; 852, 33.12; 902, 33.12; 952, 33.12; 1002, 33.12; 1052, 33.12; 1102, 33.12; 1152, 33.12; 1202, 33.12; 1252, 33.12; 1302, 33.12; 1352, 33.12; 1402, 33.12; 1453, 33.12; 1503, 33.12; 1553, 33.12; 1603, 33.12; 1653, 33.12; 1703, 33.12; 1753, 33.12; 1803, 33.12; 1853, 33.12; 1903, 33.12; 1953, 33.12];
    [0, 0.09; 50, 3.15; 100, 11.16; 150, 22.59; 200, 33.66; 250, 35.28; 300, 33.93; 350, 33.21; 400, 33.03; 450, 33.03; 500, 32.94; 550, 32.94; 600, 32.94; 650, 32.94; 700, 32.94; 750, 32.94; 800, 32.94; 850, 32.94; 900, 32.94; 950, 32.94; 1000, 32.94; 1050, 32.94; 1100, 32.94; 1150, 32.94; 1200, 32.94; 1250, 32.94; 1300, 32.94; 1350, 32.94; 1400, 32.94; 1450, 32.94; 1500, 32.94; 1550, 32.94; 1600, 32.94; 1650, 32.94; 1700, 32.94; 1750, 32.94; 1800, 32.94; 1850, 32.94; 1900, 32.94; 1950, 32.94];
    [0, 0.18; 50, 3.33; 100, 11.52; 150, 23.04; 200, 34.11; 250, 35.55; 300, 34.2; 350, 33.48; 400, 33.3; 450, 33.3; 500, 33.21; 550, 33.12; 600, 33.12; 650, 33.12; 700, 33.12; 750, 33.12; 800, 33.12; 850, 33.12; 900, 33.12; 950, 33.12; 1000, 33.12; 1050, 33.12; 1100, 33.12; 1150, 33.12; 1200, 33.12; 1250, 33.12; 1301, 33.12; 1351, 33.12; 1401, 33.12; 1451, 33.12; 1501, 33.12; 1551, 33.12; 1601, 33.12; 1651, 33.12; 1701, 33.12; 1751, 33.12; 1801, 33.12; 1851, 33.12; 1901, 33.12; 1951, 33.12]
};

% Ajustar tiempos y ángulos para cada medición
tiempos = cellfun(@(d) d(:,1) - d(1,1), datos, 'UniformOutput', false);
angulos = cellfun(@(d) d(:,2) - d(1,2) - 0.2, datos, 'UniformOutput', false);

% Crear un tiempo común para todas las mediciones
max_tiempo = max(cellfun(@(t) max(t), tiempos));
tiempo_comun = linspace(0, max_tiempo, 200);

% Interpolar ángulos para todas las mediciones al tiempo común
angulo_interpolada = cellfun(@(t, d) interp1(t, d, tiempo_comun, 'linear', 'extrap'), ...
    tiempos, angulos, 'UniformOutput', false);

% Convertir celdas en matriz [N_mediciones x N_puntos]
angulo_matrix = cell2mat(angulo_interpolada'); % Cada fila es una medición

% Calcular el error (desviación estándar) entre mediciones en cada punto
error_por_punto = std(angulo_matrix, 0, 1); % Desviación estándar por columna (entre mediciones)

% Calcular el error total por medición (suma de errores por fila)
error_por_medicion = sqrt(sum((angulo_matrix - mean(angulo_matrix, 1)).^2, 2));

% Asignar pesos inversamente proporcionales al error
pesos = 1 ./ error_por_medicion; % Pesos inversamente proporcionales al error
pesos = pesos / sum(pesos);      % Normalizar los pesos para que sumen 1

% Calcular el promedio ponderado
angulo_promedio_ponderado = sum(angulo_matrix .* pesos', 1);

% Suavizado adaptativo utilizando LOESS
span = 0.1; % Proporción de puntos vecinos utilizados (10%)
angulo_suavizado = smooth(angulo_promedio_ponderado, span, 'loess');

% Ajustar dimensiones antes de graficar
min_length = min(length(tiempo_comun), length(angulo_suavizado));
tiempo_comun = tiempo_comun(1:min_length);
angulo_suavizado = angulo_suavizado(1:min_length);

% Gráfica: Mediciones individuales y curva suavizada ponderada
figure;
hold on;
for i = 1:length(datos)
    plot(tiempos{i}, angulos{i}, 'LineWidth', 1.5, ...
        'DisplayName', sprintf('Medición %d', i));
end
plot(tiempo_comun, angulo_suavizado, 'k-', 'LineWidth', 2.5, ...
    'DisplayName', 'Curva Promedio Suavizada (Ponderada)');
title('Mediciones individuales y curva promedio ponderada');
xlabel('Tiempo ajustado (s)');
ylabel('Ángulo (°)');
legend('show', 'Location', 'best');
grid on;
hold off;



