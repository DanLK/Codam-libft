/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_printx.c                                        :+:    :+:            */
/*                                                     +:+                    */
/*   By: dloustal <dloustal@student.42.fr>            +#+                     */
/*                                                   +#+                      */
/*   Created: 2024/11/25 11:40:15 by dloustal      #+#    #+#                 */
/*   Updated: 2025/01/06 13:31:59 by dloustal      ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "../libft.h"
#include <unistd.h>

int	ft_printx(unsigned int x, char spec)
{
	char	buffer[20];
	char	*str;
	char	*hex;

	if (spec == 'x')
		hex = "0123456789abcdef";
	else if (spec == 'X')
		hex = "0123456789ABCDEF";
	else
		return (-1);
	str = buffer + 20;
	*--str = '\0';
	if (x == 0)
		*--str = '0';
	while (x > 0)
	{
		*--str = hex[x % 16];
		x /= 16;
	}
	ft_putstr_fd(str, STDOUT_FILENO);
	return (ft_strlen(str));
}

// #include <stdio.h>

// int	main(void)
// {
// 	// printf("%x\n", -42);
// 	printf("\nBytes printed: %d\n", ft_printx_upper(-42));
// 	return (0);
// }