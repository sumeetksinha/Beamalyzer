%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Matlab Program made by Sumeet Kumar Sinha %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% (sumeet.kumar507@gmail.com) %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  sumeetksinha.com %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function varargout = Beamalyzer(varargin)
% BEAMALYZER MATLAB code for Beamalyzer.fig
%      BEAMALYZER, by itself, creates a new BEAMALYZER or raises the existing
%      singleton*.
%
%      H = BEAMALYZER returns the handle to a new BEAMALYZER or the handle to
%      the existing singleton*.
%
%      BEAMALYZER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BEAMALYZER.M with the given input arguments.
%
%      BEAMALYZER('Property','Value',...) creates a new BEAMALYZER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Beamalyzer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Beamalyzer_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Beamalyzer

% Last Modified by GUIDE v2.5 30-Nov-2015 01:09:22

% Begin initialization code - DO NOT EDIT

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Beamalyzer_OpeningFcn, ...
                   'gui_OutputFcn',  @Beamalyzer_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Beamalyzer is made visible.
function Beamalyzer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Beamalyzer (see VARARGIN)

% Choose default command line output for Beamalyzer
handles.output = hObject;

CleanAll();

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Beamalyzer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Beamalyzer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global node_temp_var;
Node_Data_Table = findobj('Tag','Node_Data_Table');
Node_Data_Table.Data = zeros(size(node_temp_var));
node_temp_var = zeros(size(node_temp_var));



% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_node_main_Var()

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global node_main_var node_temp_var;
Node_Data_Table = findobj('Tag','Node_Data_Table');
Node_Data_Table.Data = node_main_var;
node_temp_var= node_main_var;

% --- Executes on button press in pushbutton21.
function pushbutton21_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton20.
function pushbutton20_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton19.
function pushbutton19_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton18.
function pushbutton18_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton17.
function pushbutton17_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton16.
function pushbutton16_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton15.
function pushbutton15_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, ~)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global element_temp_var;
Element_Data_Table = findobj('Tag','Element_Data_Table');
Element_Data_Table.Data = zeros(size(element_temp_var));
element_temp_var = zeros(size(element_temp_var));

% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_element_main_Var()


% --- Executes on button press in pushbutton14.
function pushbutton14_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global element_main_var element_temp_var;
Element_Data_Table = findobj('Tag','Element_Data_Table');
Element_Data_Table.Data = element_main_var;
element_temp_var= element_main_var;


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over text2.
function text2_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in text2.
function text2_Callback(hObject, eventdata, handles)
% hObject    handle to text2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global node_identifier node_main_var node_temp_var; node_identifier=0;
if (get(hObject,'Value')==1)
    Node_Data_Table = findobj('Tag','Node_Data_Table');
    get_node_main_Var();
    Node_Data_Table.Data = node_main_var;
    Node_Data_Table.ColumnName={'number of nodes'};
    node_temp_var =node_main_var;
end

% Hint: get(hObject,'Value') returns toggle state of text2


% --- Executes on button press in pushbutton22.
function pushbutton22_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global node_main_var node_temp_var;
[filename,filepath]=uigetfile({'*.*','All Files'},'Select Data File');
filename = strcat(filepath,filename);
if (isempty(filename))
  return;
end

rawdata=load(filename);
if ( (size(rawdata,1) > size(node_main_var,1)) || (size(rawdata,2) ~= size(node_main_var,2)))
    errordlg('Check the size of variable and your File content size whether it matches or not','Size MisMatch Error');
else
    Node_Data_Table = findobj('Tag','Node_Data_Table');
    Node_Data_Table.Data(1:size(rawdata,1),:) = rawdata;
    node_temp_var = Node_Data_Table.Data;
end


