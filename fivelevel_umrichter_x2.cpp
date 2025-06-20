// Automatically generated C++ file on Thu Jun  5 17:24:59 2025
//
// To build with Digital Mars C++ Compiler:
//
//    dmc -mn -WD fivelevel_umrichter_x2.cpp kernel32.lib

union uData
{
   bool b;
   char c;
   unsigned char uc;
   short s;
   unsigned short us;
   int i;
   unsigned int ui;
   float f;
   double d;
   long long int i64;
   unsigned long long int ui64;
   char *str;
   unsigned char *bytes;
};

// int DllMain() must exist and return 1 for a process to load the .DLL
// See https://docs.microsoft.com/en-us/windows/win32/dlls/dllmain for more information.
int __stdcall DllMain(void *module, unsigned int reason, void *reserved) { return 1; }

// #undef pin names lest they collide with names in any header file(s) you might include.
#undef clock
#undef pwm1
#undef pwm2
#undef pwm3
#undef pwm4
#undef pwm5
#undef pwm6
#undef pwm7
#undef pwm8

int Sektor;
int SektorMax = 8;

extern "C" __declspec(dllexport) void fivelevel_umrichter_x2(void **opaque, double t, union uData *data)
{
   double clock = data[0].d; // input
   bool  &pwm1  = data[1].b; // output
   bool  &pwm2  = data[2].b; // output
   bool  &pwm3  = data[3].b; // output
   bool  &pwm4  = data[4].b; // output
   bool  &pwm5  = data[5].b; // output
   bool  &pwm6  = data[6].b; // output
   bool  &pwm7  = data[7].b; // output
   bool  &pwm8  = data[8].b; // output

// Implement module evaluation code here:
if(clock>0 && clock<=1)
{
   Sektor = 1;
}
else if(clock>1 && clock<=2)
{
   Sektor = 2;
}
else if(clock>2 && clock<=3)
{
   Sektor = 3;
}
else if(clock>3 && clock<=4)
{
   Sektor = 4;
}
else if(clock>4 && clock<=5)
{
   Sektor = 5;
}
else if(clock>5 && clock<=6)
{
   Sektor = 6;
}
else if(clock>6 && clock<=7)
{
   Sektor = 7;
}
else if(clock>7 && clock<=8)
{
   Sektor = 8;
}


switch(Sektor)
{
case 1:
   pwm1=1;
   pwm2=0;
   pwm3=0;
   pwm4=1;
   pwm5=1;
   pwm6=0;
   pwm7=1;
   pwm8=0;
   break;
case 2:
   pwm1=1;
   pwm2=0;
   pwm3=0;
   pwm4=1;
   pwm5=1;
   pwm6=0;
   pwm7=0;
   pwm8=1;
   break;
case 3:
   pwm1=1;
   pwm2=0;
   pwm3=0;
   pwm4=1;
   pwm5=1;
   pwm6=0;
   pwm7=1;
   pwm8=0;
   break;
case 4:
   pwm1=1;
   pwm2=0;
   pwm3=1;
   pwm4=0;
   pwm5=1;
   pwm6=0;
   pwm7=1;
   pwm8=0;
   break;
case 5:
   pwm1=0;
   pwm2=1;
   pwm3=1;
   pwm4=0;
   pwm5=1;
   pwm6=0;
   pwm7=1;
   pwm8=0;
   break;
case 6:
   pwm1=0;
   pwm2=1;
   pwm3=1;
   pwm4=0;
   pwm5=0;
   pwm6=1;
   pwm7=1;
   pwm8=0;
   break;
case 7:
   pwm1=0;
   pwm2=1;
   pwm3=1;
   pwm4=0;
   pwm5=1;
   pwm6=0;
   pwm7=1;
   pwm8=0;
   break;
case 8:
   pwm1=0;
   pwm2=1;
   pwm3=1;
   pwm4=0;
   pwm5=1;
   pwm6=0;
   pwm7=0;
   pwm8=1;
   break;
default:
   pwm1=pwm4=0;
   pwm2=pwm3=0;
   pwm5=pwm8=0;
   pwm6=pwm7=0;
}



}
