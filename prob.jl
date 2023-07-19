using Plots

function projectile_simulation(angle, initial_velocity, air_resistance)
    g = 9.81  # aceleração da gravidade em m/s^2
    dt = 0.01  # passo de tempo em segundos
    
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

angle = π/4
initial_velocity = 30.0
air_resistance = 0.05

x, y = projectile_simulation(angle, initial_velocity, air_resistance)

plot(x, y, xlabel="Posição x (m)", 
    ylabel="Posição y (m)", 
    title="Trajetória do Projétil",
    xlims=(0,100))