% --- Executes when entered data in editable cell(s) in Node_Data_Table.
function Node_Data_Table_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to Node_Data_Table (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
global node_temp_var;
node_temp_var = get(hObject,'Data');


% --- Executes on button press in text3.
function text3_Callback(hObject, eventdata, handles)
% hObject    handle to text3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of text3
global node_identifier node_main_var node_temp_var; node_identifier=1;
if (get(hObject,'Value')==1)
    Node_Data_Table = findobj('Tag','Node_Data_Table');
    get_node_main_Var();
    Node_Data_Table.Data = node_main_var;
    Node_Data_Table.ColumnName={'X_cord','Y_Cord','Z_cord'};
    node_temp_var =node_main_var;
end

function get_node_main_Var()
% gets the main variable with the help of identifier
global node_main_var node_identifier;
global nnodes coord concen fixity;

switch node_identifier
        case 0
            node_main_var = nnodes;
        case 1
            node_main_var = coord;
        case 2
            node_main_var = concen;
        case 3
            node_main_var = fixity;
end

function get_element_main_Var()
% gets the main variable with the help of identifier
global element_main_var element_identifier;
global nele ends beta_ang w;

switch element_identifier
        case 0
            element_main_var = nele;
        case 1
            element_main_var = ends;
        case 2
            element_main_var = beta_ang;
        case 3
            element_main_var = w;
end


function get_material_main_Var()
% gets the main variable with the help of identifier
global material_main_var material_identifier;
global A Izz Iyy J E v ;

switch material_identifier
        case 0
            material_main_var = A;
        case 1
            material_main_var = Izz;
        case 2
            material_main_var = Iyy;
        case 3
            material_main_var = J;
        case 4
            material_main_var = E;
        case 5
            material_main_var = v;
end

function get_output_main_Var()
% gets the main variable with the help of identifier
global output_main_var output_identifier;
global DEFL REACT ELE_FOR;

switch output_identifier
        case 0
            output_main_var = DEFL;
        case 1
            output_main_var = REACT;
        case 2
            output_main_var = ELE_FOR;
end

function set_node_main_Var()
% gets the main variable with the help of identifier
global node_main_var node_temp_var node_identifier;
global nnodes coord concen fixity;

node_main_var =node_temp_var;

switch node_identifier
        case 0
            if (node_temp_var >= nnodes)
                coord = [coord; zeros(node_temp_var-nnodes,3)];
                concen = [concen; zeros(node_temp_var-nnodes,6)];
                fixity = [fixity; zeros(node_temp_var-nnodes,6)];
            end
            if (node_temp_var < nnodes)
                coord = coord(1:node_temp_var,:);
                concen = concen(1:node_temp_var,:);
                fixity = fixity(1:node_temp_var,:);

            end
            nnodes = node_temp_var;
             
        case 1
             coord = node_temp_var;
        case 2
             concen = node_temp_var;
        case 3
             fixity = node_temp_var;
end

function set_element_main_Var()
% gets the main variable with the help of identifier
global element_main_var element_temp_var element_identifier;
global nele ends beta_ang w A Izz Iyy J E v;

element_main_var =element_temp_var;

switch element_identifier
        case 0
            if (element_temp_var >= nele)
                ends = [ends; zeros(element_temp_var-nele,2)];
                beta_ang = [beta_ang; zeros(element_temp_var-nele,1)];
                w = [w; zeros(element_temp_var-nele,3)];
                A = [A; zeros(element_temp_var-nele,1)];
                Izz = [Izz; zeros(element_temp_var-nele,1)];
                Iyy = [Iyy; zeros(element_temp_var-nele,1)];
                J = [J; zeros(element_temp_var-nele,1)];
                E = [E; zeros(element_temp_var-nele,1)];
                v = [v; zeros(element_temp_var-nele,1)];
            end
            if (element_temp_var < nele)
                ends = ends(1:element_temp_var,:);
                beta_ang = beta_ang(1:element_temp_var,:);
                w = w(1:element_temp_var,:);
                A = A(1:element_temp_var,:);
                Izz = Izz(1:element_temp_var,:);
                Iyy = Iyy(1:element_temp_var,:);
                J = J(1:element_temp_var,:);
                E = E(1:element_temp_var,:);
                v = v(1:element_temp_var,:);
            end
            nele = element_temp_var;
        case 1
            ends = element_temp_var;   
        case 2
             beta_ang = element_temp_var;
        case 3
             w = element_temp_var;
end

function set_material_main_Var()
% gets the main variable with the help of identifier
global material_main_var material_temp_var material_identifier;
global A Izz Iyy J E v;

material_main_var =material_temp_var;

switch material_identifier
        case 0
             A = material_temp_var;
        case 1
             Izz = material_temp_var;
        case 2
             Iyy = material_temp_var;
        case 3
             J = material_temp_var;
        case 4
             E = material_temp_var;
        case 5
             v = material_temp_var;
end

% --- Executes on button press in text4.
function text4_Callback(hObject, eventdata, handles)
% hObject    handle to text4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of text3
global node_identifier node_main_var node_temp_var; node_identifier=3;
if (get(hObject,'Value')==1)
    Node_Data_Table = findobj('Tag','Node_Data_Table');
    get_node_main_Var();
    Node_Data_Table.Data = node_main_var;
    Node_Data_Table.ColumnName={'ux','uy','uz','rx','ry','rz'};
    Node_Data_Table.ColumnEditable = [true, true, true, true, true, true];
    node_temp_var =node_main_var;
end


% --- Executes on button press in text5.
function text5_Callback(hObject, eventdata, handles)
% hObject    handle to text5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of text5
global node_identifier node_main_var node_temp_var; node_identifier=2;
if (get(hObject,'Value')==1)
    Node_Data_Table = findobj('Tag','Node_Data_Table');
    get_node_main_Var();
    Node_Data_Table.Data = node_main_var;
    Node_Data_Table.ColumnName={'Fx','Fy','Fz','Mx','My','Mz'};
    Node_Data_Table.ColumnEditable = [true, true, true, true, true, true];
    node_temp_var =node_main_var;
end


% --- Executes during object creation, after setting all properties.
function Node_Panel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes during object creation, after setting all properties.
function pushbutton22_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in pushbutton23.
function pushbutton23_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global element_main_var element_temp_var;
[filename,filepath]=uigetfile({'*.*','All Files'},'Select Data File');
filename = strcat(filepath,filename);
if (isempty(filename))
  return;
end

rawdata=load(filename);
if ( (size(rawdata,1) > size(element_main_var,1)) || (size(rawdata,2) ~= size(element_main_var,2)))
    errordlg('Check the size of variable and your File content size whether it matches or not','Size MisMatch Error');
else
    Element_Data_Table = findobj('Tag','Element_Data_Table');
    Element_Data_Table.Data(1:size(rawdata,1),:) = rawdata;
    element_temp_var = Element_Data_Table.Data;
end

% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1
global element_identifier element_main_var element_temp_var ; element_identifier=0;
if (get(hObject,'Value')==1)
    Element_Data_Table = findobj('Tag','Element_Data_Table');
    get_element_main_Var();
    Element_Data_Table.Data = element_main_var;
    Element_Data_Table.ColumnName={'Number of Elements'};
    element_temp_var = element_main_var;
end


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2
global element_identifier element_main_var element_temp_var; element_identifier=1;
if (get(hObject,'Value')==1)
    Element_Data_Table = findobj('Tag','Element_Data_Table');
    get_element_main_Var();
    Element_Data_Table.Data = element_main_var;
    Element_Data_Table.ColumnName={'Start_node','End_node'};
    element_temp_var = element_main_var;
end


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
global element_identifier element_main_var element_temp_var; element_identifier=2;
if (get(hObject,'Value')==1)
    Element_Data_Table = findobj('Tag','Element_Data_Table');
    get_element_main_Var();
    Element_Data_Table.Data = element_main_var;
    Element_Data_Table.ColumnName={'Beta_Angle'};
    element_temp_var = element_main_var;
end


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
global element_identifier element_main_var element_temp_var; element_identifier=3;
if (get(hObject,'Value')==1)
    Element_Data_Table = findobj('Tag','Element_Data_Table');
    get_element_main_Var();
    Element_Data_Table.Data = element_main_var;
    Element_Data_Table.ColumnName={'wx','wy','wz'};
    element_temp_var = element_main_var;
end


% --- Executes on button press in pushbutton28.
function pushbutton28_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Material_Panel = findobj('Tag','Material_Panel');
Node_Panel = findobj('Tag','Node_Panel');
Element_Panel = findobj('Tag','Element_Panel');
Output_Panel = findobj('Tag','Output_Panel');
Node_Panel.Visible ='on';
Element_Panel.Visible = 'off';
Material_Panel.Visible = 'off';
Output_Panel.Visible = 'off';

% --- Executes on button press in pushbutton29.
function pushbutton29_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Material_Panel = findobj('Tag','Material_Panel');
Node_Panel = findobj('Tag','Node_Panel');
Element_Panel = findobj('Tag','Element_Panel');
Output_Panel = findobj('Tag','Output_Panel');
Node_Panel.Visible ='off';
Element_Panel.Visible = 'on';
Material_Panel.Visible = 'off';
Output_Panel.Visible = 'off';



% --- Executes on button press in pushbutton30.
function pushbutton30_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Material_Panel = findobj('Tag','Material_Panel');
Node_Panel = findobj('Tag','Node_Panel');
Element_Panel = findobj('Tag','Element_Panel');
Output_Panel = findobj('Tag','Output_Panel');
Node_Panel.Visible ='off';
Element_Panel.Visible = 'off';
Output_Panel.Visible = 'off';
Material_Panel.Visible = 'on';
get_material_main_Var(); global material_main_var;
Material_Data_Table = findobj('Tag','Material_Data_Table');
Material_Data_Table.Data = material_main_var;


% --- Executes on button press in pushbutton24.
function pushbutton24_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global material_temp_var;
Material_Data_Table = findobj('Tag','Material_Data_Table');
Material_Data_Table.Data = zeros(size(material_temp_var));
material_temp_var = zeros(size(material_temp_var));

% --- Executes on button press in pushbutton25.
function pushbutton25_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set_material_main_Var()

% --- Executes on button press in pushbutton26.
function pushbutton26_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global material_main_var material_temp_var;
Material_Data_Table = findobj('Tag','Material_Data_Table');
Material_Data_Table.Data = material_main_var;
material_temp_var= material_main_var;


% --- Executes on button press in pushbutton27.
function pushbutton27_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global material_main_var material_temp_var;
[filename,filepath]=uigetfile({'*.*','All Files'},'Select Data File');
filename = strcat(filepath,filename);
if (isempty(filename))
  return;
end

rawdata=load(filename);
if ( (size(rawdata,1) > size(material_main_var,1)) || (size(rawdata,2) ~= size(material_main_var,2)))
    errordlg('Check the size of variable and your File content size whether it matches or not','Size MisMatch Error');
else
    Material_Data_Table = findobj('Tag','Material_Data_Table');
    Material_Data_Table.Data(1:size(rawdata,1),:) = rawdata;
    material_temp_var = Material_Data_Table.Data;
end


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5
global material_identifier material_main_var material_temp_var; material_identifier=0;
if (get(hObject,'Value')==1)
    Material_Data_Table = findobj('Tag','Material_Data_Table');
    get_material_main_Var();
    Material_Data_Table.Data = material_main_var;
    Material_Data_Table.ColumnName={'Area of Crossection'};
    material_temp_var = material_main_var;
end


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8
global material_identifier material_main_var material_temp_var; material_identifier=1;
if (get(hObject,'Value')==1)
    Material_Data_Table = findobj('Tag','Material_Data_Table');
    get_material_main_Var();
    Material_Data_Table.Data = material_main_var;
    Material_Data_Table.ColumnName={'Moment of Area (Izz)'};
    material_temp_var = material_main_var;
end


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6
global material_identifier material_main_var material_temp_var; material_identifier=2;
if (get(hObject,'Value')==1)
    Material_Data_Table = findobj('Tag','Material_Data_Table');
    get_material_main_Var();
    Material_Data_Table.Data = material_main_var;
    Material_Data_Table.ColumnName={'Moment of Area (Iyy)'};
    material_temp_var = material_main_var;
end


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton7
global material_identifier material_main_var material_temp_var; material_identifier=3;
if (get(hObject,'Value')==1)
    Material_Data_Table = findobj('Tag','Material_Data_Table');
    get_material_main_Var();
    Material_Data_Table.Data = material_main_var;
    Material_Data_Table.ColumnName={'Torsional resistance (J)'};
    material_temp_var = material_main_var;
end


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton9
global material_identifier material_main_var material_temp_var; material_identifier=4;
if (get(hObject,'Value')==1)
    Material_Data_Table = findobj('Tag','Material_Data_Table');
    get_material_main_Var();
    Material_Data_Table.Data = material_main_var;
    Material_Data_Table.ColumnName={'Youngs Modulus (E)'};
    material_temp_var = material_main_var;
end

% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton10
global material_identifier material_main_var material_temp_var; material_identifier=5;
if (get(hObject,'Value')==1)
    Material_Data_Table = findobj('Tag','Material_Data_Table');
    get_material_main_Var();
    Material_Data_Table.Data = material_main_var;
    Material_Data_Table.ColumnName={'Poison Ratio (v)'};
    material_temp_var = material_main_var;
end


% --- Executes when entered data in editable cell(s) in Material_Data_Table.
function Material_Data_Table_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to Material_Data_Table (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
global material_temp_var;
material_temp_var = get(hObject,'Data');


% --- Executes when entered data in editable cell(s) in Element_Data_Table.
function Element_Data_Table_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to Element_Data_Table (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)
global element_temp_var;
element_temp_var = get(hObject,'Data');

function PlotMesh(coordinates,elements)
%--------------------------------------------------------------------------
% Purpose:
%         To plot the Finite Element Method Mesh
% Synopsis :
%           PlotMesh(coordinates,nodes)
% Variable Description:
%           coordinates - The nodal coordinates of the mesh
%           -----> coordinates = [node X Y Z] 
%           nodes - The nodal connectivity of the elements
%           -----> nodes = [elementNo node1 node2......]    
%
% NOTE : Please note that in coordinates ,displacements first column is 
%        node number and in nodes forst column is element number .
%--------------------------------------------------------------------------

Visualizer = findobj('Tag','Visualizer');
cla(Visualizer);

nele = size(elements,1) ;              % number of elements
nnodes = size(coordinates,1) ;         % total number of nodes in system
npel = size(elements,2)-1;             % number of nodes per element

% Initialization of the required matrices
Node_no = coordinates(:,1:1) ;
Element_no = elements(:,1:1) ;
Xn = coordinates(:,2:2) ;
Yn = coordinates(:,3:3) ;
Zn = coordinates(:,4:4) ;
Xe = zeros(npel,nele);
Ye = zeros(npel,nele);
Ze = zeros(npel,nele);

axes (Visualizer);
% figure;
title('Finite Element Mesh') ;
hold on;rotate3d; datacursormode off;

global concen show_forces selected_element;
selected_element =0;

for i=1:nele
   if ((elements(i,2)==0) || (elements(i,2)==0))
    continue;
   end
   for j=1:npel
     Xe(j,i)=coordinates(elements(i,j+1),2);    % extract x value of the node
     Ye(j,i)=coordinates(elements(i,j+1),3);    % extract y value of the node
     Ze(j,i)=coordinates(elements(i,j+1),4);    % extract z value of the node
   end
   line(Xe(:,i),Ye(:,i),Ze(:,i),'Color','blue','LineWidth',10,'HitTest','on','PickableParts','all','Tag',int2str(i),'ButtonDownFcn',@ElementCallback,'LineWidth',2,'UserData',i)
end

for i=1:nnodes
    plot3(Xn(i,1),Yn(i,1),Zn(i,1),'o','MarkerSize',16,'MarkerEdgeColor','blue','MarkerFaceColor','blue','HitTest','on','PickableParts','all','ButtonDownFcn',@NodeCallback,'Tag',int2str(i),'UserData',i)
    if (show_forces==1)
      PlotForce([Xn(i,1),Yn(i,1),Zn(i,1)],1,concen(i,:));
    end
end

text(Xn,Yn,Zn,[repmat('  ',[nnodes 1]) int2str( Node_no)],'fontsize',15,'color','b','HorizontalAlignment','left','Rotation',0);
text((sum(Xe,1))'/npel,(sum(Ye,1))'/npel,(sum(Ze,1))'/npel,int2str(Element_no),'fontsize',10,'Rotation',0,'color','m');

% --- Executes on button press in pushbutton31.
function pushbutton31_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nnodes nele coord ends AFLAG DEFL REACT;
coordinates = [(1:nnodes)',coord];
nodes = [(1:nele)',ends];
% load 'coordinates.dat';
% load 'nodes.dat';
PlotMesh(coordinates, nodes);

function NodeCallback(src,~)

   global Prev_Node Whether_First_Node AFLAG concen fixity coord REACT DEFL;
   if (Whether_First_Node==1)
    Prev_Node = src;
    Whether_First_Node =0;
   else
     if (ishandle(Prev_Node))
      Prev_Node.MarkerFaceColor='blue';
     end
     Prev_Node = src;
   end
   src.MarkerFaceColor='red';

   Node_Info_Text = findobj('Tag','Node_Info_Text');
   Node_Info_Text_1 = findobj('Tag','Node_Info_Text_1');
   node_no = src.UserData;

   Node_Info_Text.String =  {[''];['Node No :: ' num2str(node_no)] ; ['Coordinates :: ' num2str(coord(node_no,:))] ; ['Applied Forces :: ' num2str(concen(node_no,:))] ; ['Fixity Condition :: ' num2str(fixity(node_no,:))]};

   if (AFLAG==1)
    Node_Info_Text_1.String =  {['']; ['Forces :: ' num2str(REACT(node_no,:))] ; ['Displacements :: ' num2str(DEFL(node_no,:))]};
   else
    Node_Info_Text_1.String =  {['']; ['Forces :: ' num2str(zeros(1,6))] ; ['Displacements :: ' num2str(zeros(1,6))]};
   end

function ElementCallback(src,~)
   global Prev_Line Whether_First_Line ends A beta_ang Izz Iyy J E v w AFLAG REACT DEFL ELE_FOR selected_element;
   if (Whether_First_Line==1)
    Prev_Line = src;
    Whether_First_Line =0;
   else
     if (ishandle(Prev_Line))
      Prev_Line.Color='blue';
     end
     Prev_Line = src;
   end
   src.Color='red';

   Element_Info_Text = findobj('Tag','Element_Info_Text');
   Element_Info_Text_1 = findobj('Tag','Element_Info_Text_1');
   Element_Info_Text_2 = findobj('Tag','Element_Info_Text_2');

   element_no = src.UserData; selected_element = element_no;
   Element_Info_Text.String =  {[''];['Element No :: ' num2str(element_no)]; ['Connectivity :: ' num2str(ends(element_no,:))] ; ['Area :: ' num2str(A(element_no,:))] ; ['Beta Angle :: ' num2str(beta_ang(element_no,:))] ; ['Distributed Loads (w) :: ' num2str(w(element_no,:))]};
   Element_Info_Text_1.String ={[''];['Moment of Area (Izz) :: ' num2str(Izz(element_no,:))] ; ['Moment of Area (J) :: ' num2str(J(element_no,:))] ; ['Moment of Area (Iyy) :: ' num2str(Iyy(element_no,:))] ; ['Youngs Modulus (E) :: ' num2str(E(element_no,:))]; ['Poisons ratio (v) :: ' num2str(v(element_no,:))]};

   if (AFLAG==1)
    Element_Info_Text_2.String =  {['']; ['Forces :: ' num2str(ELE_FOR(element_no,:))]};
   else
    Element_Info_Text_2.String =  {['']; ['Forces :: ' num2str(zeros(1,12))] ; ['Displacements :: ' num2str(zeros(1,12))]};
   end

% --- Executes on button press in pushbutton32.
function pushbutton32_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Material_Panel = findobj('Tag','Material_Panel');
Node_Panel = findobj('Tag','Node_Panel');
Element_Panel = findobj('Tag','Element_Panel');
Output_Panel = findobj('Tag','Output_Panel');
Node_Panel.Visible ='off';
Element_Panel.Visible = 'off';
Material_Panel.Visible = 'off';
Output_Panel.Visible = 'on';
get_output_main_Var();
global output_main_var;
Output_Data_Table = findobj('Tag','Output_Data_Table');
Output_Data_Table.Data = output_main_var;


% --- Executes on button press in pushbutton33.
function pushbutton33_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nnodes nele coord concen fixity ends A Izz Iyy J E v beta_ang w DEFL REACT ELE_FOR AFLAG;
[DEFL, REACT, ELE_FOR, AFLAG]=Finiteleyzer( nnodes, nele, coord, concen, fixity, ends, A, Izz, Iyy, J, E, v, beta_ang, w);


% --- Executes on button press in pushbutton42.
function pushbutton42_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton42 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton43.
function pushbutton43_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton43 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton44.
function pushbutton44_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton44 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton45.
function pushbutton45_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton45 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton16.
function radiobutton16_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global output_identifier output_main_var ; output_identifier=0;
if (get(hObject,'Value')==1)
    Output_Data_Table = findobj('Tag','Output_Data_Table');
    get_output_main_Var();
    Output_Data_Table.Data = output_main_var;
    Output_Data_Table.ColumnName={'ux','uy', 'uz', 'rx', 'ry', 'rz'};
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton16


% --- Executes on button press in radiobutton19.
function radiobutton19_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global output_identifier output_main_var ; output_identifier=1;
if (get(hObject,'Value')==1)
    Output_Data_Table = findobj('Tag','Output_Data_Table');
    get_output_main_Var();
    Output_Data_Table.Data = output_main_var;
    Output_Data_Table.ColumnName={'Rx','Ry', 'Rz', 'Mx', 'My', 'Mz'};
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton19


% --- Executes on button press in radiobutton17.
function radiobutton17_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global output_identifier output_main_var ; output_identifier=2;
if (get(hObject,'Value')==1)
    Output_Data_Table = findobj('Tag','Output_Data_Table');
    get_output_main_Var();
    Output_Data_Table.Data = output_main_var;
    Output_Data_Table.ColumnName={'Rx_1','Ry_1', 'Rz_1', 'Mx_1', 'My_1', 'Mz_1','Rx_2','Ry_2', 'Rz_2', 'Mx_2', 'My_2', 'Mz_2'};
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton17

% --- Executes on button press in pushbutton46.
function pushbutton46_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton46 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global option coord ends ELE_FOR w selected_element AFLAG;

if (selected_element>0 && AFLAG ==1)
    i=selected_element;Length = sqrt(sum((coord(ends(i,1),:)'-coord(ends(i,2),:)').^2))';
    SFBMD(option,ELE_FOR(i,:),w(i,:),Length);
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% SFBM(1,[10,0,10],{'CF',2,0},{'M',10,0},{'CF',2,10},{'M',10,10});
% SFBM(1,[10,0,10],{'CF',2,0},{'DF',[5,5],[0,10]},{'M',10,0},{'CF',2,10},{'M',10,10});
% SFBMD(1,[0,1,0,0,0,10,0,-1,0,0,0,0],[0,0,0],10)
% SFBMD(1,[1,10,0,0,0,50,-1,0,0,0,0,0],[0,-1,0],10)
% DD([0,10,0,0,0,50,0,0,0,0,0,0],[0,0,0,0,0,0,0,-1250,0,0,0,-166.66],[0,-1,0],10,1,1,1,1,1)


% --- Executes on button press in pushbutton47.
function pushbutton47_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton47 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
global coord ends ELE_FOR DEFL AFLAG w selected_element E Izz Iyy J A;

if (selected_element>0 && AFLAG ==1)
    i=selected_element; Length = sqrt(sum((coord(ends(i,1),:)'-coord(ends(i,2),:)').^2))';
    defl = [ DEFL(ends(i,1),:),DEFL(ends(i,2),:)];
   DD(ELE_FOR(i,:),defl,w(i,:),Length,E(i,:),Izz(i,:),Iyy(i,:),J(i,:),A(i,:));
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% SFBM(1,[10,0,10],{'CF',2,0},{'M',10,0},{'CF',2,10},{'M',10,10});
% SFBM(1,[10,0,10],{'CF',2,0},{'DF',[5,5],[0,10]},{'M',10,0},{'CF',2,10},{'M',10,10});
% SFBMD(1,[0,1,0,0,0,10,0,-1,0,0,0,0],[0,0,0],10)
% SFBMD(1,[1,10,0,0,0,50,-1,0,0,0,0,0],[0,-1,0],10)
% DD([0,10,0,0,0,50,0,0,0,0,0,0],[0,0,0,0,0,0,0,-1250,0,0,0,-166.66],[0,-1,0],10,1,1,1,1,1)

% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global show_forces;
if (get(hObject,'Value')==1)
    show_forces=1;
end
if (get(hObject,'Value')==0)
    show_forces=0;
end
% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in pushbutton48.
function pushbutton48_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton48 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nnodes nele coord ends DEFL AFLAG magnify;

nodes = [(1:nele)',ends];

if(AFLAG)
    coordinates = coord+magnify*DEFL(:,1:3);
    coordinates = [(1:nnodes)',coordinates];
    PlotMesh(coordinates, nodes);
else
    coordinates = [(1:nnodes)',coord];
    PlotMesh(coordinates, nodes);
end

% --- Executes on button press in radiobutton20.
function radiobutton20_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global option;
if (get(hObject,'Value')==1)
    option=1;
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton20


% --- Executes on button press in radiobutton21.
function radiobutton21_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global option;
if (get(hObject,'Value')==1)
    option=2;
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton21


% --- Executes on button press in radiobutton22.
function radiobutton22_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global option;
if (get(hObject,'Value')==1)
    option=3;
end
% Hint: get(hObject,'Value') returns toggle state of radiobutton22


% --- Executes on button press in magnify.
function magnify_Callback(hObject, eventdata, handles)
% hObject    handle to magnify (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global magnify;
magnify_status = findobj('Tag','magnify_status');
if(magnify_status.Value ==1)
    magnify = str2num(get(hObject,'String'));
end

% --------------------------------------------------------------------
function File_Callback(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function New_Callback(hObject, eventdata, handles)
% hObject    handle to New (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

CleanAll();

% --------------------------------------------------------------------
function Open_Callback(hObject, eventdata, handles)
% hObject    handle to Open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Reading the file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[filename,filepath]=uigetfile({'*.bmz','All Files'},'Select Data File');
filename  = strcat(filepath,filename);

if (isempty(filename))
  return;
end

if (~exist(filename,'file'))
  errordlg('File does not exist','IMPORT ERROR');
end

global nnodes nele coord concen fixity ends A Izz Iyy J E v beta_ang w Length DEFL REACT ELE_FOR;
global node_identifier  node_main_var node_temp_var;
global element_identifier  element_main_var element_temp_var;
global material_identifier material_main_var material_temp_var;
global output_identifier output_main_var ;
global Prev_Node Whether_First_Node Prev_Line Whether_First_Line;
global option show_forces selected_element AFLAG magnify;

Whether_First_Node = 1; Whether_First_Line = 1;
material_identifier =0;element_identifier =0;node_identifier =0;output_identifier =0;
option = 1; show_forces =0; selected_element=0; AFLAG =0; magnify =1;

DEFL = zeros(0,6); ELE_FOR = zeros(0,12); REACT=zeros(0,6);

nnodes = 0; nele = 0;
coord = zeros(0,3) ; fixity = zeros(0,6) ; concen = zeros(0,6) ;
ends = zeros(0,2) ; A = zeros(0,1); Izz = zeros(0,1); Iyy = zeros(0,1);
J = zeros(0,1); E = zeros(0,1); v = zeros(0,1); beta_ang = zeros(0,1);w = zeros(0,3);

try

  line_no=0; import_info='';
   
  fid = fopen(filename);

  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Structural Input %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  % Nodal geometry force and boundary conditions 

  while ~feof(fid)
      line = fgets(fid); line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'nnodes'))
        line = fgets(fid);line_no = line_no+1;
        nnodes = str2num(line);
        import_info = strcat(import_info,' nnodes');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'coord'))
        coord = zeros(nnodes,3);
        for i=1:nnodes
          line = fgets(fid);line_no = line_no+1;
          coord(i,:) = str2num(line);
        end
        import_info = strcat(import_info,' coord');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'concen'))
        concen = zeros(nnodes,6);
        for i=1:nnodes
          line = fgets(fid);line_no = line_no+1;
          concen(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' concen');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'fixity'))
        fixity = zeros(nnodes,6);
        for i=1:nnodes
          line = fgets(fid);line_no = line_no+1;
          fixity(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' fixity');
        break
      end
  end

  % Importing element connectivity and distributed loads

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'nele'))
        line = fgets(fid);line_no = line_no+1;
        nele = str2num(line);
        import_info = strcat(import_info,' nele');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'ends'))
        ends = zeros(nele,2);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          ends(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' ends');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'beta_ang'))
        beta_ang = zeros(nele,1);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          beta_ang(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' beta_ang');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'w'))
        w = zeros(nele,3);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          w(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' w');
        break
      end
  end

  % Impoting material properties of beams

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'A'))
        A = zeros(nele,1);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          A(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' A');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'E'))
        E = zeros(nele,1);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          E(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' E');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'v'))
        v = zeros(nele,1);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          v(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' v');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'Izz'))
        Izz = zeros(nele,1);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          Izz(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' Izz');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'Iyy'))
        Iyy = zeros(nele,1);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          Iyy(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' Iyy');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'J'))
        J = zeros(nele,1);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          J(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' J');
        break
      end
  end


  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Structural Output %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'DEFL'))
        DEFL = zeros(nnodes,6);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          DEFL(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' DEFL');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'REACT'))
        REACT = zeros(nnodes,6);
      for i=1:nele
        line = fgets(fid);line_no = line_no+1;
        REACT(i,:) = str2num(line);
      end 
      import_info = strcat(import_info,' REACT');
        break
      end
  end

  while ~feof(fid)
      line = fgets(fid);line_no = line_no+1;
      if (strcmp(line(1:size(line,2)-1),'ELE_FOR'))
        ELE_FOR = zeros(nele,12);
        for i=1:nele
          line = fgets(fid);line_no = line_no+1;
          ELE_FOR(i,:) = str2num(line);
        end 
        import_info = strcat(import_info,' ELE_FOR');
        AFLAG =1;
        break
      end
  end

