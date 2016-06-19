%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Matlab Program made by Sumeet Kumar Sinha %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% (sumeet.kumar507@gmail.com) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  sumeetksinha.com %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%              Input Variables              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%	nnodes == total number of nodes

%	coord(i,1:3) == node i's coordinates
%					coord(i,1) = X coordinate
%					coord(i,2) = Y coordinate
%					coord(i,3) = Z coordinate

%	concen(i,1:6) == 	concentrated loads for node i's 6 d.o.f.
%						concen(i,1) = force in global X direction
%						concen(i,2) = force in global Y direction
%						concen(i,3) = force in global Z direction
%						concen(i,4) = moment about global X axis
%						concen(i,5) = moment about global Y axis
%						concen(i,6) = moment about global Z axis

%	fixity(i,1:6) == 	fixity(i,1) = prescribed disp. in global X direction
%						fixity(i,2) = prescribed disp. in global Y direction
%						fixity(i,3) = prescribed disp. in global Z direction
%						fixity(i,4) = prescribed rotation about global X axis
%						fixity(i,5) = prescribed rotation about global Y axis
%						fixity(i,6) = prescribed rotation about global Z axis

%	nele == total number of elements

%	ends(i,1:2) == 	element i's nodal information
%					ends(i,1) = start node #
%					ends(i,2) = finish node #


%	A(i) 		== element i's cross sectional area
%	Izz(i) 		== element i's moment of inertia about its local z-z axis
%	Iyy(i) 		== element i's moment of inertia about its local y-y axis
%	J(i) 		== element i's torsional constant
%	E(i) 		== element i's material elastic modulus, Young's Modulus
%	v(i) 		== element i's material Poisson's ratio
%	beta_ang(i) == element i's web rotation angle. These values are
%	w 			== Element Distributed loads
%				   w(i,1) = distributed load in x direction (wx)
%				   w(i,2) = distributed load in y direction (wy)
%				   w(i,3) = distributed load in z direction (wz)


%    nnodes 	= input('Enter number of nodes in structure == ');
%    coord 		= load( input('Enter file for coordinates of nodes in structure == '));
%    concen 	= load( input('Enter file for concentrated loads at nodes in structure == '));
%    fixity 	= load( input('Enter file for fixity of nodes in structure == '));
%    nele 		= load( input('Enter file for number of elements in structure == '));
%    ends 		= load( input('Enter file for elements end connections in structure == '));
%    A 			= load( input('Enter file for area of elements in structure == '));
%    Izz 		= load( input('Enter file for Izz of elements in structure == '));
%    Iyy 		= load( input('Enter file for Iyy of elements in structure == '));
%    J 			= load( input('Enter file for J of elements in structure == '));
%    E 			= load( input('Enter file for Youngs Modulus (E) of elements in structure == '));
%    v 			= load( input('Enter file for poisons ratio (v) of elements in structure == '));
%    beta_ang	= load( input('Enter file for beta angle of elements in structure == '));
%    w 			= load( input('Enter file for distributed loads on elements in structure == '));
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%              Output Variables              %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%    DEFL(i,1:6)  == node i's calculated 6 d.o.f. deflections
%					 DEFL(i,1) = displacement in X direction
%					 DEFL(i,2) = displacement in Y direction
%					 DEFL(i,3) = displacement in Z direction
%					 DEFL(i,4) = rotation about X direction
%					 DEFL(i,5) = rotation about Y direction
%					 DEFL(i,6) = rotation about Z direction 

%   REACT(i,1:6) == reactions for supported node i's 6 d.o.f.
%                   REACT(i,1) = force in X direction
%                   REACT(i,2) = force in Y direction
%                   REACT(i,3) = force in Z direction
%                   REACT(i,4) = moment about X direction
%                   REACT(i,5) = moment about Y direction
%                   REACT(i,6) = moment about Z direction

%   ELE_FOR(i,1:12) == element i's internal forces and moments
%                      Note: All values reference the element's local
%                      coordinate system.
%                      ELE_FOR(i,1) = x-force at start node
%                      ELE_FOR(i,2) = y-force at start node
%                      ELE_FOR(i,3) = z-force at start node
%                      ELE_FOR(i,4) = x-moment at start node
%                      ELE_FOR(i,5) = y-moment at start node
%                      ELE_FOR(i,6) = z-moment at start node
%                      ELE_FOR(i,7) = x-force at end node
%                      ELE_FOR(i,8) = y-force at end node
%                      ELE_FOR(i,9) = z-force at end node
%                      ELE_FOR(i,10) = x-moment at end node
%                      ELE_FOR(i,11) = y-moment at end node
%                      ELE_FOR(i,12) = z-moment at end node

