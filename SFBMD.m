%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Matlab Program made by Sumeet Kumar Sinha %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% (sumeet.kumar507@gmail.com) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  sumeetksinha.com %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function for displaying bending moment and shear force diagrams 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function SFBMD(option,forces,distloads,len)

    Xmin = -0.01*len;
	Xmax =  1.01*len;

	if(option==1)
		sf1 = forces(2); sf2 = forces(8);
		bm1 = forces(6); bm2 = forces(12);
		m = 1; w   = distloads(2);
		sf_label='Vy (KN)'; bm_label='Mz (KN)';
	end
	if(option==2)
		sf1 = forces(3); sf2 = forces(9);
		bm1 = forces(5); bm2 = forces(11);
		m = 1; w   = distloads(3);
		sf_label='Vz (KN)'; bm_label='My (KN)';
	end
	if(option==3)
		sf1 = forces(1); sf2 = forces(7);
		bm1 = forces(4); bm2 = forces(10);
		m = 0; w   = distloads(1);
		sf_label='Vx (KN)'; bm_label='Mx (KN)';
	end

	if(option ~=0)

		h = waitbar(0,'Please wait...');
		waitbar(0.2);
		syms sf_(x) bm_(x); 
		% sf(x)=dsolve(diff(sf_,1)==w,sf_(0)==sf1,sf_(len)==-sf2);
		%bm(x)=dsolve(diff(bm_,1)==1*m*sf(x),bm_(0)==-bm1,bm_(len)==bm2);
		sf(x)=dsolve(diff(sf_,1)==w,sf_(0)==sf1); waitbar(0.5);
		bm(x)=dsolve(diff(bm_,1)==1*m*sf(x),bm_(0)==-bm1);waitbar(0.7);
		diff(bm_,1)==1*m*sf(x);
		bm_(0)==-bm1;
		bm_(len)==bm2;

		x = linspace(0,len);

		%% Shear Force Diagram
    	
    	Structural_Diagrams_1 = findobj('Tag','Structural_Diagrams_1'); 
    	cla(Structural_Diagrams_1);	axes(Structural_Diagrams_1); 

	 	X = [0,x,len];	Y = [0,sf(x),0]; 
	 	fill(X,Y,'b','facealpha',0.15,'edgecolor','none'); hold on;
	 	plot([0,x,len],[0,sf(x),0],'b','Linewidth',2);hold off;
	 	refline(0,0); xlabel('x(m)'); ylabel(sf_label);
	 	title('Shear Force Diagram','FontSize',12);
	 	Ymin =  int64(min(Y)-1);	Ymax = int64(max(Y)+1);

	 	Structural_Diagrams_1.XLim =[Xmin Xmax];
	 	Structural_Diagrams_1.YLim =[Ymin Ymax];
	 	rotateXLabels( Structural_Diagrams_1, 90 );
	 	set(Structural_Diagrams_1,'FontSize',10);

	 	Structural_Diagrams_1.Tag = 'Structural_Diagrams_1';

	 	%% Bending Moment Diagram

	 	Structural_Diagrams_2 = findobj('Tag','Structural_Diagrams_2');  	
    	cla(Structural_Diagrams_2); axes(Structural_Diagrams_2); 

	 	X = [0,x,len];	Y = [0,-bm(x),0]; 
	 	fill(X,Y,'b','facealpha',0.15,'edgecolor','none'); hold on;
	 	plot([0,x,len],[0,-bm(x),0],'b','Linewidth',2);hold off;
	 	refline(0,0); xlabel('x(m)'); ylabel(bm_label);
	 	title('Bending Moment Diagram','FontSize',12);
	 	Ymin =  int64(min(Y)-1);	Ymax = int64(max(Y)+1);

	 	Structural_Diagrams_2.XLim = [Xmin  Xmax];
	 	Structural_Diagrams_2.YLim = [Ymin Ymax];
	 	rotateXLabels( Structural_Diagrams_2, 90 );
	 	set(Structural_Diagrams_2,'FontSize',10);

	 	Structural_Diagrams_2.Tag = 'Structural_Diagrams_2';

	 	waitbar(1);
	 	close(h)

 	end

end

% Example Cantelever load with concentrated force at the end; SFBMD(1,[0,1,0,0,0,10,0,-1,0,0,0,0],[0,0,0],10)
% Example Cantilever example with distributed load; SFBMD(1,[0,10,0,0,0,50,0,0,0,0,0,0],[0,-1,0],10)