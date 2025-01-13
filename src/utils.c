/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   utils.c                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mmeuric <mmeuric@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/12/29 14:56:17 by mmeuric           #+#    #+#             */
/*   Updated: 2024/12/29 15:10:05 by mmeuric          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../include/minitalk.h"

void	init_sig(int sig, void (*handler)(int, siginfo_t *, void *))
{
	struct sigaction	user;

	user.sa_sigaction = handler;
	user.sa_flags = SA_SIGINFO | SA_RESTART | SA_NODEFER;
	sigemptyset(&user.sa_mask);
	if (sig == SIGUSR1)
		sigaction(SIGUSR1, &user, 0);
	else if (sig == SIGUSR2)
		sigaction(SIGUSR2, &user, 0);
}
