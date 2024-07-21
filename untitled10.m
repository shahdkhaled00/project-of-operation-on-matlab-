function varargout = untitled10(varargin)
% UNTITLED10 MATLAB code for untitled10.fig
%      UNTITLED10, by itself, creates a new UNTITLED10 or raises the existing
%      singleton*.
%
%      H = UNTITLED10 returns the handle to a new UNTITLED10 or the handle to
%      the existing singleton*.
%
%      UNTITLED10('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED10.M with the given input arguments.
%
%      UNTITLED10('Property','Value',...) creates a new UNTITLED10 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled10_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled10_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled10

% Last Modified by GUIDE v2.5 24-Dec-2022 10:57:18

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled10_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled10_OutputFcn, ...
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


% --- Executes just before untitled10 is made visible.
function untitled10_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled10 (see VARARGIN)

% Choose default command line output for untitled10
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled10 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled10_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

clc
clear;
[ y fs ]=audioread('E:\matlab\test3.wav')
sound (y,fs);
figure
plot(y)

function pushbutton2_Callback(hObject, eventdata, handles)
Fs=44100;
y1=audioread('test3.wav');
time=3;
N=Fs*time;
t=linspace(0,time,N);
A=0.1;
y=A*rand(1,N)*2-1;
audiowrite('noise.wav',y,Fs);
figure
plot(y)
y2=audioread('noise.wav');
MinimumLength = min([length(y1), length(y2)]);
y1 = y1(1:MinimumLength);
y2 = y2(1:MinimumLength);
y3 = y1+y2;
sound(y3,Fs);


%[ y fs ]=audioread('E:\matlab\test3.wav')
%sound (y,fs);
%x=awgn(y,30);
%figure;
%plot(x)
%sound (x,fs)

% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
beep on 
pause(2)
beep

% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
clear;close all;clc;
[y,fs]=audioread('E:\matlab\test3.wav');
h=[1,zeros(1,0.4*fs),0.5,zeros(1,0.4*fs),0.25];
echo=conv(y,h);
figure ;
subplot(3,1,1);
plot (y);
title ('orignal signal ');
subplot(3,1,2);
plot (h);
title ('impluse response ');
subplot(3,1,3);
plot (echo);
title ('echo ');
sound(echo,fs)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
Fs=44100;
y1=audioread('test3.wav');
time=3;
N=Fs*time;
t=linspace(0,time,N);
A=0.1;
y=A*rand(1,N)*2-1;
audiowrite('noise.wav',y,Fs);
y2=audioread('noise.wav');
MinimumLength = min([length(y1), length(y2)]);
y1 = y1(1:MinimumLength);
y2 = y2(1:MinimumLength);
y3 = y1+y2;
%sound(y3,Fs);
y3=y3(1:MinimumLength);
y4=y3-y2;
sound(y4,Fs);
figure
subplot(3,1,1);
plot (y3);
title ('recore with noise ');

subplot(3,1,2);
plot (y4)

title ('record without  noise  ');














% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)

Fs=44100;
time=3;
N=Fs*time;
t=linspace(0,time,N);
A=0.1;
y=A*rand(1,N)*2-1;
audiowrite('noise.wav',y,Fs);
sound(y,Fs)

figure
plot(t,y)
xlabel('time');
ylabel('amplitude');
title('white noise signal ')
xlim([0 0.01]),grid
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
Fs=44100;
y1=audioread('test3.wav');
time=3;
N=Fs*time;
%t=linspace(0,time,N);
A=0.1;
y=A*rand(1,N)*2-1;
audiowrite('noise.wav',y,Fs);
%figure
%plot(y)
y2=audioread('noise.wav');
MinimumLength = min([length(y1), length(y2)]);
y1 = y1(1:MinimumLength);
y2 = y2(1:MinimumLength);
y3 = y1+y2;
sound(y3,Fs);
figure
plot(y3)

% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
