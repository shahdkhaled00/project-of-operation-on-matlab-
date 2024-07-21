function varargout = last(varargin)
% LAST MATLAB code for last.fig
%      LAST, by itself, creates a new LAST or raises the existing
%      singleton*.
%
%      H = LAST returns the handle to a new LAST or the handle to
%      the existing singleton*.
%
%      LAST('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAST.M with the given input arguments.
%
%      LAST('Property','Value',...) creates a new LAST or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before last_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to last_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help last

% Last Modified by GUIDE v2.5 24-Dec-2022 11:34:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @last_OpeningFcn, ...
                   'gui_OutputFcn',  @last_OutputFcn, ...
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


% --- Executes just before last is made visible.
function last_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to last (see VARARGIN)

% Choose default command line output for last
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes last wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = last_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)


clear;close all ;clc;
load ( 'sample_ecg_data.mat', 'ecg','samplingrate')

t=1:44604 ; 
% axes(handles.axes1);

plot(t,ecg,'r','LineWidth',1.5);
xlabel('time---->(millisecnds)');
ylabel('Amplitude----->');
title('ECG Signal');
%N=length(ecg);
%fs=1/(974*0.001);
heart_rate=60*samplingrate/(974);
heart_rate

grid on
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
