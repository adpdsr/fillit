/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adu-pelo <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/11/24 14:06:03 by adu-pelo          #+#    #+#             */
/*   Updated: 2016/01/13 17:29:05 by adu-pelo         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	char *scpy;

	if (!(scpy = (char *)malloc(sizeof(char) * (ft_strlen(s1) + 1))))
		return (NULL);
	return (ft_strcpy(scpy, s1));
}
