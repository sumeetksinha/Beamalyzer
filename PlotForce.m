%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Matlab Program made by Sumeet Kumar Sinha %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% (sumeet.kumar507@gmail.com) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  sumeetksinha.com %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function for displaying forces and moments
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function PlotForce(centre,radius,force)

	radius = 0.04;

	% Plot Fx
	if (force(1)~=0)
		text(centre(1)-radius,centre(2),centre(3),strcat(' Fx = ',num2str(force(1)),'\rightarrow'),'fontsize',20,'color','b','FontWeight','bold','HorizontalAlignment','right','Rotation',0);
	end

	% Plot Fy
	if (force(2)~=0)
		text(centre(1),centre(2)-radius,centre(3),strcat(' Fy = ',num2str(force(2)),'\rightarrow'),'fontsize',20,'color','b','FontWeight','bold','HorizontalAlignment','right','Rotation',90);
	end

	% Plot Fz
	if (force(3)~=0)
		text(centre(1)-radius/sqrt(2),centre(2)-radius/sqrt(2),centre(3),strcat(' Fz = ',num2str(force(3)),'\rightarrow'),'fontsize',20,'color','b','FontWeight','bold','HorizontalAlignment','right','Rotation',45);
	end

	% Plot Mx
	if (force(4)~=0)
		text(centre(1)+radius,centre(2),centre(3),strcat(' Mx = ',num2str(force(4)),'\rightarrow'),'fontsize',20,'color','b','FontWeight','bold','HorizontalAlignment','right','Rotation',180);
	end

	% Plot My
	if (force(5)~=0)
		text(centre(1),centre(2)+radius,centre(3),strcat(' My = ',num2str(force(5)),'\rightarrow'),'fontsize',20,'color','b','FontWeight','bold','HorizontalAlignment','right','Rotation',270);
	end

	% Plot Mz
	if (force(6)~=0)
		text(centre(1)+radius/sqrt(2),centre(2)+radius/sqrt(2),centre(3),strcat(' Mz = ',num2str(force(6)),'\rightarrow'),'fontsize',20,'color','b','FontWeight','bold','HorizontalAlignment','right','Rotation',225);
	end

	 % SFBM('Prob 200',[10,0,10],{'CF',2,0},{'DF',[5,5],[0,10]},{'M',10,0},{'CF',-2,10},{'M',-10,0})
	
end