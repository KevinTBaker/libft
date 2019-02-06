/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atof.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbaker <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/01/23 18:49:12 by kbaker            #+#    #+#             */
/*   Updated: 2019/01/23 20:25:42 by kbaker           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

double 		ft_atof(char		*nbr)
{
     double		integerPart;
	 double		fractionPart;
	 int		divisorForFraction;
	 int		sign;
	 int		inFraction;

	 integerPart = 0;
	 fractionPart = 0;
	 divisorForFraction = 1;
	 sign = 1;
	 inFraction = 1;
	 if (!num || !*num)
         return 0; 
	 if (*num == '-')
     {
         num++;
         sign = -1;
     }
     else if (*num == '+')
     {
         ++num;
     }
     while (*num != '\0')
     {
         if (*num >= '0' && *num <= '9')
         {
             if (inFraction)
             {
                 fractionPart = fractionPart*10 + (*num - '0');
                 divisorForFraction *= 10;
             }
             else
             {
                 integerPart = integerPart*10 + (*num - '0');
             }
         }
         else if (*num == '.')
         {
             if (inFraction)
                 return sign * (integerPart + fractionPart/divisorForFraction);
             else
                 inFraction = 1;
         }
         else
         {
             return sign * (integerPart + fractionPart/divisorForFraction);
         }
         num++;
     }
     return sign * (integerPart + fractionPart/divisorForFraction);
}
