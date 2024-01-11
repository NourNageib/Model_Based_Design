    %position var
    circleRadius=15;
    circle_position_x=103;
    g_position_y=106;
    y_position_y=124;
    r_position_y=142;
    
    %colour code define 
    red_dark=[0.4 0 0];
    yellow_dark=[0.4 0.4 0];
    green_dark=[0   0.4 0];
    
    
    % Define outline parameter
    outline = [40, 40, 150, 150];

    rectangle('Position', outline, 'FaceColor', 'white');
    % Define body parameter
     body = [100,100, 20, 60]; 
     rectangle('Position', body, 'FaceColor', 'black');
    
     stick = [107.5,70, 5,30]; 
    %Create the stick
    rectangle('Position', stick, 'FaceColor', 'black');
 
    red_circle    = rectangle('Position', [circle_position_x, r_position_y, circleRadius, circleRadius], 'Curvature', [1, 1], 'FaceColor',red_dark );
    yellow_circle = rectangle('Position', [circle_position_x, y_position_y, circleRadius, circleRadius], 'Curvature', [1, 1], 'FaceColor', yellow_dark);
    green_circle  = rectangle('Position', [circle_position_x, g_position_y, circleRadius, circleRadius], 'Curvature', [1, 1], 'FaceColor',green_dark );

    text(110, 180, 'Traffic Light', 'FontSize', 20, 'FontWeight', 'bold', 'HorizontalAlignment', 'center');

    while true
        
        set(red_circle,'FaceColor','red');
        pause(3);
        set(red_circle,'FaceColor',red_dark);
        set(yellow_circle,'FaceColor','yellow');
        pause(3);
        set(yellow_circle,'FaceColor',yellow_dark);
        set(green_circle,'FaceColor','green');
        pause(3);
        set(green_circle,'FaceColor',green_dark);
        
        %event to break loop
        if strcmp(get(gcf, 'currentkey'), 'q')
            break;
        end
        
        
    end
        
    