catch err
    msg=sprintf ('Error in line %d :: Improper dimension misatch \n ',line_no);
    h = errordlg(msg,'IMPORT ERROR');
    CleanAll();
end 

msg = sprintf(strcat('Sucessfully Imported -> ' , import_info));
h = msgbox(msg,'IMPORT MSG');

% close the file
fclose(fid);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Reading file ends %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Node_Data_Table = findobj('Tag','Node_Data_Table');
Node_Data_Table.Data = nnodes;
Node_Data_Table.ColumnName={'Number of Nodes'};
Node_Data_Table.ColumnEditable = [true, true, true, true, true, true];

Element_Data_Table = findobj('Tag','Element_Data_Table');
Element_Data_Table.Data = nele;
Element_Data_Table.ColumnName={'Number of Elements'};
Element_Data_Table.ColumnEditable = [true, true, true];

Material_Data_Table = findobj('Tag','Material_Data_Table');
Material_Data_Table.Data = A;
Material_Data_Table.ColumnName={'Area of Crossection'};
Material_Data_Table.ColumnEditable = [true, true, true];

Output_Data_Table = findobj('Tag','Output_Data_Table');
Output_Data_Table.Data = DEFL;
Output_Data_Table.ColumnName={'ux','uy', 'uz', 'rx', 'ry', 'rz'};
Output_Data_Table.ColumnEditable = [];

