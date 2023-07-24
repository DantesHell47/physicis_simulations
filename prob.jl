using Plots

function projectile_simulation(angle, initial_velocity, air_resistance)
    g = 9.81  # aceleração da gravidade em m/s^2
    dt = 0.1  # passo de tempo em segundos
    
    v0x = initial_velocity * cos(angle)
    v0y = initial_velocity * sin(angle)
    
    position_x = [0.]
    position_y = [0.]
    
    while position_y[end] >= 0
        new_x = position_x[end] + v0x * dt
        new_y = position_y[end] + v0y * dt
        
        v0x -= air_resistance * v0x * dt
        v0y -= (g + air_resistance * v0y) * dt
        
        push!(position_x, new_x)
        push!(position_y, new_y)
    end
    
    return position_x, position_y
end

angle = π/2
initial_velocity = 30.
air_resistance = 0.05

x, y = projectile_simulation(angle, initial_velocity, air_resistance)
for i =1:length(x)
    graf1 = plot!([x[i]] , [y[i]], xlabel="Posição x (m)",
        markershape=:circle,
        ylabel="Posição y (m)", 
        title="Trajetória do Projétil",
        ylim=(0,50),
        xlims=(-10,100),legend=false)
        hline!([22.42624739135971], ls=:dash,color=:gray)
        vline!([43.3440012518362], ls=:dash,color=:gray)
        display(graf1)
        sleep(0.09)
end

# Criar o gráfico com vetores

for i in 1:length(x)
    v_x = initial_velocity * cosd(angle)
    v_y = initial_velocity * sind(angle) - 9.81 * (i * 0.01)  # Considerando g = 9.81 m/s^2
    graf3 = quiver!([x[i]], [y[i]], quiver=([v_x]/5, [v_y]/5), color=:red, linewidth=1, ylim=(0,50),xlims=(-10,100))
    display(graf3)
    sleep(0.1)
end