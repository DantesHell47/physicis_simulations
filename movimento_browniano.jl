using Plots

# Parâmetros da simulação
n_steps = 1000    # Número de passos
delta_t = 10.1     # Tamanho do intervalo de tempo entre os passos
diffusion_coefficient = 10.1 # O Coeficiente de difusão, controla o quão espalhada é trajetória. Quanto maior o coeficiente de difusão, mais ampla será a dispersão da partícula.

function movimento_browniano(n_steps, delta_t, diffusion_coefficient)


    # Inicialização da posição
    x = zeros(Float64, n_steps + 1)

    # Simulação do movimento browniano
    for i in 2:(n_steps + 1)
        # Gere um deslocamento aleatório usando uma distribuição normal
        dx = sqrt(2 * diffusion_coefficient * delta_t) * randn()
        
        # Atualize a posição
        x[i] = x[i - 1] + dx
    end

    # Plot da trajetória
    plot(0:n_steps, x, 
        xlabel="Tempo", 
        ylabel="Posição", 
        label="Movimento Browniano",
        legend=:topright,
        c=:black,
        lw=3.
    )

    savefig()

end    