Visualizer = findobj('Tag','Visualizer');
cla(Visualizer); reset(Visualizer);
Visualizer.Tag = 'Visualizer';

Structural_Diagrams_1 = findobj('Tag','Structural_Diagrams_1');
cla(Structural_Diagrams_1); reset(Structural_Diagrams_1);
Structural_Diagrams_1.Tag = 'Structural_Diagrams_1';

Structural_Diagrams_2 = findobj('Tag','Structural_Diagrams_2');
cla(Structural_Diagrams_2); reset(Structural_Diagrams_2);
Structural_Diagrams_2.Tag = 'Structural_Diagrams_2';

Material_Panel = findobj('Tag','Material_Panel');
Node_Panel = findobj('Tag','Node_Panel');
Element_Panel = findobj('Tag','Element_Panel');
Output_Panel = findobj('Tag','Output_Panel');
Node_Panel.Visible ='on';
Element_Panel.Visible = 'off';
Material_Panel.Visible = 'off';
Output_Panel.Visible = 'off';

Node_Info_Text = findobj('Tag','Node_Info_Text');
Node_Info_Text_1 = findobj('Tag','Node_Info_Text_1');
Node_Info_Text.String =  {['']};
Node_Info_Text_1.String =  {['']};


Element_Info_Text = findobj('Tag','Element_Info_Text');
Element_Info_Text_1 = findobj('Tag','Element_Info_Text_1');
Element_Info_Text_2 = findobj('Tag','Element_Info_Text_2');
Element_Info_Text.String =  {['']};
Element_Info_Text_1.String =  {['']};
Element_Info_Text_2.String =  {['']};

