clc; 
clear all;
close all;

T = input('Enter the value of T (>0) : ');
if T>0 && T<100
    disp('1. Resulting h(T) = ')
    h = T-10
end

if T>0 && T<100
    disp('2a. Resulting h(T) = ')
    h = T+10
else
    disp('2b. Resulting h(T) = ') 
    h = 0.45*T+900
end

if (T>0 && T<100)
    disp('3a. Resulting h(T) = ')
    h = T/10
elseif T>=100
    disp('3a. Resulting h(T) = ')
    h = 0.45*T+900
else
    error('3c. Enter a Value of T>0 ')
end

flag = 'y'
while flag == 'y'
    T = input('Enter the value of T (>0) : ');
    if (T>0 && T<100)
        disp('4a. Resulting h(T) = ')
        h = T-10
    elseif T>=100
        disp('4b. Resulting h(T) = ')
        h = 0.45*T+900
    else 
        error('4c. Enter a Value of T>0 ')
    end
    flag=input('Continue(y/n) : ','s');
end
