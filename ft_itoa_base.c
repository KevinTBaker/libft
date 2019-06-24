/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_itoa_base.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbaker <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/01/16 17:50:22 by kbaker            #+#    #+#             */
/*   Updated: 2019/06/23 17:59:10 by kbaker           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"
#include <stdlib.h>

char *ft_itoa_base(int value, int base)
{
        int  i;
        char *nbr;
        int  neg;

        i = 1;
        neg = 0;
        if (value < 0)
        {
                if (base == 10)
                        neg = 1;
                value *= -1;
        }
        while (ft_pow(base, i) - 1 < value)
                i++;
        nbr = (char*)malloc(sizeof(nbr) * i);
        nbr[i + neg] = '\0';
        while (i-- > 0)
        {
                nbr[i + neg] = (value % base) + (value % base > 9 ? 'A' - 10 : '0');
                value = value / base;
				 if (neg)
                nbr[0] = '-';
		}
        return (nbr);
}
