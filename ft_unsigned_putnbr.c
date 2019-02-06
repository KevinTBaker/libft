/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_unsigned_putnbr.c                               :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: kbaker <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/01/16 18:13:16 by kbaker            #+#    #+#             */
/*   Updated: 2019/01/17 21:04:27 by kbaker           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void    ft_unsigned_putnbr(int nb)
{
        if (nb < 0)
        {
                ft_putstr("4294967295");
        }
        if (nb >= 10)
        {
                ft_putnbr(nb / 10);
                ft_putnbr(nb % 10);
        }
        else
                ft_putchar(nb + '0');
}