magnify_status = findobj('Tag','magnify_status');
magnify_status.Value=0;

% --------------------------------------------------------------------
function Save_Callback(hObject, eventdata, handles)
% hObject    handle to Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global nnodes nele coord concen fixity ends A Izz Iyy J E v beta_ang w DEFL REACT ELE_FOR AFLAG;

[filename,filepath] = uiputfile('*.bmz','Save Workspace As');
filename  = strcat(filepath,filename);

if (isempty(filename))
  return;
end

fileID = fopen(filename,'w');
Str = '';
Str = strcat(Str,'--------------------------------------------------------------------------------------------------------------------------------------------------------\n');
Str = strcat(Str,'-------------------------------------- BEAMLYZER - A finite elemnt program for 3-d beams made by Sumeet Kumar Sinha ------------------------------------\n');
Str = strcat(Str,'--------------------------------------------------------- University of California Davis ---------------------------------------------------------------\n');
Str = strcat(Str,'--------------------------------------------------------------skssinha@ucdavis.edu--------------------------------------------------------------------\n');
Str = strcat(Str,'--------------------------------------------------------------------------------------------------------------------------------------------------------\n\n');

Str = strcat(Str,'--------------------------------------------------------------------------------------------------------------------------------------------------------\n');
Str = strcat(Str,'------------------------------------------------------------ Structural Input --------------------------------------------------------------------------\n');
Str = strcat(Str,'--------------------------------------------------------------------------------------------------------------------------------------------------------\n\n');
fprintf(fileID,Str);

