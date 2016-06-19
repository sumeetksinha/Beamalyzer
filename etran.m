%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Matlab Program made by Sumeet Kumar Sinha %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% (sumeet.kumar507@gmail.com) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  sumeetksinha.com %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function for evaluating elment transformation matrix from local to global coordinates
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function[gamma] = etran(beta_angle,xaxis)

	% Transformation Matrix for 3D frame member.
	%   beta_angle = Crossectional-Area of The Beam. 
    %   xaxis      = Moment of Area of Beam about Izz-Axis.

    R_zero = zeros(3,3); e_y = [0;1;0]; 
    
    alpha_x = xaxis./sqrt(sum(xaxis.^2));
    
    if(alpha_x(1)==0 && (alpha_x(2)==1 || alpha_x(2)==-1) && alpha_x(3)==0);
        e_y = [-1;0;0];        
    end
    
    alpha_z = cross(alpha_x,e_y)./sqrt(sum(cross(alpha_x,e_y).^2));
    alpha_y = cross(alpha_z,alpha_x)./sqrt(sum(cross(alpha_z,alpha_x).^2));
    
    R_axis = [  alpha_x' ; alpha_y' ; alpha_z'];
    
    R_beta = [	1	,0                  ,0                  ;
                0	,cos(beta_angle)	,sin(beta_angle)    ;
                0	,-sin(beta_angle)	,cos(beta_angle)	];
            
    R = R_beta * R_axis;

    gamma = [	R           ,R_zero     ,R_zero     ,R_zero   ;
    			R_zero      ,R          ,R_zero     ,R_zero   ;
    			R_zero      ,R_zero     ,R          ,R_zero   ;
                R_zero      ,R_zero     ,R_zero     ,R        ;];
end