#include <iostream>
#include <stdlib.h>

using namespace std;

typedef unsigned char       uint8;
typedef unsigned short     uint16;
typedef unsigned long      uint32;
typedef unsigned long long uint64;
typedef signed char         sint8;
typedef signed short       sint16;
typedef signed long        sint32;
typedef signed long long   sint64;
typedef float                 f32;
typedef double                f64;
typedef long double          f128;

#define Read           1      
#define Write          3
#define ReWr           2
#define Res            0


typedef enum{
    Reserved,
    ReadOnly,
    WriteOnly,
    ReadWrite,
    Mutual
}SE;

template<typename T>
class Register
{
    private:
    T Reg;
    T Status;
    T RW;
    SE StateError;
    public:
    Register()
    {
        Reg = (T)0;
        Status = (T)0;
        RW = (T)0;
        StateError = Reserved;
    }
    uint8 ClearBit(int num)
    {
        
        if((1 & (Status >> num)) == 1)
        {
            Reg = Reg & ~(1 << num);
            if((1 & (RW >> num)) == 0)
            {
                StateError = WriteOnly;
            }
            else
            {
                StateError = ReadWrite;
            }
        }
        else
        {
            if((1 & (RW >> num)) == 0)
            {
                StateError = Reserved;
            }
            else
            {
                StateError = ReadOnly;
            }
        }
        return StateError;
    }
    uint8 SetBit(int num)
    {
        if((1 & (Status >> num)) == 1)
        {
            Reg = Reg |  (1 << num);
            if((1 & (RW >> num)) == 0)
            {
                StateError = WriteOnly;
            }
            else
            {
                StateError = ReadWrite;
            }
        }
        else
        {
            if((1 & (RW >> num)) == 0)
            {
                StateError = Reserved;
            }
            else
            {
                StateError = ReadOnly;
            }
        }
        return StateError;
    }
    uint8 GetBit(T *Temp,uint8 num)
    {
        if((1 & (RW >> num)) == 1)
        {
            *Temp = (1 & (Reg >> num));
            if((1 & (Status >> num)) == 0)
            {
                StateError = ReadOnly;
            }
            else
            {
                StateError = ReadWrite;
            }
        }
        else
        {
            if((1 & (Status >> num)) == 0)
            {
                StateError = Reserved;
            }
            else
            {
                StateError = WriteOnly;
            }
        }
        return StateError;
    }
    uint8 setRegisterValue(T value)
    {
        if(Status == (T)~(0))
        {
           Reg = value;
           if(RW == (T)~(0))
           {
               StateError = ReadWrite;
           }
           else
           {
               StateError = WriteOnly;
           }
        }
        else if(Status == (T)0)
        {
           if(RW == (T)~(0))
           {
               StateError = ReadOnly;
           }
           else
           {
               StateError = Reserved;
           }
        }
        else
        {
            StateError = Mutual;
        }
        return StateError;
    }
    uint8 getRegisterValue(T *Temp)
    {
        if(RW == (T)~(0))
        {
           *Temp = Reg;
           if(Status == (T)~(0))
           {
               StateError = ReadWrite;
           }
           else
           {
               StateError = ReadOnly;
           }
        }
        else if(RW == (T)~(1))
        {
           if(RW == (T)~(0))
           {
               StateError = ReadOnly;
           }
           else
           {
               StateError = Reserved;
           }
        }
        else
        {
            StateError = Mutual;
        }
        return StateError;
    }
    void setPermission(uint8 permission)
    {
        if(permission == Read)
        {
            Status = (T)0;
            RW = (T)~(0);
        }
        else if(permission == Write)
        {
            Status = (T)~(0);
            RW = (T)0;
        }
        else if(permission == ReWr)
        {
            Status = (T)~(0);
            RW = (T)~(0);
        }
        else
        {
            Status = (T)0;
            RW = (T)0;
        }
    }

    void setPermission(uint8 num,uint8 permission)
    {
        if(permission == Read)
        {
            Status = Status & ~(1 << num);
            RW = RW |  (1 << num);
        }
        else if(permission == Write)
        {
            Status = Status |  (1 << num);
            RW = RW & ~(1 << num);
        }
        else if(permission == ReWr)
        {
            Status = Status |  (1 << num);
            RW = RW |  (1 << num);
        }
        else
        {
            Status = Status & ~(1 << num);
            RW = RW & ~(1 << num);
        }
    }
    void display()
    {
        cout << (T)Reg << endl;
    }
};

int main()
{
    Register<uint16> TMR0;
    //Register<uint32> TMR1;
    //TMR1.setPermission(Write);
    uint16 var1 = 8;
    TMR0.setPermission(Read);
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl;
    TMR0.setPermission(Write);
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl;
    TMR0.setPermission(ReWr);
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl;
    TMR0.setPermission(Res);
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl;
    TMR0.setPermission(3,ReWr);
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(3) << endl << (uint16)TMR0.GetBit(&var1,3) << endl << (uint16)var1 << endl;
    cout << (uint16)TMR0.setRegisterValue(5) << endl << (uint16)TMR0.getRegisterValue(&var1) << endl << (uint16)var1 << endl << (uint16)TMR0.SetBit(4) << endl << (uint16)TMR0.GetBit(&var1,4) << endl << (uint16)var1 << endl << (uint16)TMR0.ClearBit(4) << endl << (uint16)TMR0.GetBit(&var1,4) << endl << (uint16)var1 << endl;
    //cout << (int)TMR0.getRegisterValue(&var1) << endl << (int)TMR1.setRegisterValue() << endl << (int)var1;
    /*uint8 r = Atmega32TMR0.getRegisterValue();
    AVR.ClearBit(3);
    AVR.display();
    r = AVR.GetBit(9);
    AVR.display();
    AVR.SetBit(3);
    AVR.display();
    ARM.setRegisterValue();
    uint8 r = ARM.getRegisterValue();
    ARM.ClearBit(3);
    ARM.display();
    r = ARM.GetBit(9);
    ARM.display();
    ARM.SetBit(3);
    ARM.display();*/
    return 0;
}