%   AFLAG == logical flag to indicate if a successful analysis has been completed
%			 AFLAG = 1   -> Successful
%			 AFLAG = 0   -> Unstable Structure
%			 AFLAG = inf ->	No analysis code available
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [DEFL, REACT, ELE_FOR, AFLAG]=Finiteleyzer( nnodes, nele, coord, concen, fixity, ends, A, Izz, Iyy, J, E, v, beta_ang, w)

	t = waitbar(0,'Please wait...');waitbar(0.1);

	DEFL=zeros(nnodes,6);
	REACT=zeros(nnodes,6);
	ELE_FOR=zeros(nele,12);

	% creating dof_id for each node
	node_id = 1:nnodes*6; node_id = reshape(node_id,6,nnodes)';waitbar(0.15);

	% creating mem_id for each element
	mem_id = zeros(nele,12); mem_id(:,1:6) = node_id(ends(:,1),:); mem_id(:,7:12) = node_id(ends(:,2),:);

	% creating free_dof and fixed_dof vectors
	D_vector = fixity'; D_vector = D_vector(:); free_dof = find(isnan(D_vector)); fixed_dof = find(D_vector==0);waitbar(0.2);

	% finding the length of element
	Length = sqrt(sum((coord(ends(:,1),:)'-coord(ends(:,2),:)').^2))';waitbar(0.3); 

	% finding x axis of the beam
	x_axis = (coord(ends(:,2),:)'-coord(ends(:,1),:)')'./([Length(:,1),Length(:,1),Length(:,1)]);

	% Building local_stiffness_stack
	k_local_stack = zeros(nele,12,12);waitbar(0.35);
	for i=1:nele
		k_local_stack(i,:,:) = estiff(A(i,1),Izz(i,1),Iyy(i,1),J(i,1),E(i,1),v(i,1),Length(i,1));% reshape(k_local_stack(i,:,:),12,12);
	end

	% Building local_global_transformation_stack
	k_trans_stack = zeros(nele,12,12);waitbar(0.5);
	for i=1:nele
		k_trans_stack(i,:,:) = etran(beta_ang(i,1),x_axis(i,:)'); %reshape(k_trans_stack(i,:,:),12,12)
	end

	% Building global_stiffness_stack
	k_global_stack = zeros(nele,12,12);waitbar(0.6);
	for i=1:nele
		k_global_stack(i,:,:) = (reshape(k_trans_stack(i,:,:),12,12))'*(reshape(k_local_stack(i,:,:),12,12))*(reshape(k_trans_stack(i,:,:),12,12));
	end	

	% Building total stiffness matrix
	k_total = zeros(nnodes*6,nnodes*6);waitbar(0.7);
	for i=1:nele
		k_total(mem_id(i,1:6),mem_id(i,1:6))   = k_total(mem_id(i,1:6),mem_id(i,1:6))   + reshape(k_global_stack(i,1:6,1:6),6,6)  ;
		k_total(mem_id(i,7:12),mem_id(i,1:6))  = k_total(mem_id(i,7:12),mem_id(i,1:6))  + reshape(k_global_stack(i,7:12,1:6),6,6) ;
		k_total(mem_id(i,1:6),mem_id(i,7:12))  = k_total(mem_id(i,1:6),mem_id(i,7:12))  + reshape(k_global_stack(i,1:6,7:12),6,6) ;
		k_total(mem_id(i,7:12),mem_id(i,7:12)) = k_total(mem_id(i,7:12),mem_id(i,7:12)) + reshape(k_global_stack(i,7:12,7:12),6,6);
	end

	k_total;

	%Addding Distributed Loads, Temperature Loads .. etc to Nodes
	concen_dl = zeros(nnodes,6);waitbar(0.8);
	for i=1:nele
		l = Length(i);
		F_d = [-w(i,1)*l/2;-w(i,2)*l/2;-w(i,3)*l/2;0;-w(i,3)*l^2/12;-w(i,2)*l^2/12;-w(i,1)*l/2;-w(i,2)*l/2;-w(i,3)*l/2;0;w(i,3)*l^2/12;w(i,2)*l^2/12];
		F_d = (reshape(k_trans_stack(i,:,:),12,12))'*(-F_d);
		concen_dl(ends(i,1),:) = concen_dl(ends(i,1),:)	+ F_d(1:6)' ;
		concen_dl(ends(i,2),:) = concen_dl(ends(i,2),:) + F_d(7:12)';
	end	

	% Total Load vector
	concen_tl = concen + concen_dl; waitbar(0.85);

	% Partitioning the matrix
	kff = k_total(free_dof,free_dof);
	kfs = k_total(free_dof,fixed_dof);
	ksf = k_total(fixed_dof,free_dof);
	kss = k_total(fixed_dof,fixed_dof);
	
	% Building force vector
	F_vector = concen_tl'; F_vector = F_vector(:);

	D_vector(free_dof) =  kff\(F_vector(free_dof)-kfs*D_vector(fixed_dof));
	F_vector(fixed_dof) = ksf*D_vector(free_dof) + kss*D_vector(fixed_dof);

	% Output matrix
	DEFL = reshape(D_vector,6,nnodes)';
	REACT = reshape(F_vector,6,nnodes)' - concen_tl;waitbar(0.95);

	for i=1:nele
		ELE_FOR(i,:) = (reshape(k_local_stack(i,:,:),12,12))*(reshape(k_trans_stack(i,:,:),12,12))*(D_vector(mem_id(i,1:12)));
		l = Length(i); F_d = [-w(i,1)*l/2;-w(i,2)*l/2;-w(i,3)*l/2;0;-w(i,3)*l^2/12;-w(i,2)*l^2/12;-w(i,1)*l/2;-w(i,2)*l/2;-w(i,3)*l/2;0;w(i,3)*l^2/12;w(i,2)*l^2/12];
		ELE_FOR(i,:) = ELE_FOR(i,:) + F_d(:)';
	end	

	ELE_FOR;
	AFLAG=1;

	waitbar(1);
	close(t);

end


