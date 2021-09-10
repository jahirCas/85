
f = input("Ingrese la funcion:","s")
x1 = input("Ingrese el punto x_1: ")
x2 = input("Ingrese el punto x_0: ")
er = input("Porcentaje del error:")
ezplot(f)
grid on
f = inline(f);
ea = 100;
i = 1;
fprintf('No Interaccion               Evaluacion\n');
while ea>er
  xi = x2-(f(x2)*(x1-x2))/(f(x1)-f(x2));
  ea = abs(((x1-x2)/xi)*100);
  fprintf("%4.0f                         %8.9f\n",i,xi);
  x1 = x2;
  x2 = xi;
  i = i+1;
end
fprintf("\nRespuesta de la funcion: %8.9f\nCalculada en %.0f Interacciones\n",x1,(i-1));