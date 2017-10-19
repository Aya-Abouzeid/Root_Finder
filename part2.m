function varargout = part2(varargin)
% PART2 MATLAB code for part2.fig
%      PART2, by itself, creates a new PART2 or raises the existing
%      singleton*.
%
%      H = PART2 returns the handle to a new PART2 or the handle to
%      the existing singleton*.
%
%      PART2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PART2.M with the given input arguments.
%
%      PART2('Property','Value',...) creates a new PART2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before part2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to part2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help part2

% Last Modified by GUIDE v2.5 01-May-2017 01:20:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @part2_OpeningFcn, ...
                   'gui_OutputFcn',  @part2_OutputFcn, ...
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

% --- Executes just before part2 is made visible.
function part2_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to part2 (see VARARGIN)

% Choose default command line output for part2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes part2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = part2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function n_Callback(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of n as text
%        str2double(get(hObject,'String')) returns contents of n as a double


% --- Executes during object creation, after setting all properties.
function n_CreateFcn(hObject, eventdata, handles)
% hObject    handle to n (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in LU.
function LU_Callback(hObject, eventdata, handles)
% hObject    handle to LU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of LU


% --- Executes on button press in GE.
function GE_Callback(hObject, eventdata, handles)
% hObject    handle to GE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GE


% --- Executes on button press in GJ.
function GJ_Callback(hObject, eventdata, handles)
% hObject    handle to GJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GJ


% --- Executes on button press in GS.
function GS_Callback(hObject, eventdata, handles)
% hObject    handle to GS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GS



function i_Callback(hObject, eventdata, handles)
% hObject    handle to i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i as text
%        str2double(get(hObject,'String')) returns contents of i as a double


% --- Executes during object creation, after setting all properties.
function i_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p_Callback(hObject, eventdata, handles)
% hObject    handle to p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p as text
%        str2double(get(hObject,'String')) returns contents of p as a double


% --- Executes during object creation, after setting all properties.
function p_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in rf.
function rf_Callback(hObject, eventdata, handles)
% hObject    handle to rf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of rf


% --- Executes on button press in re.
function re_Callback(hObject, eventdata, handles)
% hObject    handle to re (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of re



function equ_Callback(hObject, eventdata, handles)
% hObject    handle to equ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equ as text
%        str2double(get(hObject,'String')) returns contents of equ as a double


% --- Executes during object creation, after setting all properties.
function equ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in All.
function All_Callback(hObject, eventdata, handles)
% hObject    handle to All (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of All

% --- Executes on button press in pe.
function pe_Callback(hObject, eventdata, handles)
% hObject    handle to pe (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if (getGlobalit() <= getGlobalval())
    r = getGlobalarr();
    r{getGlobalit()} = get(handles.equ,'String');
    setGlobalit(getGlobalit() + 1);
    setGlobalarr2(r);
    disp(getGlobalarr());
end

    
% --- Executes on button press in pn.
function pn_Callback(hObject, eventdata, handles)
% hObject    handle to pn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = get(handles.n,'String');
if isempty(x)
   fprintf('Error: Enter nom of equations\n');
else
    setGlobalval(str2num(x));
    setGlobalarr(str2num(x));
    setGlobalit(1);
end

function setGlobalval(x)
    global val;
    val = x;

	
function r = getGlobalval()
   global val;
   r = val;
  
function setGlobalit(x)
    global i;
    i = x;

	
function r = getGlobalit()
   global i;
   r = i;
   
function setGlobalarr(x)
    global arr;
    arr = cell(x, 1);

	
function r = getGlobalarr()
   global arr;
   r = arr;
   
function setGlobalarr2(x)
global arr;
arr = x;

   


% --- Executes on button press in pushbutton5.
function solve_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global row;
row  = 1;
set(handles.table, 'Data', cell(size(get(handles.table,'Data'))));

 maxp = get(handles.p,'String');
 maxi = get(handles.i,'String');
 if isempty(maxp) maxp = '0'; end
 if isempty(maxi) maxi = '0'; end
if get(handles.All,'Value') == 1
     [ AllRoots ,time  ] = Gauss( getGlobalarr() ,maxi, maxp)     
     data=get(handles.table,'data');
        data{row, 1} = 'Gauss Elim.';
        row = row + 1;
                for r = 1 : size(AllRoots)
                    data{row,2}= AllRoots(r);
                    row = row + 1;
                end
        set(handles.table,'data',data);
     
     [upper,L_Matrix,Pivot, solution ] = LU_Decomposition(getGlobalarr())
      data=get(handles.table,'data');
        data{row, 1} = 'LU';
        row = row + 1;
                for r = 1 : size(solution)
                    data{row,2}= solution(r);
                    row = row + 1;
                end
        set(handles.table,'data',data);
        
     [ b ] = gaussJordon( getGlobalarr())
     data=get(handles.table,'data');
        data{row, 1} = 'Gauss Elim.';
        row = row + 1;
                for r = 1 : size(b)
                    data{row,2}= b(r);
                    row = row + 1;
                end
        set(handles.table,'data',data);
        
 %    str2 = get(handles.ins,'String');
 %    disp (GaussSeidel(getGlobalarr(), maxi, maxp));
else
    if get(handles.GE,'Value') == 1
      [ AllRoots ,time  ] = Gauss( getGlobalarr() ,maxi, maxp)     
     data=get(handles.table,'data');
        data{row, 1} = 'Gauss Elim.';
        row = row + 1;
                for r = 1 : size(AllRoots)
                    data{row,2}= AllRoots(r);
                    row = row + 1;
                end
        set(handles.table,'data',data);
    end
    if get(handles.LU,'Value') == 1
       [upper,L_Matrix,Pivot, solution ] = LU_Decomposition(getGlobalarr())
      data=get(handles.table,'data');
        data{row, 1} = 'LU';
        row = row + 1;
                for r = 1 : size(solution)
                    data{row,2}= solution(r);
                    row = row + 1;
                end
        set(handles.table,'data',data);
    end
    if get(handles.GJ,'Value') == 1
        [ b ] = gaussJordon( getGlobalarr())
     data=get(handles.table,'data');
        data{row, 1} = 'Gauss Elim.';
        row = row + 1;
                for r = 1 : size(b)
                    data{row,2}= b(r);
                    row = row + 1;
                end
        set(handles.table,'data',data);
    end
    if get(handles.GS,'Value') == 1
        str = get(handles.ins,'String');
        v=strsplit( str );
        disp(maxp)
  [finalX, eachIterationX, eachIterationError, numberIterations] = GaussSeidel ( getGlobalarr(), v,maxi, maxp)
    end
end

function ins_Callback(hObject, eventdata, handles)
% hObject    handle to ins (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ins as text
%        str2double(get(hObject,'String')) returns contents of ins as a double


% --- Executes during object creation, after setting all properties.
function ins_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ins (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
