function varargout = rate(varargin)
% RATE MATLAB code for rate.fig
%      RATE, by itself, creates a new RATE or raises the existing
%      singleton*.
%
%      H = RATE returns the handle to a new RATE or the handle to
%      the existing singleton*.
%
%      RATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RATE.M with the given input arguments.
%
%      RATE('Property','Value',...) creates a new RATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before rate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to rate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help rate

% Last Modified by GUIDE v2.5 23-Dec-2022 12:20:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @rate_OpeningFcn, ...
                   'gui_OutputFcn',  @rate_OutputFcn, ...
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


% --- Executes just before rate is made visible.
function rate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to rate (see VARARGIN)

% Choose default command line output for rate
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes rate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = rate_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
load sample_ecg_data.mat
t=1:44604  ;
figure(1); 
plot(t,ecg,'r','LineWidth',1.5);
xlabel('time---->(millisecnds)'); ylabel('Amplitude----->');
title('ECG Signal');grid on;
%Rate=60*sampling rate/(R-R interval) [4][5]
N=length(ecg);
fs=N/(44604*0.001);
fs=N/(1000*1);
heart_rate=30*fs/(952);

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
display('heart rate =',heart_rate);
heart_rate
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
