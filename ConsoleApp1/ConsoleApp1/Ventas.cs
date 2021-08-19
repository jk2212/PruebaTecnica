using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class Ventas
    {
        static void Main()
        {
            float[] num = new float[6];
            float mayor = 0, menor = 0, acu = 0, promedio = 0;
            int flag = 0, diamayor=0, diamenor=0, semana;
            string psabado="";

            Console.Write("Ingrese {0}º número:");
            semana = int.Parse(Console.ReadLine());
            semana = semana * 6;

            for (int s = 0; s < semana; s++)
            {
                for (int i = 0; i < 6; i++)
                {
                    Console.Write("Ingrese {0}º número:", i + 1);
                   // num[i] = float.Parse(Console.ReadLine());

                    if (float.TryParse(Console.ReadLine(),out num[i]))
                    {
                        if (num[0] != -1)
                        {
                            if (flag == 0)
                            {
                                mayor = num[i];
                                menor = num[i];
                                flag = 1;
                            }
                            else
                            {
                                if (num[i] > mayor)
                                {
                                    mayor = num[i];

                                }


                                if (num[i] < menor)
                                {
                                    menor = num[i];
                                }

                                acu += num[i];
                                promedio = acu / 6;

                                if (num[5] > promedio)
                                {
                                    psabado = "Si";
                                }
                                else if (num[5] < promedio)
                                {
                                    psabado = "No";
                                }
                                else
                                {
                                    psabado = "Empate";
                                }


                            }
                        }
                        else
                        {
                            Console.Write("\n termino de ingresar las ventas de la semana \n");
                            break;
                        }
                    }

                }

            }
           
            if (mayor == menor)
                Console.Write("\nLas ventas son todos iguales\n");
            else
                Console.Write("\nLa menor venta es  {0} y la mayor es  {1} {2} {3}", menor, mayor, diamenor,diamayor +" "+ psabado);

            Console.Read();
        }
    }
}