fprintf(fileID,'--- Nodal geometry force and boundary conditions \n\n');

fprintf(fileID,'nnodes\n'); fprintf(fileID,'%d \n',nnodes');fprintf(fileID,'\n'); 
fprintf(fileID,'coord\n');  fprintf(fileID,'%f %f %f \n',coord');fprintf(fileID,'\n');
fprintf(fileID,'concen\n');  fprintf(fileID,'%f %f %f %f %f %f \n',concen');fprintf(fileID,'\n');
fprintf(fileID,'fixity\n');  fprintf(fileID,'%f %f %f %f %f %f \n',fixity');fprintf(fileID,'\n');

fprintf(fileID,'\n\n--- Element connectivity and distributed loads \n\n\n');

fprintf(fileID,'nele\n');  fprintf(fileID,'%d \n',nele');fprintf(fileID,'\n');
fprintf(fileID,'ends\n');  fprintf(fileID,'%d %d \n',ends');fprintf(fileID,'\n');
fprintf(fileID,'beta_ang\n');  fprintf(fileID,'%f \n',beta_ang');fprintf(fileID,'\n');
fprintf(fileID,'w\n');  fprintf(fileID,'%f %f %f \n',w');fprintf(fileID,'\n');

fprintf(fileID,'\n\n--- Material properties of beams \n\n\n');

fprintf(fileID,'A\n');  fprintf(fileID,'%f \n',A');fprintf(fileID,'\n');
fprintf(fileID,'E\n');  fprintf(fileID,'%f \n',E');fprintf(fileID,'\n');
fprintf(fileID,'v\n');  fprintf(fileID,'%f \n',v');fprintf(fileID,'\n');
fprintf(fileID,'Izz\n');  fprintf(fileID,'%f \n',Izz');fprintf(fileID,'\n');
fprintf(fileID,'Iyy\n'); fprintf(fileID,'%f \n',Iyy');fprintf(fileID,'\n');
fprintf(fileID,'J\n'); fprintf(fileID,'%f \n',J');fprintf(fileID,'\n');

if (AFLAG)
  Str = '';
  Str = strcat(Str,'--------------------------------------------------------------------------------------------------------------------------------------------------------\n');
  Str = strcat(Str,'------------------------------------------------------------ Analysis Result --------------------------------------------------------------------------\n');
  Str = strcat(Str,'--------------------------------------------------------------------------------------------------------------------------------------------------------\n\n\n');
  fprintf(fileID,Str);

  fprintf(fileID,'DEFL\n'); fprintf(fileID,'%f %f %f %f %f %f \n',DEFL');fprintf(fileID,'\n');
  fprintf(fileID,'REACT\n'); fprintf(fileID,'%f %f %f %f %f %f \n',REACT');fprintf(fileID,'\n');
  fprintf(fileID,'ELE_FOR\n'); fprintf(fileID,'%f %f %f %f %f %f %f %f %f %f %f %f \n',ELE_FOR');fprintf(fileID,'\n');
end

% --------------------------------------------------------------------
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;

function CleanAll()

  global nnodes nele coord concen fixity ends A Izz Iyy J E v beta_ang w Length DEFL REACT ELE_FOR;
  global node_identifier  node_main_var node_temp_var;
  global element_identifier  element_main_var element_temp_var;
  global material_identifier material_main_var material_temp_var;
  global output_identifier output_main_var ;
  global Prev_Node Whether_First_Node Prev_Line Whether_First_Line;
  global option show_forces selected_element AFLAG magnify;

  Whether_First_Node = 1; Whether_First_Line = 1;
  material_identifier =0;element_identifier =0;node_identifier =0;output_identifier =0;
  option = 1; show_forces =0; selected_element=0; AFLAG =0; magnify =1;

  nnodes = 0; nele = 0;
  coord = zeros(0,3) ; fixity = zeros(0,6) ; concen = zeros(0,6) ;
  ends = zeros(0,2) ; A = zeros(0,1); Izz = zeros(0,1); Iyy = zeros(0,1);
  J = zeros(0,1); E = zeros(0,1); v = zeros(0,1); beta_ang = zeros(0,1);w = zeros(0,3);
  DEFL = zeros(0,6); ELE_FOR = zeros(0,12); REACT=zeros(0,6);

  Node_Data_Table = findobj('Tag','Node_Data_Table');
  Node_Data_Table.Data = nnodes;
  Node_Data_Table.ColumnName={'Number of Nodes'};
  Node_Data_Table.ColumnEditable = [true, true, true, true, true, true];

  Element_Data_Table = findobj('Tag','Element_Data_Table');
  Element_Data_Table.Data = nele;
  Element_Data_Table.ColumnName={'Number of Elements'};
  Element_Data_Table.ColumnEditable = [true, true, true];

  Material_Data_Table = findobj('Tag','Material_Data_Table');
  Material_Data_Table.Data = A;
  Material_Data_Table.ColumnName={'Area of Crossection'};
  Material_Data_Table.ColumnEditable = [true, true, true];

  Output_Data_Table = findobj('Tag','Output_Data_Table');
  Output_Data_Table.Data = DEFL;
  Output_Data_Table.ColumnName={'ux','uy', 'uz', 'rx', 'ry', 'rz'};
  Output_Data_Table.ColumnEditable = [];

  Visualizer = findobj('Tag','Visualizer');
  cla(Visualizer); reset(Visualizer);
  Visualizer.Tag = 'Visualizer';

  Structural_Diagrams_1 = findobj('Tag','Structural_Diagrams_1');
  cla(Structural_Diagrams_1); reset(Structural_Diagrams_1);
  Structural_Diagrams_1.Tag = 'Structural_Diagrams_1';

  Structural_Diagrams_2 = findobj('Tag','Structural_Diagrams_2');
  cla(Structural_Diagrams_2); reset(Structural_Diagrams_2);
  Structural_Diagrams_2.Tag = 'Structural_Diagrams_2';

  Material_Panel = findobj('Tag','Material_Panel');
  Node_Panel = findobj('Tag','Node_Panel');
  Element_Panel = findobj('Tag','Element_Panel');
  Output_Panel = findobj('Tag','Output_Panel');
  Node_Panel.Visible ='on';
  Element_Panel.Visible = 'off';
  Material_Panel.Visible = 'off';
  Output_Panel.Visible = 'off';

  Node_Info_Text = findobj('Tag','Node_Info_Text');
  Node_Info_Text_1 = findobj('Tag','Node_Info_Text_1');
  Node_Info_Text.String =  {['']};
  Node_Info_Text_1.String =  {['']};


  Element_Info_Text = findobj('Tag','Element_Info_Text');
  Element_Info_Text_1 = findobj('Tag','Element_Info_Text_1');
  Element_Info_Text_2 = findobj('Tag','Element_Info_Text_2');
  Element_Info_Text.String =  {['']};
  Element_Info_Text_1.String =  {['']};
  Element_Info_Text_2.String =  {['']};

  magnify_status = findobj('Tag','magnify_status');
  magnify_status.Value=0;


% --------------------------------------------------------------------
function About_Callback(hObject, eventdata, handles)
% hObject    handle to About (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = msgbox('This is a Finite Element Program for 3-D beam elements created by Sumeet Kumar Sinha at University of California, Davis. To contact please email to skssinha@ucdavis.edu','About');


% --- Executes on button press in magnify_status.
function magnify_status_Callback(hObject, eventdata, handles)
% hObject    handle to magnify_status (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global magnify;
if (get(hObject,'Value')==1)
    magnify_text = findobj('Tag','magnify');
    magnify = str2num(get(magnify_text,'String'));
end
% Hint: get(hObject,'Value') returns toggle state of magnify_status
