%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Matlab Program made by Sumeet Kumar Sinha %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% (sumeet.kumar507@gmail.com) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  sumeetksinha.com %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function DD(forces,dsp,distloads,len,E,Izz,Iyy,J,A)

    Xmin = -0.01*len;
	Xmax =  1.01*len;

	Structural_Diagrams_2 = findobj('Tag','Structural_Diagrams_2');   	
	cla(Structural_Diagrams_2);	

	Structural_Diagrams_1 = findobj('Tag','Structural_Diagrams_1');    	
	cla(Structural_Diagrams_1);	axes (Structural_Diagrams_1); 

	t = waitbar(0,'Please wait...');
	waitbar(0.2);

	%%%%% Vy Mz --> gives y coordinates
		sf1 = forces(2); sf2 = forces(8);
		bm1 = forces(6); bm2 = forces(12);
		m = 1; w   = distloads(2);

		syms sf_y(x) bm_z(x) y_(x); Dy_ = diff(y_, x);
		sfy(x)=dsolve(diff(sf_y,1)==w,sf_y(0)==sf1);waitbar(0.3);
		bmz(x)=dsolve(diff(bm_z,1)==1*m*sfy(x),bm_z(0)==-bm1);waitbar(0.4);
		Y(x) =dsolve(diff(y_,2)==bmz(x)/Izz/E,  y_(0)==dsp(2),y_(len)==dsp(8)); waitbar(0.5);

	% x = linspace(0,len);
	% plot(x,Y(x)); hold on ;

	%%%%% Vz My --> gives z coordinates
		sf1 = forces(3); sf2 = forces(9);
		bm1 = forces(5); bm2 = forces(11);
		m = 1; w   = distloads(3);

		syms sf_z(x) bm_y(x) z_(x); Dz_ = diff(z_, x);
		sfz(x)=dsolve(diff(sf_z,1)==w,sf_z(0)==sf1);waitbar(0.6);
		bmy(x)=dsolve(diff(bm_y,1)==1*m*sfz(x),bm_y(0)==-bm1);waitbar(0.7);
		Z(x) =dsolve(diff(z_,2)==bmy(x)/E/Iyy, z_(0)==dsp(3),z_(len)==dsp(9));waitbar(0.8);

	x = linspace(0,len);
	plot3(Structural_Diagrams_1,x,Y(x),Z(x),'b','Linewidth',2);waitbar(0.95);
	xlabel(Structural_Diagrams_1,'x(m)');
    ylabel(Structural_Diagrams_1,'Disp_y(m)');
    zlabel(Structural_Diagrams_1,'Disp_z(m)');
    title(Structural_Diagrams_1,'Deflection Diagram','FontSize',12)
    Ymin =  int64(min(Y(x))-1);	Ymax = int64(max(Y(x))+1);
    % Structural_Diagrams_1.CameraPosition=[0,0,1];
    view(Structural_Diagrams_1,[0,0,1]);
    
    waitbar(1);
	close(t);

 % 	Structural_Diagrams_2.XLim = [Xmin  Xmax]
	% Structural_Diagrams_2.YLim = [Ymin Ymax]
	% axis([Xmin, Xmax,Ymin,Ymax])
	


	% %%%%% Vx --> gives x coordinates
	% sf1 = forces(1); sf2 = forces(7);
	% bm1 = forces(4); bm2 = forces(10);
	% m = 0; w   = distloads(1);
	% syms sf_x(x) bm_x(x) x_(x) theta_x(x);
	% sfx(x)=dsolve(diff(sf_x,1)==w,sf_x(0)==sf1,sf_x(len)==-sf2);
	% X(x) =dsolve(diff(x_,1)==sfx(x), x_(0)==dsp(1))

	% bmx(x)=dsolve(diff(bm_x,1)==0,bm_x(0)==-bm1,bm_x(len)==bm2);
	% Theta_X(x) =dsolve(diff(theta_x,1)==bmx(x), theta_x(0)==dsp(4));

	Structural_Diagrams_2 = findobj('Tag','Structural_Diagrams_2');   	
	Structural_Diagrams_1.Tag = 'Structural_Diagrams_1';
	Structural_Diagrams_2.Tag = 'Structural_Diagrams_2';

end

% Example Cantelever load with concentrated force at the end; DD([0,1,0,0,0,10,0,-1,0,0,0,0],[0,0,0,0,0,0,0,-333.33,0,0,0,-50],[0,0,0],10,1,1,1,1,1)
% Example Cantilever example with distributed load; DD([0,10,0,0,0,50,0,0,0,0,0,0],[0,0,0,0,0,0,0,-1250,0,0,0,-166.66],[0,-1,0],10,1,1,1,1,1)