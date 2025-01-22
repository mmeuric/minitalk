/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   minitalk.h                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmeuric <mmeuric@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/29 15:19:25 by mmeuric           #+#    #+#             */
/*   Updated: 2024/12/29 15:19:28 by mmeuric          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef MINITALK_H
# define MINITALK_H
# include <sys/types.h>
# include <unistd.h>
# include <stdlib.h>
# include <signal.h>
# include "../libft/libft.h"

void	init_sig(int sig, void (*handler)(int, siginfo_t *, void *));
#endif
